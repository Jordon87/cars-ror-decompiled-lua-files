StoryEvent_HUB_LR02 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_05_EX()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    StoryEvent_UpdateStatus("StoryEvent_CR_05_EX", "Unlocked")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_HUB_LR02.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_spoiler06")
  end,
  onCutsceneFinished = function()
  end
}
