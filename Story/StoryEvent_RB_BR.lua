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
  L1_2 = "StoryEvent_RB_BR"
  L0_2 = L0_2(L1_2)
  L1_2 = StoryEventStatus
  L2_2 = "first"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = StoryEvent_GetStatus
    L1_2 = "StoryEvent_CS_28"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 6 then
      L0_2 = SwitchStoryEvent
      L1_2 = "StoryEvent_CS_28"
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
  L1_2 = "onUnlocked(StoryEvent_CR_01_LR02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_CR_01_GK02)"
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
  local L0_2, L1_2, L2_2
  L0_2 = UnlockVehicle
  L1_2 = "Bub"
  L0_2(L1_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_01_LR02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_01_GK02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked Bubba"
  L0_2(L1_2)
  L0_2 = IsPaintJobLocked
  L1_2 = "bub_b"
  L0_2 = L0_2(L1_2)
  if 1 == L0_2 then
    L0_2 = UnlockPaintjob
    L1_2 = "bub_b"
    L0_2(L1_2)
    L0_2 = DebugPrint
    L1_2 = "unlocked bub_b paintjob"
    L0_2(L1_2)
  else
    L0_2 = IsPaintJobLocked
    L1_2 = "bub_c"
    L0_2 = L0_2(L1_2)
    if 1 == L0_2 then
      L0_2 = UnlockPaintjob
      L1_2 = "bub_c"
      L0_2(L1_2)
      L0_2 = DebugPrint
      L1_2 = "unlocked bub_c paintjob"
      L0_2(L1_2)
    else
      L0_2 = IsPaintJobLocked
      L1_2 = "bub_d"
      L0_2 = L0_2(L1_2)
      if 1 == L0_2 then
        L0_2 = UnlockPaintjob
        L1_2 = "bub_d"
        L0_2(L1_2)
        L0_2 = DebugPrint
        L1_2 = "unlocked bub_d paintjob"
        L0_2(L1_2)
      else
        L0_2 = IsPaintJobLocked
        L1_2 = "bub_e"
        L0_2 = L0_2(L1_2)
        if 1 == L0_2 then
          L0_2 = UnlockPaintjob
          L1_2 = "bub_e"
          L0_2(L1_2)
          L0_2 = DebugPrint
          L1_2 = "unlocked bub_e paintjob"
          L0_2(L1_2)
        else
          L0_2 = IsPaintJobLocked
          L1_2 = "bub_f"
          L0_2 = L0_2(L1_2)
          if 1 == L0_2 then
            L0_2 = UnlockPaintjob
            L1_2 = "bub_f"
            L0_2(L1_2)
            L0_2 = DebugPrint
            L1_2 = "unlocked bub_f paintjob"
            L0_2(L1_2)
          else
            L0_2 = IsPaintJobLocked
            L1_2 = "bub_g"
            L0_2 = L0_2(L1_2)
            if 1 == L0_2 then
              L0_2 = UnlockPaintjob
              L1_2 = "bub_g"
              L0_2(L1_2)
              L0_2 = DebugPrint
              L1_2 = "unlocked bub_g paintjob"
              L0_2(L1_2)
            else
              L0_2 = IsPaintJobLocked
              L1_2 = "bub_h"
              L0_2 = L0_2(L1_2)
              if 1 == L0_2 then
                L0_2 = UnlockPaintjob
                L1_2 = "bub_h"
                L0_2(L1_2)
                L0_2 = DebugPrint
                L1_2 = "unlocked bub_h paintjob"
                L0_2(L1_2)
              else
                L0_2 = IsPaintJobLocked
                L1_2 = "bub_i"
                L0_2 = L0_2(L1_2)
                if 1 == L0_2 then
                  L0_2 = UnlockPaintjob
                  L1_2 = "bub_i"
                  L0_2(L1_2)
                  L0_2 = DebugPrint
                  L1_2 = "unlocked bub_i paintjob"
                  L0_2(L1_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UnlockPart
  L1_2 = "mcq_side03"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler05"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked side03 and spoiler05"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_RB_BR = L0_1
