StoryEvent_CAT02 = {
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
    StoryEvent_CAT02.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcqm_b")
    UnlockWheelset("mcq_wheelset_09A")
    UnlockWheelset("mcq_wheelset_18C")
    DebugPrint("Unlocked mcqm_b")
  end,
  onCutsceneFinished = function()
  end
}
