StoryEvent_CR_04_AX01 = {
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
    StoryEvent_CR_04_AX01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcqm_f")
    UnlockWheelset("mcq_wheelset_14C")
    UnlockWheelset("mcq_wheelset_20B")
    DebugPrint("Unlocked mcqm_f and wheelset14C and wheeslet20b")
  end,
  onCutsceneFinished = function()
  end
}
