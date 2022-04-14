StoryEvent_CAT04 = {
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
    StoryEvent_CAT04.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcqm_f2")
    UnlockWheelset("mcq_wheelset_15A")
    UnlockWheelset("mcq_wheelset_20C")
    DebugPrint("Unlocked mcqm_f2")
  end,
  onCutsceneFinished = function()
  end
}
