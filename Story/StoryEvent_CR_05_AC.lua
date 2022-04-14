StoryEvent_CR_05_AC = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_05_BR)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_05_BR", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_05_AC.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper15")
    UnlockPart("mcq_side15")
    UnlockPart("mcq_hood05")
    DebugPrint("unlocked bumper15 and side15")
  end,
  onCutsceneFinished = function()
  end
}
