StoryEvent_RB_MT02 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_RB_SM02)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_RB_SM02", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_RB_MT02.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper18")
    UnlockPart("mcq_side18")
    UnlockPart("mcq_spoiler17")
    DebugPrint("unlocked bumper18, side18 and spoiler17")
  end,
  onCutsceneFinished = function()
  end
}
