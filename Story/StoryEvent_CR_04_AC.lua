StoryEvent_CR_04_AC = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_04_BR)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CR_04_BR", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_CR_04_AC.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper12")
    UnlockPart("mcq_side12")
    UnlockPart("mcq_spoiler14")
    DebugPrint("unlocked bumper12, side12 and spoiler14")
  end,
  onCutsceneFinished = function()
  end
}
