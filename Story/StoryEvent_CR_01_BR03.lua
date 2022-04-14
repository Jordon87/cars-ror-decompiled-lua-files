StoryEvent_CR_01_BR03 = {
  onQuit = function()
    SwitchStoryEvent("StoryEvent_Explore")
  end,
  onContinue = function()
    if StoryEvent_GetStatus("StoryEvent_CR_01_BR03") >= StoryEventStatus("first") and StoryEvent_GetStatus("StoryEvent_CS_32") ~= 6 then
      SwitchStoryEvent("StoryEvent_CS_32")
    else
      SwitchStoryEvent("StoryEvent_Explore")
    end
  end,
  onUnlocked = function()
    DebugPrint("onUnlocked()")
  end,
  onFailed = function()
    DebugPrint("onFailed()")
  end,
  onPlaced = function()
  end,
  onFirst = function()
    UnlockVehicle("CHF")
    DebugPrint("unlocked Chick Hicks Final")
    if 1 == IsPaintJobLocked("chi_b") then
      UnlockPaintjob("chi_b")
      DebugPrint("unlocked chi_b paintjob")
    elseif 1 == IsPaintJobLocked("chi_c") then
      UnlockPaintjob("chi_c")
      DebugPrint("unlocked chi_c paintjob")
    elseif 1 == IsPaintJobLocked("chi_d") then
      UnlockPaintjob("chi_d")
      DebugPrint("unlocked chi_d paintjob")
    elseif 1 == IsPaintJobLocked("chi_e") then
      UnlockPaintjob("chi_e")
      DebugPrint("unlocked chi_e paintjob")
    end
  end,
  onCollectedAllBonusBolts = function()
    UnlockPart("mcq_bumper07")
    UnlockPart("mcq_side07")
    UnlockPart("mcq_spoiler07")
    DebugPrint("unlocked bumper07, side07 and spoiler07")
  end,
  onCutsceneFinished = function()
  end
}
