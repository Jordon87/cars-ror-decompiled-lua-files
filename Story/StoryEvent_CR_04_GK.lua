StoryEvent_CR_04_GK = {
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
    UnlockPaintjob("mcqm_d")
    UnlockWheelset("mcq_wheelset_14A")
    UnlockWheelset("mcq_wheelset_20A")
    DebugPrint("Unlocked mcqm_d, wheelset14a and wheelset20a")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_04_GK.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
