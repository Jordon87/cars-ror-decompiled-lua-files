StoryEvent_CR_04_RR = {
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
    UnlockPaintjob("mcqm_e")
    UnlockWheelset("mcq_wheelset_14B")
    DebugPrint("Unlocked mcqm_e and wheelset14B")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_04_RR.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
