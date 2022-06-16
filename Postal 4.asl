state("Postal4-Win64-Shipping")
{
}

state("Postal4-Win64-Shipping", "v1.0.4.0 (Steam)")
{
	// GEngine: 0x051c5e70
	// GWorld: 0x051c9730
	// ULocalPlayer*: 51b2500
	ulong isZapLoading : 0x51b2500,0x30,0xc80;
	short day: 0x051c9730, 0x120,0x2c0;
	byte phoneOpen: 0x51b2500,0x30,0xbb8,0xc3;
	//bool phonePreventClosing: "Postal4-Win64-Shipping.exe", 0x51b8d40, 0x30, 0xbb8,0x530;
	bool isMovieLoading: 0x51a1158,0xa4;
	bool lockInput: 0x51b2500,0x30,0x8f0;
	byte mapSubMenu: 0x51b2500,0x30,0xbb8,0x34c;
	byte mapSubMenuOpt: 0x51b2500,0x30,0xbb8,0x350;
	bool eodMouseDown: 0x51b2500,0x30,0xbb8,0x338,0x148,0xe0,0x141;
	
	/* Friday EOD */
	ulong interactObj: 0x51b2500,0x30,0x8a8;
	byte20 interactText: 0x51b2500,0x30,0x8a8,0x280,0x28,0x0;
	float interactTimer: 0x51b2500,0x30,0x8a8,0x2a4;
	float interactTimerLim: 0x51b2500,0x30,0x8a8,0x2a8;
}


state("Postal4-Win64-Shipping", "v1.0.5.0 (Steam)")
{
	// GEngine: 51cc6b0
	// GWorld : 51cff70
	// ULocalPlayer*: 51b8d40
	ulong isZapLoading : 0x51b8d40, 0x30, 0xc80;
	short day: 0x51cff70, 0x120, 0x2c0;
	byte phoneOpen: 0x51b8d40, 0x30, 0xbb8,0xc3;
	//bool phonePreventClosing: "Postal4-Win64-Shipping.exe", 0x51b8d40, 0x30, 0xbb8,0x530;
	bool isMovieLoading: 0x51a7998,0xa4;
	bool lockInput: 0x51b8d40, 0x30, 0x8f0;
	byte mapSubMenu: 0x51b8d40, 0x30, 0xbb8, 0x34c;
	byte mapSubMenuOpt: 0x51b8d40, 0x30, 0xbb8, 0x350;
	bool eodMouseDown: 0x51b8d40,0x30,0xbb8,0x338,0x148,0xe0,0x141;
	
	/* Friday EOD */
	ulong interactObj: 0x51b8d40, 0x30, 0x8a8;
	byte20 interactText: 0x51b8d40, 0x30, 0x8a8, 0x280, 0x28,0x0;
	float interactTimer: 0x51b8d40, 0x30, 0x8a8, 0x2a4;
	float interactTimerLim: 0x51b8d40, 0x30, 0x8a8, 0x2a8;
}

state("Postal4-Win64-Shipping", "v1.0.6.0 (Steam)")
{
	// GEngine: 051efdb0
	// GWorld: 051f3670
	// ULocalPlayer*: 51dc440
	ulong isZapLoading : 0x51dc440, 0x30, 0xc90;
	short day: 0x051f3670, 0x120, 0x2c0;
	
	bool isMovieLoading: 0x51cb098,0xa4;

	bool lockInput: 0x51dc440, 0x30, 0x908;	
	byte phoneOpen: 0x51dc440, 0x30, 0xbc8,0xc3;
	byte mapSubMenu: 0x51dc440, 0x30, 0xbc8, 0x34c;
	byte mapSubMenuOpt: 0x51dc440, 0x30, 0xbc8, 0x350;
	bool eodMouseDown: 0x51dc440,0x30,0xbc8,0x338,0x148,0xe0,0x141;
	
	/* Friday EOD */
	ulong interactObj: 0x51dc440, 0x30, 0x8c0;
	byte20 interactText: 0x51dc440, 0x30, 0x8c0, 0x280, 0x28,0x0;
	float interactTimer: 0x51dc440, 0x30, 0x8c0, 0x2a4;
	float interactTimerLim: 0x51dc440, 0x30, 0x8c0, 0x2a8;
}

state("Postal4-Win64-Shipping", "v1.0.7.0 (Steam)")
{
	// GEngine: 051fa8b0
	// GWorld: 051fe170
	// ULocalPlayer*: 0x1e6f40
	ulong isZapLoading : 0x51e6f40, 0x30, 0xc90;
	short day: 0x51fe170, 0x120, 0x2c0;
	
	bool isMovieLoading: 0x51d5b98,0xa4;

	bool lockInput: 0x51e6f40, 0x30, 0x908;	
	byte phoneOpen: 0x51e6f40, 0x30, 0xbc8,0xc3;
	byte mapSubMenu: 0x51e6f40, 0x30, 0xbc8, 0x34c;
	byte mapSubMenuOpt: 0x51e6f40, 0x30, 0xbc8, 0x350;
	bool eodMouseDown: 0x51e6f40,0x30,0xbc8,0x338,0x148,0xe0,0x141;
	
	/* Friday EOD */
	ulong interactObj: 0x51e6f40, 0x30, 0x8c0;
	byte20 interactText: 0x51e6f40, 0x30, 0x8c0, 0x280, 0x28,0x0;
	float interactTimer: 0x51e6f40, 0x30, 0x8c0, 0x2a4;
	float interactTimerLim: 0x51e6f40, 0x30, 0x8c0, 0x2a8;
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
	
	settings.Add("monday", true, "Monday");
		settings.Add("SignBeggar", false, "Find A Job", "monday");
		settings.Add("JobAgency", true, "Check Job Agency", "monday");
		settings.Add("SewerWorker", true, "Sewer Worker", "monday");
		settings.Add("AnimalCatcher", true, "Animal Catcher", "monday");
		settings.Add("PrisonWorker", true, "Prison Guard", "monday");
	settings.Add("tue", true, "Tuesday");
		settings.Add("MeetAssoc", true, "Meet Associate", "tue");
		settings.Add("PayFine", true, "Pay Fine", "tue");
		//settings.Add("fine_esc", false, "Pay Fine (Escape)", "tue");
		settings.Add("PetShop", true, "Pet Shop Delivery", "tue");
		settings.Add("ThwartDog", true, "Bully Dog", "tue");
		settings.Add("GetPussy", true, "Cat: Get Pussy", "tue");
		settings.Add("GetMilk", true, "Cat: Get Milk", "tue");
		settings.Add("TagTurf", true, "Tag Turf", "tue");
		settings.Add("BorderSmuggler", true, "Border Smuggler", "tue");
	settings.Add("wed", true, "Wednesday");
		settings.Add("InstallBidets", true, "Install Bidets", "wed");
		settings.Add("KunnyIsland", true, "Kunny Island Opening Crasher", "wed");
		settings.Add("MexiCleaner", true, "Mexi-Cleaner", "wed");
		settings.Add("BidetPetition", true, "Bidet Petitioner", "wed");
		//settings.Add("FashionShop", false, "Mass Appeal Makeover", "wed");
	settings.Add("thu", true, "Thursday");
		settings.Add("DarkLodge", true, "Get Champ & GTFO", "thu");
		settings.Add("Vote", true, "Vote for Governor", "thu");
		settings.Add("GameTester", true, "Game Tester", "thu");
		settings.Add("FixRace", true, "Fix Race", "thu");
		settings.Add("PitBoss", true, "Pit Boss", "thu");
	settings.Add("fri", true, "Friday");
		settings.Add("DamInspector", true, "Dam Inspector", "fri");
		settings.Add("PMS", true, "Pacify Merc Superior", "fri");
		settings.Add("TreasureHunter", true, "Treasure Hunter", "fri");
		settings.Add("PesoPayback", true, "Peso Payback", "fri");
		settings.Add("BidetBust", true, "Bidet Bust", "fri");
		settings.Add("OmertaOuster", true, "Omerta Ouster", "fri");
		settings.Add("MeetBoss", true, "Meet the Boss", "fri");
		 
	settings.Add("qeod", true, "Split on ending the day from Phone Tab");
	settings.Add("gameend", true, "Split on Leaving Town");
	
	vars.errandDays = new MemoryWatcherList[5];
	for(int i = 0; i < vars.errandDays.Length;++i) 
		vars.errandDays[i] = new MemoryWatcherList();
	
	vars.lastSplit = "";
}
init
{
	/* Layouts */
	Int32[] errPtr = new Int32[]{0x118,0x280,0x2b0,-2,0x140,-3,0x323};
	
	var module = modules.Single(x => String.Equals(x.ModuleName, "Postal4-Win64-Shipping.exe", StringComparison.OrdinalIgnoreCase));
	var moduleSize = module.ModuleMemorySize;
	print("Module Size: "+moduleSize+" "+module.ModuleName);
	var hash = vars.CalcModuleHash(module);
	
	Int32 GWorld = 0;
	if(hash == "0E07367035179E5C99FE57E6E96CC0D1")
	{
		version = "v1.0.5.0 (Steam)";
		GWorld = 0x51cff70;	
	}
	else if(hash == "55CE4CEC1C629433F6F703E8BB419CFD")
	{
		version = "v1.0.4.0 (Steam)";
		GWorld = 0x51c9730;	
	}
	else if (hash == "E1F4CE75CDE0BFD402AE5F252A3FA7DA")
	{
		version = "v1.0.6.0 (Steam)";
		GWorld = 0x51f3670;	
	}
	else if (hash == "EA3848ADA0535A626F6D25F26F7DBFF9")
	{
		version = "v1.0.7.0 (Steam)";
		GWorld = 0x51fe170;	
	}
	else
	{
		print("Couldn't detect version, expect trouble!");
	}
	
	/* Add Errand memory watchers */
	if(version != "")
	{
		var errandList = new List<Tuple<string, int, int>> // name, offset, day`
			{
				/* Mon */
				Tuple.Create("SignBeggar", 0, 0),
				Tuple.Create("JobAgency", 1, 0),
				Tuple.Create("SewerWorker", 2, 0),
				Tuple.Create("AnimalCatcher", 3, 0),
				Tuple.Create("PrisonWorker", 4, 0),
				/* Tue */
				Tuple.Create("MeetAssoc", 1, 1),
				Tuple.Create("PayFine", 2, 1),
				Tuple.Create("PetShop", 4, 1),
				Tuple.Create("ThwartDog", 5, 1),
				Tuple.Create("GetPussy", 6, 1),
				Tuple.Create("GetMilk", 7, 1),
				Tuple.Create("TagTurf", 8, 1),
				Tuple.Create("BorderSmuggler", 9, 1),
				/* Wed */
				Tuple.Create("InstallBidets", 1, 2),
				Tuple.Create("KunnyIsland", 2, 2),
				Tuple.Create("MexiCleaner", 3, 2),
				Tuple.Create("BidetPetition", 4, 2),
				//Tuple.Create("FashionShop", 5, 2),
				/* Thu */
				Tuple.Create("DarkLodge", 1, 3),
				Tuple.Create("Vote", 2, 3),
				Tuple.Create("GameTester", 3, 3),
				Tuple.Create("FixRace", 4, 3),
				Tuple.Create("PitBoss", 5, 3),
				/* Fri */
				Tuple.Create("DamInspector", 0, 4),
				Tuple.Create("PMS", 1, 4),
				Tuple.Create("TreasureHunter", 2, 4),
				Tuple.Create("PesoPayback", 3, 4),
				Tuple.Create("BidetBust", 4, 4),
				Tuple.Create("OmertaOuster", 5, 4),
				Tuple.Create("MeetBoss", 6, 4),
			};
			
		foreach(var errand in errandList) 
		{
			errPtr[3] = errand.Item3*8;
			errPtr[5] = errand.Item2*8;
			
			vars.errandDays[errand.Item3].Add(new MemoryWatcher<bool>(new DeepPointer(GWorld, errPtr)){Name = errand.Item1});
		}
	}
} 

start
{
	if(old.phoneOpen == 0 && current.phoneOpen == 2 && !current.lockInput)
	{
		print("Starting Timer");
		vars.lastSplit = "";
		return true;
	}
	return false;
}

update
{
	vars.errandDays[current.day].UpdateAll(game);
}

split
{
	foreach (var watcher in vars.errandDays[current.day]) 
	{
		if (!watcher.Old && watcher.Current) 
		{
			// Avoid a silly bug where the game can toggle the errand value twice
			if(watcher.Name != vars.lastSplit)
			{
				vars.lastSplit = watcher.Name;
				print("Detected Change in: " + watcher.Name + " " + watcher.Old + " " + watcher.Current);
				return settings[watcher.Name];
			}
		}
	}
	
	if(settings["qeod"] && current.mapSubMenu == 8 && current.mapSubMenuOpt == 0)
	{
		if(!old.eodMouseDown && current.eodMouseDown)
		{
			return true;
		}
	}
	if(settings["gameend"] && current.day == 4 && current.interactObj != 0)  
	{
		string prompt = vars.GetUtf16(current.interactText);	
		if(prompt.StartsWith("Exit Town") && current.interactTimer >= current.interactTimerLim)
		{
			print("Ending game");
			return true;
		}
	}
}

isLoading
{
	return !current.isMovieLoading || (current.isZapLoading != 0);
}