StoryEvent_CR_03_AC = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_03_BR)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_03_BR", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_03_AC.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper09")
    UnlockPart("mcq_side09")
    UnlockPart("mcq_spoiler09")
    DebugPrint("unlocked bumper09, side09 and spoiler09")
  end,
  onCutsceneFinished = function()
  end
}
