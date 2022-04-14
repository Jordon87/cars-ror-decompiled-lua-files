StoryEvent_HUB_SR02 = {
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
    StoryEvent_HUB_SR02.onFailed()
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    UnlockPaintjob("mat_b1")
    UnlockPaintjob("mcq_c2")
    UnlockWheelset("mcq_wheelset_02A")
    UnlockWheelset("mcq_wheelset_16C")
    DebugPrint("Unlocked mat_b1 and mcq_c2, wheelset02A and wheelset16C")
  end,
  onCutsceneFinished = function()
  end
}
