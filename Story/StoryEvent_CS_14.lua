StoryEvent_CS_14 = {
  onQuit = function()
    StoryEvent_CS_14.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_CS_14.onCutsceneFinished()
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
    SwitchStoryEvent("StoryEvent_RB_SM02")
  end
}
