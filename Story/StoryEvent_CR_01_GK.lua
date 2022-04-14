StoryEvent_CR_01_GK = {
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
    UnlockPaintjob("mcq_a1")
    UnlockWheelset("mcq_wheelset_17a")
    UnlockWheelset("mcq_wheelset_15d")
    DebugPrint("Unlocked mcq_a1 and wheelset 17a and wheelset 15d")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_01_GK.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
