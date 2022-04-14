StoryEvent_HUB_LR03 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_04_EX()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    StoryEvent_UpdateStatus("StoryEvent_CR_04_EX", "Unlocked")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_HUB_LR03.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_hood06")
  end,
  onCutsceneFinished = function()
  end
}
