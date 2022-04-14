StoryEvent_CS_26 = {
  onQuit = function()
    DebugPrint("onQuit()")
    StoryEvent_CS_26.onCutsceneFinished()
  end,
  onContinue = function()
    DebugPrint("onContinue()")
    StoryEvent_CS_26.onCutsceneFinished()
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
    SwitchStoryEvent("StoryEvent_Explore")
  end
}
