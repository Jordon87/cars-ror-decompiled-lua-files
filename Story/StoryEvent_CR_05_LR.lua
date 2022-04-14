StoryEvent_CR_05_LR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_05_AC)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    StoryEvent_UpdateStatus("StoryEvent_CR_05_AC", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_05_LR.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper14")
    UnlockPart("mcq_side14")
    UnlockPart("mcq_spoiler16")
    DebugPrint("unlocked bumper14, side14 and spoiler16")
  end,
  onCutsceneFinished = function()
  end
}
