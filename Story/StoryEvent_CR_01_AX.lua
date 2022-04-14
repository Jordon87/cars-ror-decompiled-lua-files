StoryEvent_CR_01_AX = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_CR_01_AX.onFailed()
  end,
  onFirst = function()
    StoryEvent_CR_01_AX.onPlaced()
  end,
  onCutsceneFinished = function()
  end
}
