StoryEvent_CR_03_PP = {
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
    UnlockPaintjob("mcq_c1")
    UnlockWheelset("mcq_wheelset_07C")
    UnlockWheelset("mcq_wheelset_18A")
    DebugPrint("Unlocked mcq_c1, wheelset07c and wheelset18a")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_03_PP.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
