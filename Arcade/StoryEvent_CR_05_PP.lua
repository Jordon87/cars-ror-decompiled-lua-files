StoryEvent_CR_05_PP = {
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
    StoryEvent_CR_05_PP.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
