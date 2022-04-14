StoryEvent_CAT01 = {
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
    StoryEvent_CAT01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcq_b1")
    UnlockWheelset("mcq_wheelset_05B")
    UnlockWheelset("mcq_wheelset_17B")
    DebugPrint("Unlocked mcq_a3, wheelset05B and wheelset17B")
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
