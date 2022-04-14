StoryEvent_CT_SM03 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_HUB_LR01)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_HUB_LR01", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_HUB_LR01", "Unlocked")
  end,
  onCutsceneFinished = function()
  end
}
