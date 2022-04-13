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
  L1_2 = "StoryEvent_CR_04_BR"
  L0_2 = L0_2(L1_2)
  L1_2 = StoryEventStatus
  L2_2 = "first"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = StoryEvent_GetStatus
    L1_2 = "StoryEvent_CS_18"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 6 then
      L0_2 = SwitchStoryEvent
      L1_2 = "StoryEvent_CS_18"
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
  L1_2 = "onUnlocked(StoryEvent_HUB_GK01)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_CT_MD01)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_CAT04)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_MT02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(UnlockVehicle(\"Sti\"))"
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
  L1_2 = "Sti"
  L0_2(L1_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_GK01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CT_MD01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CAT04"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_MT02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked stinger"
  L0_2(L1_2)
  L0_2 = IsPaintJobLocked
  L1_2 = "sti_b1"
  L0_2 = L0_2(L1_2)
  if 1 == L0_2 then
    L0_2 = UnlockPaintjob
    L1_2 = "sti_b1"
    L0_2(L1_2)
    L0_2 = DebugPrint
    L1_2 = "unlocked sti_b1 paintjob"
    L0_2(L1_2)
  else
    L0_2 = IsPaintJobLocked
    L1_2 = "sti_b2"
    L0_2 = L0_2(L1_2)
    if 1 == L0_2 then
      L0_2 = UnlockPaintjob
      L1_2 = "sti_b2"
      L0_2(L1_2)
      L0_2 = DebugPrint
      L1_2 = "unlocked sti_b2 paintjob"
      L0_2(L1_2)
    else
      L0_2 = IsPaintJobLocked
      L1_2 = "sti_b3"
      L0_2 = L0_2(L1_2)
      if 1 == L0_2 then
        L0_2 = UnlockPaintjob
        L1_2 = "sti_b3"
        L0_2(L1_2)
        L0_2 = DebugPrint
        L1_2 = "unlocked sti_b3 paintjob"
        L0_2(L1_2)
      else
        L0_2 = IsPaintJobLocked
        L1_2 = "sti_b4"
        L0_2 = L0_2(L1_2)
        if 1 == L0_2 then
          L0_2 = UnlockPaintjob
          L1_2 = "sti_b4"
          L0_2(L1_2)
          L0_2 = DebugPrint
          L1_2 = "unlocked sti_b4 paintjob"
          L0_2(L1_2)
        else
          L0_2 = IsPaintJobLocked
          L1_2 = "sti_a1"
          L0_2 = L0_2(L1_2)
          if 1 == L0_2 then
            L0_2 = UnlockPaintjob
            L1_2 = "sti_a1"
            L0_2(L1_2)
            L0_2 = DebugPrint
            L1_2 = "unlocked sti_a1 paintjob"
            L0_2(L1_2)
          else
            L0_2 = IsPaintJobLocked
            L1_2 = "sti_a2"
            L0_2 = L0_2(L1_2)
            if 1 == L0_2 then
              L0_2 = UnlockPaintjob
              L1_2 = "sti_a2"
              L0_2(L1_2)
              L0_2 = DebugPrint
              L1_2 = "unlocked sti_a2 paintjob"
              L0_2(L1_2)
            else
              L0_2 = IsPaintJobLocked
              L1_2 = "sti_a3"
              L0_2 = L0_2(L1_2)
              if 1 == L0_2 then
                L0_2 = UnlockPaintjob
                L1_2 = "sti_a3"
                L0_2(L1_2)
                L0_2 = DebugPrint
                L1_2 = "unlocked sti_a3 paintjob"
                L0_2(L1_2)
              else
                L0_2 = IsPaintJobLocked
                L1_2 = "sti_a4"
                L0_2 = L0_2(L1_2)
                if 1 == L0_2 then
                  L0_2 = UnlockPaintjob
                  L1_2 = "sti_a4"
                  L0_2(L1_2)
                  L0_2 = DebugPrint
                  L1_2 = "unlocked sti_a4 paintjob"
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
  L1_2 = "mcq_bumper13"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side13"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler15"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_hood02"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked bumper13, hood02, side13 and spoiler15"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_04_BR = L0_1
