StoryEvent_CAT08 = {
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
    StoryEvent_CAT08.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
