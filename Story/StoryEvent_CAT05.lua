StoryEvent_CAT05 = {
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
    StoryEvent_CAT05.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcq_b3")
    UnlockWheelset("mcq_wheelset_07A")
    UnlockWheelset("mcq_wheelset_17D")
    DebugPrint("Unlocked mcq_b3, wheelset07A and wheelset17D")
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
