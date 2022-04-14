StoryEvent_RB_SM_EX = {
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
  end,
  onFirst = function()
    StoryEvent_AX01.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
