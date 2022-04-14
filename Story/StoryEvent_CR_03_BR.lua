StoryEvent_CR_03_BR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    if StoryEvent_GetStatus("StoryEvent_CR_03_BR") >= StoryEventStatus("first") and StoryEvent_GetStatus("StoryEvent_CS_11") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_11")
    else
      SwitchStoryEvent("StoryEvent_Explore")
    end
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_RB_MT02)")
    DebugPrint("onUnlocked(StoryEvent_HUB_SR02)")
    DebugPrint("onUnlocked(StoryEvent_HUB_FT02)")
    DebugPrint("onUnlocked(StoryEvent_AX02)")
    DebugPrint("onUnlocked(StoryEvent_HUB_SC01)")
    DebugPrint("onUnlocked(StoryEvent_HUB_PP02)")
    DebugPrint("onUnlocked(StoryEvent_CAT02)")
    DebugPrint("onUnlocked(UnlockVehicle(\"Can\"))")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
  end,
  onFirst = function()
    StoryEvent_UpdateStatus("StoryEvent_RB_MT02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_SR02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_AX02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_SC01", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_PP02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_CAT02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_TR02", "Unlocked")
    UnlockVehicle("Can")
    DebugPrint("unlocked candice")
    if 1 == IsPaintJobLocked("can_b1") then
      UnlockPaintjob("can_b1")
      DebugPrint("unlocked can_b1 paintjob")
    elseif 1 == IsPaintJobLocked("can_b2") then
      UnlockPaintjob("can_b2")
      DebugPrint("unlocked can_b2 paintjob")
    elseif 1 == IsPaintJobLocked("can_b3") then
      UnlockPaintjob("can_b3")
      DebugPrint("unlocked can_b3 paintjob")
    elseif 1 == IsPaintJobLocked("can_b4") then
      UnlockPaintjob("can_b4")
      DebugPrint("unlocked can_b4 paintjob")
    elseif 1 == IsPaintJobLocked("can_c1") then
      UnlockPaintjob("can_c1")
      DebugPrint("unlocked can_c1 paintjob")
    elseif 1 == IsPaintJobLocked("can_c2") then
      UnlockPaintjob("can_c2")
      DebugPrint("unlocked can_c2 paintjob")
    elseif 1 == IsPaintJobLocked("can_c3") then
      UnlockPaintjob("can_c3")
      DebugPrint("unlocked can_c3 paintjob")
    elseif 1 == IsPaintJobLocked("can_c4") then
      UnlockPaintjob("can_c4")
      DebugPrint("unlocked can_c4 paintjob")
    end
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper10")
    UnlockPart("mcq_side10")
    UnlockPart("mcq_spoiler10")
    DebugPrint("bumper10, side10 and spoiler10")
  end,
  onCutsceneFinished = function()
  end
}
