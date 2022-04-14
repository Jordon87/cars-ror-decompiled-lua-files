StoryEvent_RB_MT01 = {
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
    UnlockPaintjob("mat_c")
    UnlockPaintjob("mcq_d1")
    UnlockWheelset("mcq_wheelset_05A")
    DebugPrint("Unlocked mat_c, mcq_d1 and wheelset05A")
  end,
  onFirst = function()
    StoryEvent_RB_MT01.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
