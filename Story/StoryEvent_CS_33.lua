StoryEvent_CS_33 = {
  onQuit = function()
    RollCredits()
  end,
  onContinue = function()
    RollCredits()
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
    RollCredits()
  end
}
