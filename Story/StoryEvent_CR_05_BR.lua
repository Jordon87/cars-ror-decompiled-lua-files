StoryEvent_CR_05_BR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    if StoryEvent_GetStatus("StoryEvent_CR_05_BR") >= StoryEventStatus("first") and StoryEvent_GetStatus("StoryEvent_CS_26") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_26")
    else
      SwitchStoryEvent("StoryEvent_Explore")
    end
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(UnlockVehicle(\"Elm\"))")
    DebugPrint("onUnlocked(StoryEvent_HUB_MT01)")
    DebugPrint("onUnlocked(StoryEvent_RB_SM03)")
    DebugPrint("onUnlocked(StoryEvent_HUB_GK02)")
    DebugPrint("onUnlocked(StoryEvent_HUB_GK03)")
    DebugPrint("onUnlocked(StoryEvent_HUB_SC01)")
    DebugPrint("onUnlocked(StoryEvent_AX03)")
    DebugPrint("onUnlocked(StoryEvent_CAT03)")
    DebugPrint("onUnlocked(StoryEvent_HUB_PP03)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
    DebugPrint("onPlaced()")
  end,
  onFirst = function()
    UnlockVehicle("Elm")
    StoryEvent_UpdateStatus("StoryEvent_HUB_GK02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_MT01", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_RB_SM03", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_GK03", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_SC01", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_AX03", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_CAT03", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_PP03", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_TR03", "Unlocked")
    DebugPrint("unlocked el machismo")
    if 1 == IsPaintJobLocked("elm_b1") then
      UnlockPaintjob("elm_b1")
      DebugPrint("unlocked elm_b1 paintjob")
    elseif 1 == IsPaintJobLocked("elm_b2") then
      UnlockPaintjob("elm_b2")
      DebugPrint("unlocked elm_b2 paintjob")
    elseif 1 == IsPaintJobLocked("elm_b3") then
      UnlockPaintjob("elm_b3")
      DebugPrint("unlocked elm_b3 paintjob")
    elseif 1 == IsPaintJobLocked("elm_b4") then
      UnlockPaintjob("elm_b4")
      DebugPrint("unlocked elm_b4 paintjob")
    elseif 1 == IsPaintJobLocked("elm_c1") then
      UnlockPaintjob("elm_c1")
      DebugPrint("unlocked elm_c1 paintjob")
    elseif 1 == IsPaintJobLocked("elm_c2") then
      UnlockPaintjob("elm_c2")
      DebugPrint("unlocked elm_c2 paintjob")
    elseif 1 == IsPaintJobLocked("elm_c3") then
      UnlockPaintjob("elm_c3")
      DebugPrint("unlocked elm_c3 paintjob")
    elseif 1 == IsPaintJobLocked("elm_c4") then
      UnlockPaintjob("elm_c4")
      DebugPrint("unlocked elm_c4 paintjob")
    end
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper16")
    UnlockPart("mcq_side16")
    UnlockPart("mcq_spoiler18")
    DebugPrint("unlocked bumper 16, side 16 and spoiler 18")
    DebugPrint("unlocked El Machismo")
  end,
  onCutsceneFinished = function()
  end
}
