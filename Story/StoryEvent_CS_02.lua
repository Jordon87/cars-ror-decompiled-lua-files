StoryEvent_CS_02 = {
  onQuit = function()
    StoryEvent_CS_02.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_EX", "Unlocked")
    SwitchStoryEvent("StoryEvent_CR_01_EX")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
  end,
  onCutsceneFinished = function()
    SwitchStoryEvent("StoryEvent_CR_01_EX")
  end
}
