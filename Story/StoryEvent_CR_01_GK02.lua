StoryEvent_CR_01_GK02 = {
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
    UnlockPaintjob("gui_b")
    UnlockWheelset("mcq_wheelset_15C")
    UnlockWheelset("mcq_wheelset_20D")
    DebugPrint("Unlocked gui_b wheelset15c and wheelset20d")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_CR_01_GK02.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
