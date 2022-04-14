StoryEvent_HUB_PP03 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
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
    UnlockPaintjob("mcqm_c3")
    UnlockWheelset("mcq_wheelset_13C")
    DebugPrint("Unlocked mcqm_c3 and wheelset13C.")
  end,
  onFirst = function()
    StoryEvent_HUB_PP03.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
