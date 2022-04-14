StoryEvent_CR_01_LR01 = {
  onQuit = function()
    StoryEvent_UpdateStatusSilent("StoryEvent_CR_01_EX", "Unlocked")
    if StoryEvent_GetStatus("StoryEvent_CS_02") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_02")
    else
      SwitchStoryEvent("StoryEvent_CR_01_EX")
    end
  end,
  onContinue = function()
    if StoryEvent_GetStatus("StoryEvent_CS_02") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_02")
    else
      SwitchStoryEvent("StoryEvent_CR_01_EX")
    end
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_EX", "Unlocked")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_EX", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_JD01", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_EX", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_JD01", "Unlocked")
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper02")
    UnlockPart("mcq_side02")
    UnlockPart("mcq_spoiler02")
  end,
  onCutsceneFinished = function()
  end
}
