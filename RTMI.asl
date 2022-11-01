state("Return to Monkey Island")
{
	//string20 roomName : 0x584098,0x30,0x18,0x0;
}

startup
{
	// Based on: https://github.com/NoTeefy/LiveSnips/blob/master/src/snippets/checksum(hashing)/checksum.asl
	Func<ProcessModuleWow64Safe, string> CalcModuleHash = (module) => {
		print("Calculating hash of "+ module.FileName);
		byte[] exeHashBytes = new byte[0];
		
		using (var sha = System.Security.Cryptography.MD5.Create())
		{
			using (var s = File.Open(module.FileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
			{
				exeHashBytes = sha.ComputeHash(s);
			} 
		}
		var hash = exeHashBytes.Select(x => x.ToString("X2")).Aggregate((a, b) => a + b);
		print("Hash: "+ hash);
		return hash;
	};
	vars.CalcModuleHash = CalcModuleHash;
	
	Func<byte[], string> GetUnicode = (txt) => {
		return Encoding.Unicode.GetString(txt);
	};
	vars.GetUtf16 = GetUnicode;
	
	settings.Add("intro", true, "Intro");
		settings.Add("ScurvyDog", true, "Order Scurvydog", "intro");
	settings.Add("act1", true, "Act I");
		settings.Add("Cookbook", true, "Borrowed Cookbook", "act1");
		settings.Add("MopQuest", false, "Start Mop Quest", "act1");
		settings.Add("MopTree", true, "Cut down Mop Tree", "act1");
		settings.Add("Stealpatch", true, "Steal the eyepatch", "act1");
		settings.Add("Plant", false, "Carved a plant sample", "act1");
		settings.Add("Magicpatch", true, "Imbue Eyepatch with Voodoo", "act1");
	settings.Add("act2", true, "Act 2");
		settings.Add("Cauldron", true, "Cauldron Spilled", "act2");
		settings.Add("SwabReport", true, "Fill Swabie Report", "act2");
		settings.Add("Promotion", false, "Promote Putra", "act2");
		settings.Add("Alaska", false, "Get Scorched Alaska", "act2");
		settings.Add("Vote", true, "Get Unanimous Vote", "act2");
	settings.Add("act3", true, "Act III");
		settings.Add("Poetry", true, "Received Poetry Book", "act3");
		settings.Add("Trap", true, "Get Caught", "act3");
		settings.Add("Cliff", true, "Thrown off cliff", "act3");
		
	settings.Add("act4", true, "Act IV");
		settings.Add("ReturnBook", true, "Return Cook Book", "act4");
		settings.Add("PirateCamp", true, "Visit Pirate Camp", "act4");
		settings.Add("ElaineGrove", true, "Find Elaine", "act4");
		settings.Add("Border", true, "Cross the Border", "act4");
		settings.Add("Burp", false, "Win Burping Contest", "act4");
		//settings.Add("ChumRank", false, "Become Chum Master", "act4");
		settings.Add("FrameStan", true, "Frame Stan", "act4");
		settings.Add("ConAlgebra", false, "Contest of Intelligence", "act4");
		settings.Add("ConEat", false, "Contest of Eating", "act4");
		settings.Add("ConStare", false, "Contest of Seriousness", "act4");
		settings.Add("Queen", true, "Become Queen", "act4");
		settings.Add("ScreamCave", true, "Fall into Cave of Screams", "act4");
		settings.Add("Quarantine", true, "End Scurvy Quarantine", "act4");
		settings.Add("XSpot", false, "Discover Fisher's Spot", "act4");
		settings.Add("KeyCount", false, "Find all keys", "act4");
		
	settings.Add("actChange", true, "Split between acts");
	settings.Add("Ending", true, "Split on exiting Monkey Head");
	
	vars.errandDays = new MemoryWatcherList[6];
	for(int i = 0; i < vars.errandDays.Length;++i) 
		vars.errandDays[i] = new MemoryWatcherList();
}
init
{
	/* Layouts */
	Int32[] hashPtr = new Int32[]{0x18,0x40,-1};
	
	var module = modules.Single(x => String.Equals(x.ModuleName, "Return to Monkey Island.exe", StringComparison.OrdinalIgnoreCase));
	var moduleSize = module.ModuleMemorySize;
	print("Module Size: "+moduleSize+" "+module.ModuleName);
	var hash = vars.CalcModuleHash(module);
	
	Int32 DinkyVM = 0;
	if(hash == "3FA2C5E50C8B143D8E1AA227B3F72246")
	{
		version = "v1.0";
		DinkyVM = 0x5847b8; // Update this	
	}
	else if (hash == "545C8FF61CB7C7CF466CECA1BED2334A")
	{ 
		version = "v1.3.1";
		DinkyVM = 0x587798;	
	}
	else if (hash == "26F5DF65D547225C50E7767C879C33D0")
	{
		version = "v1.3.3";
		DinkyVM = 0x587798;	
	}
	else
	{
		print("Unknown/unsupported version hash!");
		return;
	} 
	
	print("Game Version: " + version);
	
	/* Add Errand memory watchers */
	if(version != "")
	{
		var errandList = new List<Tuple<string, int, int>> // name, offset, value
			{
				/* Intro */
				Tuple.Create("ScurvyDog", 0x3c4b8, 0),
				/* Act 1 */
				Tuple.Create("Cookbook", 0xe630, 1),
				Tuple.Create("MopQuest", 0x33fc0, 1),
				Tuple.Create("MopTree", 0x4f478, 1),
				Tuple.Create("Stealpatch",0x49f28, 1),
				Tuple.Create("Plant", 0x3b40, 1),
				Tuple.Create("Magicpatch", 0x42890, 1),
				/* Act 2 */
				Tuple.Create("Cauldron", 0x4c188, 2),
				Tuple.Create("Promotion", 0x8190, 2),
				Tuple.Create("Alaska", 0x44c30, 2),
				Tuple.Create("Vote", 0x25650, 2),
				/* Act 3 */
				Tuple.Create("Poetry", 0xC718, 3),
				Tuple.Create("Trap", 0x1A598, 3),
				Tuple.Create("Cliff", 0x1C9D8, 3),
				/* Act 4 */
				Tuple.Create("ReturnBook", 0xF4E0, 4),
				Tuple.Create("PirateCamp", 0x27680, 4),
				Tuple.Create("ElaineGrove", 0x2FC18, 4),
				Tuple.Create("Border", 0x2F2B8, 4),
				Tuple.Create("Burp", 0x303C0, 4),
				Tuple.Create("FrameStan", 0x25E70, 4),
				Tuple.Create("ConAlgebra", 0x23710, 4),
				Tuple.Create("ConEat", 0x1B448, 4),
				Tuple.Create("ConStare", 0xA968, 4),
				Tuple.Create("Queen",0x36950, 4),
				Tuple.Create("ScreamCave", 0x189C8, 4),
				Tuple.Create("Quarantine", 0xE0B8, 4),
				Tuple.Create("XSpot", 0xE0B8, 4),
			};
			
		foreach(var errand in errandList) 
		{
			hashPtr[2] = errand.Item2;
			
			vars.errandDays[errand.Item3].Add(new MemoryWatcher<bool>(new DeepPointer(DinkyVM, hashPtr))
			{
				Name = errand.Item1,
				FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull			
			});
		}
		
		//Ending
		vars.errandDays[5].Add(new MemoryWatcher<bool>(new DeepPointer(DinkyVM, 0x18,0x40,0x26910,0x40,0x3c8))
		{
			Name = "Ending",
			FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull		
		});
		
		hashPtr[2] = 0x44f00;
		vars.actNum = new MemoryWatcher<byte>(new DeepPointer(DinkyVM, hashPtr)); 
		
		hashPtr[2]= 0x46968;
		vars.swabReport = new MemoryWatcher<int>(new DeepPointer(DinkyVM, hashPtr)); 
		
		hashPtr[2]= 0x6CC8;
		vars.keyCount = new MemoryWatcher<int>(new DeepPointer(DinkyVM, hashPtr)); 
	}
} 
/*
start
{
	return (old.roomName == "StartScreen" && current.roomName == "Part0Card");
}
*/

update
{
	vars.actNum.Update(game);
	vars.errandDays[vars.actNum.Current].UpdateAll(game);
}

split
{
	int act = vars.actNum.Current;
	foreach (var watcher in vars.errandDays[act]) 
	{
		if (!watcher.Old && watcher.Current) 
		{
			print("split for " + watcher.Name);
			return settings[watcher.Name];
		}
	}
	
	if(settings["actChange"] && act > vars.actNum.Old)
	{
		return true;
	}
	
	if(act == 2 && settings["SwabReport"] && vars.swabReport.Changed && vars.swabReport == 5)
		return true;
	else if(act == 4)
	{
		if(settings["KeyCount"] && vars.keyCount.Changed && vars.keyCount == 5)
			return true;
	}
}