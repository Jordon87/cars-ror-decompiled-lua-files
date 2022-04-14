StoryEvent_HUB_GK02 = {
  onQuit = function()
    DebugPrint("onQuit()")
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    DebugPrint("onContinue()")
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CT_TD01)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    UnlockPaintjob("mcq_e2")
    UnlockPaintjob("mcqm_b3")
    UnlockWheelset("mcq_wheelset_11A")
    UnlockWheelset("mcq_wheelset_19B")
    DebugPrint("Unlocked mcq_e2, mcqm_b3, wheelset11a and wheelset19b")
  end,
  onFirst = function()
    StoryEvent_HUB_GK02.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
