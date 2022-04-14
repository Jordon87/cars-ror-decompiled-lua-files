StoryEvent_CR_01_BR01 = {
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
    StoryEvent_CR_01_BR01.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
