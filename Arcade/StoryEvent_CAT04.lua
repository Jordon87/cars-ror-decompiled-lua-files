StoryEvent_CAT04 = {
  onQuit = function()
    DebugPrint("onQuit()")
    ReturnToArcadeMenu()
  end,
  onContinue = function()
    DebugPrint("onContinue()")
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
    StoryEvent_CAT04.onPlaced()
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
