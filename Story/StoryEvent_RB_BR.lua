StoryEvent_RB_BR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    if StoryEvent_GetStatus("StoryEvent_RB_BR") >= StoryEventStatus("first") and StoryEvent_GetStatus("StoryEvent_CS_28") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_28")
    else
      SwitchStoryEvent("StoryEvent_Explore")
    end
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_CR_01_LR02)")
    DebugPrint("onUnlocked(StoryEvent_CR_01_GK02)")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
  end,
  onFirst = function()
    UnlockVehicle("Bub")
    StoryEvent_UpdateStatus("StoryEvent_CR_01_LR02", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_CR_01_GK02", "Unlocked")
    DebugPrint("unlocked Bubba")
    if 1 == IsPaintJobLocked("bub_b") then
      UnlockPaintjob("bub_b")
      DebugPrint("unlocked bub_b paintjob")
    elseif 1 == IsPaintJobLocked("bub_c") then
      UnlockPaintjob("bub_c")
      DebugPrint("unlocked bub_c paintjob")
    elseif 1 == IsPaintJobLocked("bub_d") then
      UnlockPaintjob("bub_d")
      DebugPrint("unlocked bub_d paintjob")
    elseif 1 == IsPaintJobLocked("bub_e") then
      UnlockPaintjob("bub_e")
      DebugPrint("unlocked bub_e paintjob")
    elseif 1 == IsPaintJobLocked("bub_f") then
      UnlockPaintjob("bub_f")
      DebugPrint("unlocked bub_f paintjob")
    elseif 1 == IsPaintJobLocked("bub_g") then
      UnlockPaintjob("bub_g")
      DebugPrint("unlocked bub_g paintjob")
    elseif 1 == IsPaintJobLocked("bub_h") then
      UnlockPaintjob("bub_h")
      DebugPrint("unlocked bub_h paintjob")
    elseif 1 == IsPaintJobLocked("bub_i") then
      UnlockPaintjob("bub_i")
      DebugPrint("unlocked bub_i paintjob")
    end
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_side03")
    UnlockPart("mcq_spoiler05")
    DebugPrint("unlocked side03 and spoiler05")
  end,
  onCutsceneFinished = function()
  end
}
