StoryEvent_RB_SM03 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
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
    UnlockPaintjob("mcqm_c")
    UnlockWheelset("mcq_wheelset_11B")
    DebugPrint("Unlocked mcqm_c and wheelset11b.")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_RB_SM03.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
