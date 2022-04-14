StoryEvent_AX03 = {
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
    UnlockPaintjob("mcq_f")
    UnlockWheelset("mcq_wheelset_13A")
    StoryEvent_AX03.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    DebugPrint("unlocked wheelset13A and mcq_f")
    StoryEvent_AX03.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
