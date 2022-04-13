local L0_1, L1_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2
  L0_2 = SwitchStoryEvent
  L1_2 = "StoryEvent_Explore"
  L0_2(L1_2)
end
L0_1.onQuit = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_GetStatus
  L1_2 = "StoryEvent_CR_01_BR03"
  L0_2 = L0_2(L1_2)
  L1_2 = StoryEventStatus
  L2_2 = "first"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = StoryEvent_GetStatus
    L1_2 = "StoryEvent_CS_32"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 6 then
      L0_2 = SwitchStoryEvent
      L1_2 = "StoryEvent_CS_32"
      L0_2(L1_2)
  end
  else
    L0_2 = SwitchStoryEvent
    L1_2 = "StoryEvent_Explore"
    L0_2(L1_2)
  end
end
L0_1.onContinue = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onUnlocked()"
  L0_2(L1_2)
end
L0_1.onUnlocked = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onFailed()"
  L0_2(L1_2)
end
L0_1.onFailed = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onPlaced = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UnlockVehicle
  L1_2 = "CHF"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked Chick Hicks Final"
  L0_2(L1_2)
  L0_2 = IsPaintJobLocked
  L1_2 = "chi_b"
  L0_2 = L0_2(L1_2)
  if 1 == L0_2 then
    L0_2 = UnlockPaintjob
    L1_2 = "chi_b"
    L0_2(L1_2)
    L0_2 = DebugPrint
    L1_2 = "unlocked chi_b paintjob"
    L0_2(L1_2)
  else
    L0_2 = IsPaintJobLocked
    L1_2 = "chi_c"
    L0_2 = L0_2(L1_2)
    if 1 == L0_2 then
      L0_2 = UnlockPaintjob
      L1_2 = "chi_c"
      L0_2(L1_2)
      L0_2 = DebugPrint
      L1_2 = "unlocked chi_c paintjob"
      L0_2(L1_2)
    else
      L0_2 = IsPaintJobLocked
      L1_2 = "chi_d"
      L0_2 = L0_2(L1_2)
      if 1 == L0_2 then
        L0_2 = UnlockPaintjob
        L1_2 = "chi_d"
        L0_2(L1_2)
        L0_2 = DebugPrint
        L1_2 = "unlocked chi_d paintjob"
        L0_2(L1_2)
      else
        L0_2 = IsPaintJobLocked
        L1_2 = "chi_e"
        L0_2 = L0_2(L1_2)
        if 1 == L0_2 then
          L0_2 = UnlockPaintjob
          L1_2 = "chi_e"
          L0_2(L1_2)
          L0_2 = DebugPrint
          L1_2 = "unlocked chi_e paintjob"
          L0_2(L1_2)
        end
      end
    end
  end
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UnlockPart
  L1_2 = "mcq_bumper07"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side07"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler07"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked bumper07, side07 and spoiler07"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_01_BR03 = L0_1
