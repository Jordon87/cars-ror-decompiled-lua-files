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
  L1_2 = "StoryEvent_CR_03_BR"
  L0_2 = L0_2(L1_2)
  L1_2 = StoryEventStatus
  L2_2 = "first"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = StoryEvent_GetStatus
    L1_2 = "StoryEvent_CS_11"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 6 then
      L0_2 = SwitchStoryEvent
      L1_2 = "StoryEvent_CS_11"
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
  L1_2 = "onUnlocked(StoryEvent_RB_MT02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_SR02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_FT02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_AX02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_SC01)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_PP02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_CAT02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(UnlockVehicle(\"Can\"))"
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
  L0_2 = DebugPrint
  L1_2 = "onPlaced()"
  L0_2(L1_2)
end
L0_1.onPlaced = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_RB_MT02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_SR02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_AX02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_SC01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_PP02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CAT02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_TR02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = UnlockVehicle
  L1_2 = "Can"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked candice"
  L0_2(L1_2)
  L0_2 = IsPaintJobLocked
  L1_2 = "can_b1"
  L0_2 = L0_2(L1_2)
  if 1 == L0_2 then
    L0_2 = UnlockPaintjob
    L1_2 = "can_b1"
    L0_2(L1_2)
    L0_2 = DebugPrint
    L1_2 = "unlocked can_b1 paintjob"
    L0_2(L1_2)
  else
    L0_2 = IsPaintJobLocked
    L1_2 = "can_b2"
    L0_2 = L0_2(L1_2)
    if 1 == L0_2 then
      L0_2 = UnlockPaintjob
      L1_2 = "can_b2"
      L0_2(L1_2)
      L0_2 = DebugPrint
      L1_2 = "unlocked can_b2 paintjob"
      L0_2(L1_2)
    else
      L0_2 = IsPaintJobLocked
      L1_2 = "can_b3"
      L0_2 = L0_2(L1_2)
      if 1 == L0_2 then
        L0_2 = UnlockPaintjob
        L1_2 = "can_b3"
        L0_2(L1_2)
        L0_2 = DebugPrint
        L1_2 = "unlocked can_b3 paintjob"
        L0_2(L1_2)
      else
        L0_2 = IsPaintJobLocked
        L1_2 = "can_b4"
        L0_2 = L0_2(L1_2)
        if 1 == L0_2 then
          L0_2 = UnlockPaintjob
          L1_2 = "can_b4"
          L0_2(L1_2)
          L0_2 = DebugPrint
          L1_2 = "unlocked can_b4 paintjob"
          L0_2(L1_2)
        else
          L0_2 = IsPaintJobLocked
          L1_2 = "can_c1"
          L0_2 = L0_2(L1_2)
          if 1 == L0_2 then
            L0_2 = UnlockPaintjob
            L1_2 = "can_c1"
            L0_2(L1_2)
            L0_2 = DebugPrint
            L1_2 = "unlocked can_c1 paintjob"
            L0_2(L1_2)
          else
            L0_2 = IsPaintJobLocked
            L1_2 = "can_c2"
            L0_2 = L0_2(L1_2)
            if 1 == L0_2 then
              L0_2 = UnlockPaintjob
              L1_2 = "can_c2"
              L0_2(L1_2)
              L0_2 = DebugPrint
              L1_2 = "unlocked can_c2 paintjob"
              L0_2(L1_2)
            else
              L0_2 = IsPaintJobLocked
              L1_2 = "can_c3"
              L0_2 = L0_2(L1_2)
              if 1 == L0_2 then
                L0_2 = UnlockPaintjob
                L1_2 = "can_c3"
                L0_2(L1_2)
                L0_2 = DebugPrint
                L1_2 = "unlocked can_c3 paintjob"
                L0_2(L1_2)
              else
                L0_2 = IsPaintJobLocked
                L1_2 = "can_c4"
                L0_2 = L0_2(L1_2)
                if 1 == L0_2 then
                  L0_2 = UnlockPaintjob
                  L1_2 = "can_c4"
                  L0_2(L1_2)
                  L0_2 = DebugPrint
                  L1_2 = "unlocked can_c4 paintjob"
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
  L1_2 = "mcq_bumper10"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side10"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler10"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "bumper10, side10 and spoiler10"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_03_BR = L0_1
