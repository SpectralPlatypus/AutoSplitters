// Sonic's Schoolhouse AutoSplitter by SpectralPlatypus

state("sonic")
{
	uint ansCount : 0x2EB30;
	uint gumCount : 0x2EB34;
	int ringMatchProb : 0x2EC18;
	uint recessDiff : 0x2EC14;
	uint mainMenuLight : 0x637B8;
	uint gumMenuCounter : 0x45DC4;
	uint sparklerBgAssetPtr : 0x3034C;
	uint reportDiaAssetPtr : 0x30350;
	uint mainMenuBgAssetPtr : 0x2FDA8;
	string4 mapName : 0x65430;
	string2 postLoadMapName : 0x61740;
}

startup
{
	settings.Add("reset", true,"Auto Reset on Main Menu");
	settings.Add("incompleteLevel", false,"Split on Incomplete Level Exit");
	settings.Add("100gum", false, "Split on Viewing Gum Machine with 100+ Gums");

	vars.shapeMatchNums = new int[] {4,6,8,8,8};
	vars.ringHuntNums   = new int[] {5,6,8,9,10};
}

exit
{
	timer.IsGameTimePaused = true;
}

start
{
	if (old.mainMenuLight == 0xffffffff && current.mainMenuLight != 0xffffffff){
		print(current.mainMenuLight.ToString("X"));
		if((current.mainMenuLight >> 0x10) > 0x84) {
			print("Timer started");
			return true;
		}
	}
}

split
{
	if(old.sparklerBgAssetPtr == 0x0 && current.sparklerBgAssetPtr != 0x0) {
		return true;
	}

	if(current.postLoadMapName.StartsWith("G")) {
	   if(old.ringMatchProb == 0x0 && current.ringMatchProb == -1 &&
	   (settings["incomplete"] || current.ansCount >= vars.shapeMatchNums[current.recessDiff])) {
		   return true;
	   }
	}

	if(current.postLoadMapName.StartsWith("H")) {
	   if(old.ringMatchProb == 0x0 && current.ringMatchProb == -1 &&
	   (settings["incomplete"] || current.ansCount >= vars.ringHuntNums[current.recessDiff])) {
		   return true;
	   }
	}

	if(settings["incompleteLevel"]) {
		if(old.reportDiaAssetPtr == 0x0 && current.reportDiaAssetPtr != 0x0 &&
		current.ansCount < 10)
			return true;
	}

	if(settings["100gum"]) {
		if(old.gumMenuCounter < 100 && current.gumMenuCounter >= 100)
			return true;
	}
}

reset
{
	if (settings["reset"])
		if(current.mainMenuBgAssetPtr != 0x0 && old.mainMenuBgAssetPtr == 0x0)
			return true;
}
