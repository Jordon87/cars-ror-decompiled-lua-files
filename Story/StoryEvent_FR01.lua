StoryEvent_FR01 = {
  onQuit = function()
    DebugPrint("onQuit()")
    UnloadAllAmbientActivities()
  end,
  onContinue = function()
    DebugPrint("onContinue()")
    UnloadAllAmbientActivities()
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
    AwardAbility("BoostLevel2", 1)
  end,
  onFirst = function()
    DebugPrint("onFirst()")
    StoryEvent_FR01.onPlaced()
  end,
  onCutsceneFinished = function()
    DebugPrint("onCutsceneFinished()")
  end
}
