StoryEvent_HUB_MT02 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
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
    StoryEvent_HUB_MT02.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
