StoryEvent_CS_25 = {
  onQuit = function()
    StoryEvent_CS_25.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_CS_25.onCutsceneFinished()
  end,
  onUnlocked = function()
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
    SwitchStoryEvent("StoryEvent_CR_05_BR")
  end
}
