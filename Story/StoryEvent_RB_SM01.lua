StoryEvent_RB_SM01 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CT_SM01)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    StoryEvent_UpdateStatus("StoryEvent_CT_SM01", "Unlocked")
  end,
  onFirst = function()
    StoryEvent_RB_SM01.onPlaced()
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper19")
    UnlockPart("mcq_side19")
    DebugPrint("unlocked bumper19 and side19")
  end,
  onCutsceneFinished = function()
  end
}
