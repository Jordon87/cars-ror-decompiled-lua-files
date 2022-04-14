StoryEvent_TR01 = {
  onQuit = function()
    DebugPrint("onQuit()")
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    DebugPrint("onContinue()")
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    StoryEvent_TR01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mat_c1")
    UnlockWheelset("mcq_wheelset_05C")
    DebugPrint("Unlocked mat_c1 and wheelset05C")
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
