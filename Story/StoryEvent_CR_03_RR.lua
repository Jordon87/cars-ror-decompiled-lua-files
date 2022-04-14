StoryEvent_CR_03_RR = {
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
    UnlockPaintjob("mat_c3")
    UnlockPaintjob("mcqm_a")
    UnlockWheelset("mcq_wheelset_07B")
    DebugPrint("Unlocked wheelset07B, mat_c3 and mcqm_a")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_03_RR.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
