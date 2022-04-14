StoryEvent_CS_10 = {
  onQuit = function()
    StoryEvent_CS_10.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_CS_10.onCutsceneFinished()
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
  end,
  onFirst = function()
    DebugPrint("onFirst()")
  end,
  onCutsceneFinished = function()
    SwitchStoryEvent("StoryEvent_CR_03_BR")
  end
}
