StoryEvent_AX01 = {
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
    UnlockPaintjob("mat_b")
    UnlockWheelset("mcq_wheelset_01A")
    UnlockWheelset("mcq_wheelset_16A")
    DebugPrint("Unlocked mat_b and mcq_wheelset_01A and mcq_wheelset_16A")
    DebugPrint("onPlaced()")
    StoryEvent_AX01.onFailed()
  end,
  onFirst = function()
  end,
  onCutsceneFinished = function()
  end
}
