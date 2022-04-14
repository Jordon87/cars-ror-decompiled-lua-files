StoryEvent_CT_TD01 = {
  onQuit = function()
    ReturnToArcadeMenu()
  end,
  onContinue = function()
    ReturnToArcadeMenu()
  end,
  onUnlocked = function()
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
  end,
  onFirst = function()
    StoryEvent_CT_TD01.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
