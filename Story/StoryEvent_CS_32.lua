StoryEvent_CS_32 = {
  onQuit = function()
    StoryEvent_CS_32.onCutsceneFinished()
  end,
  onContinue = function()
    StoryEvent_CS_32.onCutsceneFinished()
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
    SwitchStoryEvent("StoryEvent_CS_33")
  end
}
