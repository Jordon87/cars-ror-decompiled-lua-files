StoryEvent_CT_TD01 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_HUB_LR03)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_CT_TD01.onFailed()
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_HUB_LR03", "Unlocked")
  end,
  onCutsceneFinished = function()
  end
}
