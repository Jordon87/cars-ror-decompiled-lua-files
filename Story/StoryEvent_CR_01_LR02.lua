StoryEvent_CR_01_LR02 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_01_BR02)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_BR02", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_01_LR02.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper05")
    UnlockPart("mcq_hood06")
    UnlockPart("mcq_side05")
    DebugPrint("unlocked bumper05, hood06 and side05")
  end,
  onCutsceneFinished = function()
  end
}
