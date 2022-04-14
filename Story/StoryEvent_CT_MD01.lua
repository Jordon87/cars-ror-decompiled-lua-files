StoryEvent_CT_MD01 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_RB_BR)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_CT_MD01.onFailed()
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_RB_BR", "Unlocked")
  end,
  onCutsceneFinished = function()
  end
}
