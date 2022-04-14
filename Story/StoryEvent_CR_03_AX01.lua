StoryEvent_CR_03_AX01 = {
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
    StoryEvent_CR_03_AX01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockWheelset("mcq_wheelset_06A")
    UnlockWheelset("mcq_wheelset_17C")
    UnlockPaintjob("mcq_b2")
    UnlockPaintjob("mcqm_c1")
    DebugPrint("Unlocked mcq_b2, mcqm_c1, wheelset06a and wheelset17c")
  end,
  onCutsceneFinished = function()
  end
}
