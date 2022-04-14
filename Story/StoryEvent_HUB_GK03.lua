StoryEvent_HUB_GK03 = {
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
    UnlockPaintjob("mcq_e3")
    UnlockWheelset("mcq_wheelset_11C")
    UnlockWheelset("mcq_wheelset_19C")
    DebugPrint("Unlocked wheelset11C, wheelset19c and mcq_e3")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_HUB_GK03.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
