StoryEvent_CS_11 = {
  onQuit = function()
    DebugPrint("onQuit()")
    StoryEvent_CS_11.onCutsceneFinished()
  end,
  onContinue = function()
    DebugPrint("onContinue()")
    StoryEvent_CS_11.onCutsceneFinished()
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
    DebugPrint("onCutsceneFinished()")
    SwitchStoryEvent("StoryEvent_Explore")
  end
}
