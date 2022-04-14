StoryEvent_CR_05_GK = {
  onQuit = function()
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
    StoryEvent_CR_05_GK.onPlaced()
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end,
  onContinue = function()
    DebugPrint("onContinue()")
    ReturnToArcadeMenu()
  end
}
