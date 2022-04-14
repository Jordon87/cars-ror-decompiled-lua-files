StoryEvent_CR_01_BR02 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_01_BR03)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_01_BR03", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_01_BR02.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper06")
    UnlockPart("mcq_side06")
    UnlockPart("mcq_spoiler06")
    DebugPrint("unlocked bumper06, side06 and spoiler06")
  end,
  onCutsceneFinished = function()
  end
}
