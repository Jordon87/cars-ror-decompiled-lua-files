StoryEvent_CR_04_BR = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    if StoryEvent_GetStatus("StoryEvent_CR_04_BR") >= StoryEventStatus("first") and StoryEvent_GetStatus("StoryEvent_CS_18") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_18")
    else
      SwitchStoryEvent("StoryEvent_Explore")
    end
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked(StoryEvent_HUB_GK01)")
    DebugPrint("onUnlocked(StoryEvent_CT_MD01)")
    DebugPrint("onUnlocked(StoryEvent_CAT04)")
    DebugPrint("onUnlocked(StoryEvent_HUB_MT02)")
    DebugPrint("onUnlocked(UnlockVehicle(\"Sti\"))")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
  end,
  onFirst = function()
    UnlockVehicle("Sti")
    StoryEvent_UpdateStatus("StoryEvent_HUB_GK01", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_CT_MD01", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_CAT04", "Unlocked")
    StoryEvent_UpdateStatus("StoryEvent_HUB_MT02", "Unlocked")
    DebugPrint("unlocked stinger")
    if 1 == IsPaintJobLocked("sti_b1") then
      UnlockPaintjob("sti_b1")
      DebugPrint("unlocked sti_b1 paintjob")
    elseif 1 == IsPaintJobLocked("sti_b2") then
      UnlockPaintjob("sti_b2")
      DebugPrint("unlocked sti_b2 paintjob")
    elseif 1 == IsPaintJobLocked("sti_b3") then
      UnlockPaintjob("sti_b3")
      DebugPrint("unlocked sti_b3 paintjob")
    elseif 1 == IsPaintJobLocked("sti_b4") then
      UnlockPaintjob("sti_b4")
      DebugPrint("unlocked sti_b4 paintjob")
    elseif 1 == IsPaintJobLocked("sti_a1") then
      UnlockPaintjob("sti_a1")
      DebugPrint("unlocked sti_a1 paintjob")
    elseif 1 == IsPaintJobLocked("sti_a2") then
      UnlockPaintjob("sti_a2")
      DebugPrint("unlocked sti_a2 paintjob")
    elseif 1 == IsPaintJobLocked("sti_a3") then
      UnlockPaintjob("sti_a3")
      DebugPrint("unlocked sti_a3 paintjob")
    elseif 1 == IsPaintJobLocked("sti_a4") then
      UnlockPaintjob("sti_a4")
      DebugPrint("unlocked sti_a4 paintjob")
    end
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper13")
    UnlockPart("mcq_side13")
    UnlockPart("mcq_spoiler15")
    UnlockPart("mcq_hood02")
    DebugPrint("unlocked bumper13, hood02, side13 and spoiler15")
  end,
  onCutsceneFinished = function()
  end
}
