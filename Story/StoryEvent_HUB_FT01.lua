StoryEvent_HUB_FT01 = {
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
    StoryEvent_HUB_FT01.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mcq_a3")
    UnlockWheelset("mcq_wheelset_04A")
    UnlockWheelset("mcq_wheelset_16D")
    DebugPrint("Unlocked mcq_a3, wheelset04A and wheelset16D")
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
