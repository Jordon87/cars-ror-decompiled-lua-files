StoryEvent_CR_04_LR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_04_AC)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_04_AC", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_04_LR.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper11")
    UnlockPart("mcq_hood12")
    UnlockPart("mcq_side11")
    UnlockPart("mcq_spoiler12")
    DebugPrint("unlocked bumper11, hood12, side11 and spoiler12")
  end,
  onCutsceneFinished = function()
  end
}
