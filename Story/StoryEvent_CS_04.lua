StoryEvent_CS_04 = {
  onQuit = function()
    StoryEvent_CS_04.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_CS_04.onCutsceneFinished()
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
    SwitchStoryEvent("StoryEvent_RB_SM01")
  end
}
