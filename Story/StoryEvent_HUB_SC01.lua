StoryEvent_HUB_SC01 = {
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
    StoryEvent_HUB_SC01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcq_c3")
    UnlockWheelset("mcq_wheelset_08C")
    DebugPrint("Unlocked mcq_c3 and wheelset08C")
  end,
  onCutsceneFinished = function()
  end
}
