StoryEvent_CR_05_AX01 = {
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
    StoryEvent_CR_05_AX01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockWheelset("mcq_wheelset_10A")
    UnlockPaintjob("mcq_d3")
    UnlockPaintjob("mcqm_b1")
    DebugPrint("Unlocked mcq_d3, mcqm_b1 and wheelset10a")
  end,
  onCutsceneFinished = function()
  end
}
