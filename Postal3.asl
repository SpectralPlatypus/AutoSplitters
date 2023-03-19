state("p3")
{

}

startup
{
	settings.Add("MultimapSplit", true, "Disable splitting during multi-map levels");
}

init
{
#region SIGSCANNING FUNCTIONS
    print("Game process found");
    
    print("Game main module size is " + modules.First().ModuleMemorySize.ToString());

    Func<string, ProcessModuleWow64Safe> GetModule = (moduleName) =>
    {
        return modules.FirstOrDefault(x => x.ModuleName.ToLower() == moduleName);
    };

    Func<uint, string> GetByteStringU = (o) =>
    {
        return BitConverter.ToString(BitConverter.GetBytes(o)).Replace("-", " ");
    };

    Func<string, string> GetByteStringS = (o) =>
    {
        string output = "";
        foreach (char i in o)
            output += ((byte)i).ToString("x2") + " ";

        return output;
    };

    Func<string, SignatureScanner> GetSignatureScanner = (moduleName) =>
    {
        ProcessModuleWow64Safe proc = GetModule(moduleName);
        Thread.Sleep(1000);
        if (proc == null)
            throw new Exception(moduleName + " isn't loaded!");
        print("Module " + moduleName + " found at 0x" + proc.BaseAddress.ToString("X"));
        return new SignatureScanner(game, proc.BaseAddress, proc.ModuleMemorySize);
    };

    Func<SignatureScanner, uint, bool> IsWithinModule = (scanner, ptr) =>
    {
        uint nPtr = (uint)ptr;
        uint nStart = (uint)scanner.Address;
        return ((nPtr > nStart) && (nPtr < nStart + scanner.Size));
    };

    Func<SignatureScanner, uint, bool> IsLocWithinModule = (scanner, ptr) =>
    {
        uint nPtr = (uint)ptr;
        return ((nPtr % 4 == 0) && IsWithinModule(scanner, ptr));
    };

    // throw an exception if given pointer is null
    Action<IntPtr, string> Croak = (ptr, name) =>
    {
        if (ptr == IntPtr.Zero)
        {
            //Thread.Sleep(1000);
            throw new Exception(name + " ptr was NOT found!!");
        }
		else
			print(name + " ptr was found at 0x" + ptr.ToString("X"));
    };

    Func<IntPtr, int, int, IntPtr> ReadRelativeReference = (ptr, trgOperandOffset, totalSize) =>
    {
        int offset = memory.ReadValue<int>(ptr + trgOperandOffset, 4);
        if (offset == 0)
            return IntPtr.Zero; 
        IntPtr actualPtr = IntPtr.Add((ptr + totalSize), offset);
        return actualPtr;
    };
#endregion

#region SIGSCANNING
    Stopwatch sw = new Stopwatch();
    sw.Start();
    var engineScanner = GetSignatureScanner("engine.dll");
	//var clientScanner = GetSignatureScanner("client.dll");

    //------ WHATSLOADING SCANNING ------
    // get reference to "vidmemstats.txt" string
    IntPtr tmp = engineScanner.Scan(new SigScanTarget(GetByteStringS("vidmemstats.txt")));
    IntPtr whatsLoadingPtr = IntPtr.Zero;
    tmp = engineScanner.Scan(new SigScanTarget(1, "68" + GetByteStringU((uint)tmp)));
    Croak(tmp, "vid mem stats");
    // find the next immediate PUSH instruction
    for (int i = 0; i < 0x100; i++)
    {
        if (game.ReadValue<byte>(tmp + i) == 0x68 && IsLocWithinModule(engineScanner, game.ReadValue<uint>(tmp + i + 1)))
        {
            whatsLoadingPtr = game.ReadPointer(tmp + i + 1);
            break;
        }
    }

    //------ GAMELOADING SCANNING ------
    // add more as need be
    IntPtr gameLoadingPtr = engineScanner.Scan(new SigScanTarget(2, "C6 05 ?? ?? ?? ?? 00 C6 05 ?? ?? ?? ?? 00 C3"));
	Croak(gameLoadingPtr, "loading");
    gameLoadingPtr = game.ReadPointer(gameLoadingPtr);
	
	IntPtr hostStatePtr = engineScanner.Scan(new SigScanTarget(2, "C7 05 ?? ?? ?? ?? 07 00 00 00 C3"));
	Croak(hostStatePtr, "host state");
	hostStatePtr = game.ReadPointer(hostStatePtr);
	
	IntPtr scriptCmdPtr = engineScanner.Scan(new SigScanTarget(5, "83 C4 10 80 3D ?? ?? ?? ?? 00 75 15"));
	Croak(scriptCmdPtr, "script cmd");
	scriptCmdPtr = game.ReadPointer(scriptCmdPtr);
	
	/*
	IntPtr cutscenePtr = clientScanner.Scan(new SigScanTarget(8, "0F 85 D9 00 00 00 80 3D ?? ?? ?? ?? 00"));
	Croak(cutscenePtr, "cutscene");
	cutscenePtr = game.ReadPointer(cutscenePtr);
	*/
	
    sw.Stop();
    print("Sigscanning done in " + sw.ElapsedMilliseconds / 1000f + " seconds");

#endregion

#region WATCHERS
    vars.whatsLoading = new StringWatcher(whatsLoadingPtr, 256);
    
	vars.gameLoading = new MemoryWatcher<bool>(gameLoadingPtr);
	vars.hostState = new MemoryWatcher<byte>(hostStatePtr);
	vars.scriptCmd = new StringWatcher(scriptCmdPtr, 255);
	//vars.cutscene = new MemoryWatcher<bool>(cutscenePtr);

    vars.mwList = new MemoryWatcherList()
    {
		vars.whatsLoading,
        vars.gameLoading,
		vars.hostState,
		vars.scriptCmd,
		//vars.cutscene
    };
#endregion
}

/*
start
{
   
	if(vars.whatsLoading.Current.Equals("pdb", StringComparison.OrdinalIgnoreCase) &&
	   !vars.cutscene.Old == vars.cutscene.Current)
	   {
		   print("Run started!");
	//	   return true;
	   }
	   return false;
}
*/
 
split
{
	if(vars.hostState.Current != vars.hostState.Old && 
	(vars.hostState.Current == 2))
	{
		if(settings["MultimapSplit"])
		{
			if(vars.whatsLoading.Current.EndsWith("1") || vars.whatsLoading.Current.EndsWith("2"))
				return false;
		}
		return true;
	}
	else if(vars.whatsLoading.Current.Equals("DLI", StringComparison.OrdinalIgnoreCase) &&
	        vars.scriptCmd.Old != vars.scriptCmd.Current &&
			vars.scriptCmd.Current.StartsWith("video_exitcmd dli_2"))
	{
		return true;
	}
	else if(vars.whatsLoading.Current.Equals("AA2", StringComparison.OrdinalIgnoreCase) &&
		    vars.scriptCmd.Old != vars.scriptCmd.Current &&
			vars.scriptCmd.Current.StartsWith("video_exitcmd aa_3"))
	{
		return true;
	}
	
	return false;
}

isLoading
{
    return vars.gameLoading.Current;
}

update
{
    vars.mwList.UpdateAll(game);
}

exit
{
    print("Game closed.");
}
