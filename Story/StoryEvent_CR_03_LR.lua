StoryEvent_CR_03_LR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_03_AC)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_03_AC", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_03_LR.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper08")
    UnlockPart("mcq_side08")
    UnlockPart("mcq_spoiler08")
    UnlockPart("mcq_hood08")
    DebugPrint("unlocked bumper08, hood08, side08 and spoiler08")
  end,
  onCutsceneFinished = function()
  end
}
