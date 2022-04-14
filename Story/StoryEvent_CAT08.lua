StoryEvent_CAT08 = {
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
    StoryEvent_CAT08.onFailed()
  end,
  onFirst = function()
    UnlockPaintjob("mcq_a2")
    UnlockWheelset("mcq_wheelset_01B")
    UnlockWheelset("mcq_wheelset_16B")
    DebugPrint("Unlocked mcq_a2, wheelse 01b and wheelset 16b")
  end,
  onCutsceneFinished = function()
  end
}
