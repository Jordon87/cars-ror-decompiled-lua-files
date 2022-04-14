StoryEvent_RB_SM02 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_HUB_LR02)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_HUB_LR02", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_RB_SM02.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper20")
    UnlockPart("mcq_side20")
    DebugPrint("unlocked bumper20 and side20")
  end,
  onCutsceneFinished = function()
  end
}
