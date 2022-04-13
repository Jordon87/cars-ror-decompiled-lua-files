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
  L1_2 = "StoryEvent_CR_05_BR"
  L0_2 = L0_2(L1_2)
  L1_2 = StoryEventStatus
  L2_2 = "first"
  L1_2 = L1_2(L2_2)
  if L0_2 >= L1_2 then
    L0_2 = StoryEvent_GetStatus
    L1_2 = "StoryEvent_CS_26"
    L0_2 = L0_2(L1_2)
    if L0_2 ~= 6 then
      L0_2 = SwitchStoryEvent
      L1_2 = "StoryEvent_CS_26"
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
  L1_2 = "onUnlocked(UnlockVehicle(\"Elm\"))"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_MT01)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_RB_SM03)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_GK02)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_GK03)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_SC01)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_AX03)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_CAT03)"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_PP03)"
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
  L0_2 = UnlockVehicle
  L1_2 = "Elm"
  L0_2(L1_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_GK02"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_MT01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_RB_SM03"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_GK03"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_SC01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_AX03"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CAT03"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_HUB_PP03"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_TR03"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked el machismo"
  L0_2(L1_2)
  L0_2 = IsPaintJobLocked
  L1_2 = "elm_b1"
  L0_2 = L0_2(L1_2)
  if 1 == L0_2 then
    L0_2 = UnlockPaintjob
    L1_2 = "elm_b1"
    L0_2(L1_2)
    L0_2 = DebugPrint
    L1_2 = "unlocked elm_b1 paintjob"
    L0_2(L1_2)
  else
    L0_2 = IsPaintJobLocked
    L1_2 = "elm_b2"
    L0_2 = L0_2(L1_2)
    if 1 == L0_2 then
      L0_2 = UnlockPaintjob
      L1_2 = "elm_b2"
      L0_2(L1_2)
      L0_2 = DebugPrint
      L1_2 = "unlocked elm_b2 paintjob"
      L0_2(L1_2)
    else
      L0_2 = IsPaintJobLocked
      L1_2 = "elm_b3"
      L0_2 = L0_2(L1_2)
      if 1 == L0_2 then
        L0_2 = UnlockPaintjob
        L1_2 = "elm_b3"
        L0_2(L1_2)
        L0_2 = DebugPrint
        L1_2 = "unlocked elm_b3 paintjob"
        L0_2(L1_2)
      else
        L0_2 = IsPaintJobLocked
        L1_2 = "elm_b4"
        L0_2 = L0_2(L1_2)
        if 1 == L0_2 then
          L0_2 = UnlockPaintjob
          L1_2 = "elm_b4"
          L0_2(L1_2)
          L0_2 = DebugPrint
          L1_2 = "unlocked elm_b4 paintjob"
          L0_2(L1_2)
        else
          L0_2 = IsPaintJobLocked
          L1_2 = "elm_c1"
          L0_2 = L0_2(L1_2)
          if 1 == L0_2 then
            L0_2 = UnlockPaintjob
            L1_2 = "elm_c1"
            L0_2(L1_2)
            L0_2 = DebugPrint
            L1_2 = "unlocked elm_c1 paintjob"
            L0_2(L1_2)
          else
            L0_2 = IsPaintJobLocked
            L1_2 = "elm_c2"
            L0_2 = L0_2(L1_2)
            if 1 == L0_2 then
              L0_2 = UnlockPaintjob
              L1_2 = "elm_c2"
              L0_2(L1_2)
              L0_2 = DebugPrint
              L1_2 = "unlocked elm_c2 paintjob"
              L0_2(L1_2)
            else
              L0_2 = IsPaintJobLocked
              L1_2 = "elm_c3"
              L0_2 = L0_2(L1_2)
              if 1 == L0_2 then
                L0_2 = UnlockPaintjob
                L1_2 = "elm_c3"
                L0_2(L1_2)
                L0_2 = DebugPrint
                L1_2 = "unlocked elm_c3 paintjob"
                L0_2(L1_2)
              else
                L0_2 = IsPaintJobLocked
                L1_2 = "elm_c4"
                L0_2 = L0_2(L1_2)
                if 1 == L0_2 then
                  L0_2 = UnlockPaintjob
                  L1_2 = "elm_c4"
                  L0_2(L1_2)
                  L0_2 = DebugPrint
                  L1_2 = "unlocked elm_c4 paintjob"
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
  L1_2 = "mcq_bumper16"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side16"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler18"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked bumper 16, side 16 and spoiler 18"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked El Machismo"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_05_BR = L0_1
