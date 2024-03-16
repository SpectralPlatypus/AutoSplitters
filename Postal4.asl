state("Postal4-Win64-Shipping")
{
}

state("Postal4-Win64-Shipping", "v1.0.4.0 (Steam)")
{
	// GEngine: 0x051c5e70
	// GWorld: 0x051c9730
	// ULocalPlayer*: 51b2500
	ulong isZapLoading : 0x51b2500,0x30,0xc80,0x0;
	short day: 0x051c9730, 0x120,0x2c0;
	byte phoneOpen: 0x51b2500,0x30,0xbb8,0xc3;

	bool isMovieLoading: 0x51a1158,0xa4;

	bool isInCutscene: 0x51b2500, 0x30, 0x8c0;
	bool lockInput: 0x51b2500,0x30,0x8f0;
	ulong loadTimer: 0x51b2500, 0x30, 0xc88;

	byte mapSubMenu: 0x51b2500,0x30,0xbb8,0x34c;
	byte mapSubMenuOpt: 0x51b2500,0x30,0xbb8,0x350;
	bool eodYesHighlight: 0x51b2500,0x30,0xbb8,0x338,0x148,0xe0,0x140;

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
	ulong isZapLoading : 0x51b8d40, 0x30, 0xc80,0x0;
	short day: 0x51cff70, 0x120, 0x2c0;
	byte phoneOpen: 0x51b8d40, 0x30, 0xbb8,0xc3;

	bool isMovieLoading: 0x51a7998,0xa4;

	bool isInCutscene: 0x51b8d40, 0x30, 0x8c0;
	bool lockInput: 0x51b8d40, 0x30, 0x8f0;
	ulong loadTimer: 0x51b8d40, 0x30, 0xc88;

	byte mapSubMenu: 0x51b8d40, 0x30, 0xbb8, 0x34c;
	byte mapSubMenuOpt: 0x51b8d40, 0x30, 0xbb8, 0x350;
	bool eodYesHighlight: 0x51b8d40,0x30,0xbb8,0x338,0x148,0xe0,0x140;

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
	ulong isZapLoading : 0x51dc440, 0x30, 0xc90,0x0;
	short day: 0x051f3670, 0x120, 0x2c0;

	bool isMovieLoading: 0x51cb098,0xa4;

	bool isInCutscene: 0x51dc440, 0x30, 0x8d8;
	bool lockInput: 0x51dc440, 0x30, 0x908;
	ulong loadTimer: 0x51dc440, 0x30, 0xc98;

	byte phoneOpen: 0x51dc440, 0x30, 0xbc8,0xc3;
	byte mapSubMenu: 0x51dc440, 0x30, 0xbc8, 0x34c;
	byte mapSubMenuOpt: 0x51dc440, 0x30, 0xbc8, 0x350;
	bool eodYesHighlight: 0x51dc440,0x30,0xbc8,0x338,0x148,0xe0,0x140;

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
	// ULocalPlayer*: 0x51e6f40
	ulong isZapLoading : 0x51e6f40, 0x30, 0xc90,0x0;
	short day: 0x51fe170, 0x120, 0x2c0;

	bool isMovieLoading: 0x51d5b98,0xa4;

	bool isInCutscene: 0x51e6f40, 0x30, 0x8d8;
	bool lockInput: 0x51e6f40, 0x30, 0x908;
	ulong loadTimer: 0x51e6f40, 0x30, 0xc98;

	byte cursorVisible: 0x51e6f40, 0x30, 0x438;

	byte phoneOpen: 0x51e6f40, 0x30, 0xbc8,0xc3;
	byte mapSubMenu: 0x51e6f40, 0x30, 0xbc8, 0x34c;
	byte mapSubMenuOpt: 0x51e6f40, 0x30, 0xbc8, 0x350;
	bool eodYesHighlight: 0x51e6f40,0x30,0xbc8,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x51e6f40, 0x30, 0x8c0;
	byte20 interactText: 0x51e6f40, 0x30, 0x8c0, 0x280, 0x28,0x0;
	float interactTimer: 0x51e6f40, 0x30, 0x8c0, 0x2a4;
	float interactTimerLim: 0x51e6f40, 0x30, 0x8c0, 0x2a8;

	// Unused for now
	// bool LockedCameraMode: 0x51e6f40, 0x30, 0x821;
	// float playerCamAlpha: 0x51e6f40, 0x30, 0x2b8, 0x26d4;
}

state("Postal4-Win64-Shipping", "v1.1.0 (Steam)")
{
	// GEngine: 058cc818
	// GWorld: 058d0138
	// ULocalPlayer*: 0x58b8710
	ulong isZapLoading : 0x58b8710, 0x30, 0xc98,0x0;
	short day: 0x58d0138, 0x120, 0x380;

	bool isMovieLoading: 0x58a74f8,0xa4;

	bool isInCutscene: 0x58b8710, 0x30, 0x8d8;
	bool lockInput: 0x58b8710, 0x30, 0x908;
	ulong loadTimer: 0x58b8710, 0x30, 0xc98;

	byte cursorVisible: 0x58b8710, 0x30, 0x438;

	byte phoneOpen: 0x58b8710, 0x30, 0xbd8,0xc3;
	byte mapSubMenu: 0x58b8710, 0x30, 0xbd8, 0x34c;
	byte mapSubMenuOpt: 0x58b8710, 0x30, 0xbd8, 0x350;
	bool eodYesHighlight: 0x58b8710,0x30,0xbd8,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x58b8710, 0x30, 0x8c0;
	byte20 interactText: 0x58b8710, 0x30, 0x8c0, 0x288, 0x28,0x0;
	float interactTimer: 0x58b8710, 0x30, 0x8c0, 0x2ac;
	float interactTimerLim: 0x58b8710, 0x30, 0x8c0, 0x2b0;
}

state("Postal4-Win64-Shipping", "v1.1.1 (Steam)")
{
	// GEngine: 059135d8
	// GWorld: 05916ef8
	// ULocalPlayer*: 0x58ff4d0
	ulong isZapLoading : 0x58ff4d0, 0x30, 0xca0,0x0;
	short day: 0x5916ef8, 0x120, 0x380;

	bool isMovieLoading: 0x58ee2b8,0xa4;

	bool isInCutscene: 0x58ff4d0, 0x30, 0x8d8;
	bool lockInput: 0x58ff4d0, 0x30, 0x908;
	ulong loadTimer: 0x58ff4d0, 0x30, 0xc98;

	byte cursorVisible: 0x58ff4d0, 0x30, 0x438;

	byte phoneOpen: 0x58ff4d0, 0x30, 0xbd8,0xc3;
	byte mapSubMenu: 0x58ff4d0, 0x30, 0xbd8, 0x548;
	byte mapSubMenuOpt: 0x58ff4d0, 0x30, 0xbd8, 0x550;
	bool eodYesHighlight: 0x58ff4d0,0x30,0xbd8,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x58ff4d0, 0x30, 0x8c0;
	byte20 interactText: 0x58ff4d0, 0x30, 0x8c0, 0x288, 0x28,0x0;
	float interactTimer: 0x58ff4d0, 0x30, 0x8c0, 0x2ac;
	float interactTimerLim: 0x58ff4d0, 0x30, 0x8c0, 0x2b0;
}

state("Postal4-Win64-Shipping", "v1.1.2 (Steam)")
{
	// GEngine: 5977d58
	// GWorld: 597b678
	// ULocalPlayer*: 0x5963c50
	ulong isZapLoading : 0x5963c50, 0x30, 0xd28,0x0;
	short day: 0x597b678, 0x120, 0x398;

	bool isMovieLoading: 0x5952a38,0xa4;

	bool isInCutscene: 0x5963c50, 0x30, 0x8d8;
	bool lockInput: 0x5963c50, 0x30, 0x988;
	ulong loadTimer: 0x5963c50, 0x30, 0xc98;

	byte cursorVisible: 0x5963c50, 0x30, 0x438;

	byte phoneOpen: 0x5963c50, 0x30, 0xc60,0xc3;
	byte mapSubMenu: 0x5963c50, 0x30, 0xc60, 0x548;
	byte mapSubMenuOpt: 0x5963c50, 0x30, 0xc60, 0x550;
	bool eodYesHighlight: 0x5963c50,0x30,0xc60,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x5963c50, 0x30, 0x940;
	byte20 interactText: 0x5963c50, 0x30, 0x940, 0x290, 0x28,0x0;
	float interactTimer: 0x5963c50, 0x30, 0x940, 0x2b4;
	float interactTimerLim: 0x5963c50, 0x30, 0x940, 0x2b8;
}

state("Postal4-Win64-Shipping", "v1.1.3 (Steam)")
{
	// GEngine: 5977e58
	// GWorld: 597b778
	// ULocalPlayer*: 0x5963d50
	ulong isZapLoading : 0x5963d50, 0x30, 0xd28,0x0;
	short day: 0x597b778, 0x120, 0x398;

	bool isMovieLoading: 0x5952b38,0xa4;

	bool isInCutscene: 0x5963d50, 0x30, 0x8d8;
	bool lockInput: 0x5963d50, 0x30, 0x988;
	ulong loadTimer: 0x5963d50, 0x30, 0xc98;

	byte cursorVisible: 0x5963d50, 0x30, 0x438;

	byte phoneOpen: 0x5963d50, 0x30, 0xc60,0xc3;
	byte mapSubMenu: 0x5963d50, 0x30, 0xc60, 0x548;
	byte mapSubMenuOpt: 0x5963d50, 0x30, 0xc60, 0x550;
	bool eodYesHighlight: 0x5963d50,0x30,0xc60,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x5963d50, 0x30, 0x940;
	byte20 interactText: 0x5963d50, 0x30, 0x940, 0x290, 0x28,0x0;
	float interactTimer: 0x5963d50, 0x30, 0x940, 0x2b4;
	float interactTimerLim: 0x5963d50, 0x30, 0x940, 0x2b8;
}

state("Postal4-Win64-Shipping", "v1.2.0 (Steam)")
{
	// GEngine: 55808d8
	// GWorld: 55841f8
	// ULocalPlayer*: 0x556c7c0
	ulong isZapLoading : 0x556c7c0, 0x30, 0xd30,0x0;
	short day: 0x55841f8, 0x120, 0x3a8;

	bool isMovieLoading: 0x0555b5a8,0xa4;

	bool isInCutscene: 0x556c7c0, 0x30, 0x958;
	bool lockInput: 0x556c7c0, 0x30, 0x988;
	ulong loadTimer: 0x556c7c0, 0x30, 0xc98;

	byte cursorVisible: 0x556c7c0, 0x30, 0x438;

	byte phoneOpen: 0x556c7c0, 0x30, 0xc68,0xc3;
	byte mapSubMenu: 0x556c7c0, 0x30, 0xc68, 0x548;
	byte mapSubMenuOpt: 0x556c7c0, 0x30, 0xc68, 0x550;
	bool eodYesHighlight: 0x556c7c0,0x30,0xc68,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x556c7c0, 0x30, 0x940;
	byte20 interactText: 0x556c7c0, 0x30, 0x940, 0x290, 0x28,0x0;
	float interactTimer: 0x556c7c0, 0x30, 0x940, 0x2b4;
	float interactTimerLim: 0x556c7c0, 0x30, 0x940, 0x2b8;
}

state("Postal4-Win64-Shipping", "v1.3.0|1 (Steam)")
{
	// GEngine: 55d4c88
	// GWorld: 55d85a8
	// ULocalPlayer*: 0x55c0b70
	ulong isZapLoading : 0x55c0b70, 0x30, 0xdc0,0x0;
	short day: 0x55d85a8, 0x120, 0x3a8;

	bool isMovieLoading: 0x055af958,0xa4;

	bool isInCutscene: 0x55c0b70, 0x30, 0x958;
	bool lockInput: 0x55c0b70, 0x30, 0x988;
	ulong loadTimer: 0x55c0b70, 0x30, 0xc98;

	byte cursorVisible: 0x55c0b70, 0x30, 0x438;

	byte phoneOpen: 0x55c0b70, 0x30, 0xc78,0xc3;
	byte mapSubMenu: 0x55c0b70, 0x30, 0xc78, 0x548;
	byte mapSubMenuOpt: 0x55c0b70, 0x30, 0xc78, 0x550;
	bool eodYesHighlight: 0x55c0b70,0x30,0xc78,0x338,0x148,0xe0,0x140;

	/* Friday EOD */
	ulong interactObj: 0x55c0b70, 0x30, 0x940;
	byte20 interactText: 0x55c0b70, 0x30, 0x940, 0x290, 0x28,0x0;
	float interactTimer: 0x55c0b70, 0x30, 0x940, 0x2b4;
	float interactTimerLim: 0x55c0b70, 0x30, 0x940, 0x2b8;
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
	vars.endCheckOnce = true;
	vars.checkLoad = false;
}
init
{
	refreshRate = 60;
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
	else if (hash == "E22B18C110C0804622BC5DDC998DBA58")
	{
		version = "v1.1.0 (Steam)";
		GWorld = 0x58d0138;
		//DayList offset changed
		errPtr[2] = 0x370;
	}
	else if (hash == "0A9C1BD884386B320FE4A0CD4EA78337")
	{
		version = "v1.1.1 (Steam)";
		GWorld = 0x5916ef8;
		errPtr[2] = 0x370;
	}
	else if (hash == "C3DC15DAD2399787ACD52BA094586E03")
	{
		version = "v1.1.2 (Steam)";
		GWorld = 0x597b678;
		errPtr[2] = 0x388;
		//bIsCompleted offset change
		errPtr[6] = 0x32b;
	}
	else if (hash == "F3757588EB424FD679CC9E7FB33FB92A")
	{
		version = "v1.1.3 (Steam)";
		GWorld = 0x597b778;
		errPtr[2] = 0x388;
		errPtr[6] = 0x32b;
	}
	else if (hash == "324812AA79A33DF659007D674D3144DC")
	{
		version = "v1.2.0 (Steam)";
		GWorld = 0x55841f8;
		errPtr[2] = 0x398;
		errPtr[6] = 0x32b;
	}
	else if (hash == "B27EFDDCB6E5E9947C12948F6DDAF23D" || hash == "21D713ECDB81FE3F1F549AAA30A1D86D")
		{
		version = "v1.3.0|1 (Steam)";
		GWorld = 0x55D85A8;
		errPtr[2] = 0x398;
		//Errand List ptr changed
		errPtr[4] = 0x158;
		errPtr[6] = 0x32b;
	}
	else
	{
		print("Couldn't detect version, expect trouble!");
	}

	/* Add Errand memory watchers */
	if(version != "")
	{
		var errandList = new List<Tuple<string, int, int>> // name, offset, day
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

			vars.errandDays[errand.Item3].Add(new MemoryWatcher<bool>(new DeepPointer(GWorld, errPtr))
			{
				Name = errand.Item1,
				FailAction = MemoryWatcher.ReadFailAction.SetZeroOrNull
			});
		}
	}
}

start
{
	if(old.phoneOpen == 0 && current.phoneOpen == 2 && !current.lockInput)
	{
		print("Starting Timer");
		vars.lastSplit = "";
		vars.endCheckOnce = true;
		return true;
	}
	return false;
}

update
{
	vars.errandDays[current.day].UpdateAll(game);
	if(current.loadTimer != 0 && (old.loadTimer != current.loadTimer))
		vars.checkLoad = true;
}

split
{
	foreach (var watcher in vars.errandDays[current.day])
	{
		if (!watcher.Old && watcher.Current && vars.lastSplit != watcher.Name)
		{
			// Avoid false splits
			if(!current.lockInput || watcher.Name == "DamInspector")
			{
				vars.lastSplit = watcher.Name;
				//print("Detected Change in: " + watcher.Name);
				return settings[watcher.Name];
			}
		}
	}

	if(settings["qeod"] && current.mapSubMenu == 8 && current.mapSubMenuOpt == 0)
	{
		if(current.eodYesHighlight && !old.lockInput && current.lockInput)
		{
			return true;
		}
	}

	if(settings["gameend"] && current.day == 4 && current.interactObj != 0)
	{
		string prompt = vars.GetUtf16(current.interactText);
		if(prompt.StartsWith("Exit Town") && vars.endCheckOnce)
		{
			float tolerance = current.interactTimer*0.001f; 
			if(current.interactTimerLim-current.interactTimer <= tolerance)
			{
				print("End of game detected");
				vars.endCheckOnce = false;
				return true;
			}
		}
	}
}

isLoading
{
	/* Lots to unpack here:
	 * Loads happen async and can sometimes preceed the load screen toggle, which will cause ASL to fail
	 * vars.checkLoad solely exists to detect calls to `ShowInGameLoadingScreen` without using hooks -- not ideal but it works
	*/
	if (!current.isMovieLoading || (current.isZapLoading != 0)) return true;
	else if(vars.checkLoad)
	{
		if(current.lockInput && !current.isInCutscene) return true;
		vars.checkLoad = false;
	}
	return false;
}