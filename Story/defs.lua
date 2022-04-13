local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_GetStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StoryEventStatus
  L3_2 = "First"
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
FirstInEvent = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_GetStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StoryEventStatus
  L3_2 = "First"
  L2_2 = L2_2(L3_2)
  if L1_2 ~= L2_2 then
    L1_2 = StoryEvent_GetStatus
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = StoryEventStatus
    L3_2 = "Placed"
    L2_2 = L2_2(L3_2)
    if L1_2 ~= L2_2 then
      goto lbl_20
    end
  end
  L1_2 = true
  do return L1_2 end
  goto lbl_22
  ::lbl_20::
  L1_2 = false
  do return L1_2 end
  ::lbl_22::
end
PlacedInEvent = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_GetStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StoryEventStatus
  L3_2 = "CutsceneFinished"
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
CutSceneFinished = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_UpdateStatus
  L2_2 = A0_2
  L3_2 = "Unlocked"
  L1_2(L2_2, L3_2)
end
UnlockEvent = L0_1
L0_1 = 0
DayTime = L0_1
L0_1 = 1
NightTime = L0_1
L0_1 = 200
NumBoltBanners = L0_1
