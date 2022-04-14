StoryEvent_CT_MD02 = {
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
    StoryEvent_CT_MD02.onFailed()
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_RB_BR", "Unlocked")
  end,
  onCutsceneFinished = function()
  end
}
