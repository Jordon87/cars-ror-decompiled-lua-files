StoryEvent_HUB_MT01 = {
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
    StoryEvent_UpdateStatus("StoryEvent_CT_TD01", "Unlocked")
    DebugPrint("Unlocked ct_td01")
  end,
  onFirst = function()
    StoryEvent_HUB_MT01.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper17")
    UnlockPart("mcq_side17")
    UnlockPart("mcq_hood07")
    DebugPrint("unlocked hood07, bumper17 and side17.")
  end,
  onCutsceneFinished = function()
  end
}
