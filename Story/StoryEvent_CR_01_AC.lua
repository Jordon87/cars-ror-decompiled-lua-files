StoryEvent_CR_01_AC = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_01_BR01)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    StoryEvent_UpdateStatus("StoryEvent_CR_01_BR01", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_01_AC.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper03")
    UnlockPart("mcq_hood03")
    UnlockPart("mcq_spoiler03")
    DebugPrint("unlocked bumper 03, side 03 and spoiler 03")
  end,
  onCutsceneFinished = function()
  end
}
