StoryEvent_HUB_GK01 = {
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
    UnlockPaintjob("mcqm_g")
    UnlockWheelset("mcq_wheelset_15A")
    UnlockWheelset("mcq_wheelset_20C")
    DebugPrint("Unlocked mcqm_g, wheelset15a and wheelset20c")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_HUB_GK01.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
