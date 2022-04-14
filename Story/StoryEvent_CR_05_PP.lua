StoryEvent_CR_05_PP = {
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
    UnlockPaintjob("mcq_e1")
    UnlockWheelset("mcq_wheelset_10c")
    DebugPrint("Unlocked mcq_e1 and wheelset10c")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_05_PP.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
