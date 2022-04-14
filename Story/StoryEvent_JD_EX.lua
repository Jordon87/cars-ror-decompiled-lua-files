StoryEvent_JD_EX = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_CR_01_EX")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_CR_01_EX")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    AwardAbility("BoostLevel2", 1)
  end,
  onFirst = function()
    StoryEvent_JD_EX.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
