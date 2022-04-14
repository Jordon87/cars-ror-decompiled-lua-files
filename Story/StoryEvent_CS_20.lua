StoryEvent_CS_20 = {
  onQuit = function()
    StoryEvent_CS_20.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_CS_20.onCutsceneFinished()
  end,
  onUnlocked = function()
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
    SwitchStoryEvent("StoryEvent_HUB_MT01")
  end
}
