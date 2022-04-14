StoryEvent_AX02 = {
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
    UnlockPaintjob("mat_d")
    UnlockPaintjob("mat_e")
    UnlockWheelset("mcq_wheelset_08B")
    UnlockWheelset("mcq_wheelset_18B")
    StoryEvent_AX02.onFailed()
  end,
  onFirst = function()
    StoryEvent_AX02.onPlaced()
    DebugPrint("Unlocked mat_e, wheelset08b and wheelset18b")
  end,
  onCutsceneFinished = function()
  end
}
