StoryEvent_JD01 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_01_AC)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    StoryEvent_UpdateStatus("StoryEvent_CR_01_AC", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_AC", "Unlocked")
  end,
  onCutsceneFinished = function()
  end
}
