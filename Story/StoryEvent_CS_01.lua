StoryEvent_CS_01 = {
  onQuit = function()
    DebugPrint("onQuit()")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
  end,
  onPlaced = function()
  end,
  onFirst = function()
  end,
  onCutsceneFinished = function()
    SwitchStoryEvent("StoryEvent_CR_01_LR01")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_CR_01_LR01")
  end
}
