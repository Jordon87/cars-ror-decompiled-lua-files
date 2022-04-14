StoryEvent_CAT07 = {
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
    StoryEvent_CAT07.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("matm_b")
    UnlockWheelset("mcq_wheelset_19A")
    UnlockWheelset("mcq_wheelset_10B")
    DebugPrint("Unlocked matm_b, wheelset19a and wheelset10b")
  end,
  onCutsceneFinished = function()
  end
}
