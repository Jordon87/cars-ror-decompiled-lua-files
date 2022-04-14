StoryEvent_TR02 = {
  onQuit = function()
    ReturnToArcadeMenu()
  end,
  onContinue = function()
    ReturnToArcadeMenu()
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
    StoryEvent_TR02.onPlaced()
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
