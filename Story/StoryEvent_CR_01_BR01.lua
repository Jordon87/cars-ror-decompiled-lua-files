StoryEvent_CR_01_BR01 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_HUB_EX)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
  end,
  onFirst = function()
    if GetPlatform() == "ps2" then
      StoryEvent_UpdateStatus("StoryEvent_RS_EX", "Unlocked")
      StoryEvent_UpdateStatus("StoryEvent_OV_EX", "Unlocked")
      StoryEvent_UpdateStatus("StoryEvent_TF_EX", "Unlocked")
    else
      StoryEvent_UpdateStatus("StoryEvent_HUB_EX", "Unlocked")
    end
    StoryEvent_UpdateStatus("StoryEvent_CR_01_AX", "Unlocked")
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper04")
    UnlockPart("mcq_side04")
    UnlockPart("mcq_spoiler04")
    DebugPrint("unlocked bumper04, side04 and spoiler04")
  end,
  onCutsceneFinished = function()
  end
}
