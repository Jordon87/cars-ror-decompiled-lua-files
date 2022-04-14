StoryEvent_CutScene23 = {
  onQuit = function()
    DebugPrint("onQuit()")
  end,
  onContinue = function()
    DebugPrint("onContinue()")
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
    ScavengerHuntUpdate("McQueen", 0)
    SwitchStoryEvent("StoryEvent_Explore_RS")
  end
}
