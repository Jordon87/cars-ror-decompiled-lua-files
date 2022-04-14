StoryEvent_CR_05_MT = {
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
    UnlockWheelset("mcq_wheelset_08A")
    UnlockWheelset("mcq_wheelset_09B")
    DebugPrint("wheelset08a and wheelset09b")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_05_MT.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
