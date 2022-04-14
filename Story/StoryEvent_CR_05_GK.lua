StoryEvent_CR_05_GK = {
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
    UnlockPaintjob("mcqm_b2")
    UnlockPaintjob("mcq_d2")
    UnlockWheelset("mcq_wheelset_09C")
    UnlockWheelset("mcq_wheelset_18D")
    DebugPrint("Unlocked mcqm_b2, mcq_d2, wheelset09c and wheelset18d")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_05_GK.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
