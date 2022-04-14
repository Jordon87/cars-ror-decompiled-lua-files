StoryEvent_RS_EX = {
  onQuit = function()
    ReturnToStoryMenu()
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
  end,
  onContinue = function()
    DebugPrint("onContinue()")
  end
}
