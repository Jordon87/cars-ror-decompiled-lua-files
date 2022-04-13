local L0_1, L1_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = setfenv
  L2_2 = 1
  L3_2 = EnvironmentStack
  L4_2 = EnvironmentDepth
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = PlayUISound
  L2_2 = UISoundEventUnlock_Asset
  L1_2(L2_2)
  L1_2 = PushMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
  L1_2 = IsEventOnCriticalPath
  L2_2 = "StoryEvent_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  if L1_2 == 1 then
    L1_2 = UnlockedPopup
    L2_2 = L1_2
    L1_2 = L1_2.UnlockedItem
    L3_2 = "GoldEvent"
    L4_2 = ""
    L5_2 = GetLocalizedString
    L6_2 = "ingameui"
    L7_2 = "STR_UNLOCK_GOLDEVENT"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = " "
    L7_2 = GetLocalizedString
    L8_2 = "EventInfo"
    L9_2 = "STR_"
    L10_2 = A0_2
    L11_2 = "_TITLE"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L7_2 = L7_2(L8_2, L9_2)
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = UnlockedPopup
    L2_2 = L1_2
    L1_2 = L1_2.UnlockedItem
    L3_2 = "NormalEvent"
    L4_2 = ""
    L5_2 = GetLocalizedString
    L6_2 = "ingameui"
    L7_2 = "STR_GLOBAL_UNLOCKS_3"
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = " "
    L7_2 = GetLocalizedString
    L8_2 = "EventInfo"
    L9_2 = "STR_"
    L10_2 = A0_2
    L11_2 = "_TITLE"
    L9_2 = L9_2 .. L10_2 .. L11_2
    L7_2 = L7_2(L8_2, L9_2)
    L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = RaiseMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
end
L0_1.onUnlockedEvent = L1_1
EventDatabase = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = setfenv
  L2_2 = 1
  L3_2 = EnvironmentStack
  L4_2 = EnvironmentDepth
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = PlayUISound
  L2_2 = UISoundEventUnlock_Asset
  L1_2(L2_2)
  L1_2 = PushMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
  L1_2 = UnlockedPopup
  L2_2 = L1_2
  L1_2 = L1_2.UnlockedItem
  L3_2 = "Parts"
  L4_2 = ""
  L5_2 = GetLocalizedString
  L6_2 = "ingameui"
  L7_2 = "STR_GLOBAL_UNLOCKS_5"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = " "
  L7_2 = GetLocalizedString
  L8_2 = "CommonUI"
  L9_2 = "STR_MCQ_NAME"
  L7_2 = L7_2(L8_2, L9_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = RaiseMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
end
L0_1.onUnlockedPart = L1_1
CustomParts = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = setfenv
  L2_2 = 1
  L3_2 = EnvironmentStack
  L4_2 = EnvironmentDepth
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = PlayUISound
  L2_2 = UISoundEventUnlock_Asset
  L1_2(L2_2)
  L1_2 = PushMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
  L1_2 = UnlockedPopup
  L2_2 = L1_2
  L1_2 = L1_2.UnlockedItem
  L3_2 = "PaintJobs"
  L4_2 = ""
  L5_2 = GetLocalizedString
  L6_2 = "ingameui"
  L7_2 = "STR_GLOBAL_UNLOCKS_2"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = " "
  L7_2 = GetLocalizedString
  L8_2 = "CommonUI"
  L9_2 = A0_2
  L7_2 = L7_2(L8_2, L9_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = RaiseMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
end
L0_1.onCollected = L1_1
PaintJobs = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = setfenv
  L2_2 = 1
  L3_2 = EnvironmentStack
  L4_2 = EnvironmentDepth
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = PlayUISound
  L2_2 = UISoundEventUnlock_Asset
  L1_2(L2_2)
  L1_2 = PushMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
  L1_2 = UnlockedPopup
  L2_2 = L1_2
  L1_2 = L1_2.UnlockedItem
  L3_2 = "WheelSets"
  L4_2 = ""
  L5_2 = GetLocalizedString
  L6_2 = "ingameui"
  L7_2 = "STR_GLOBAL_UNLOCKS_1"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 .. L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = RaiseMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
end
L0_1.onCollected = L1_1
WheelSets = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = setfenv
  L2_2 = 1
  L3_2 = EnvironmentStack
  L4_2 = EnvironmentDepth
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = PlayUISound
  L2_2 = UISoundEventUnlock_Asset
  L1_2(L2_2)
  L1_2 = PushMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
  L1_2 = UnlockedPopup
  L2_2 = L1_2
  L1_2 = L1_2.UnlockedItem
  L3_2 = "Characters"
  L4_2 = ""
  L5_2 = GetLocalizedString
  L6_2 = "ingameui"
  L7_2 = "STR_GLOBAL_UNLOCKS_4"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = " "
  L7_2 = GetLocalizedString
  L8_2 = "CommonUI"
  L9_2 = "STR_"
  L10_2 = A0_2
  L11_2 = "_NAME"
  L9_2 = L9_2 .. L10_2 .. L11_2
  L7_2 = L7_2(L8_2, L9_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = RaiseMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
end
L0_1.onUnlockedVehicle = L1_1
VehicleDatabase = L0_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = setfenv
  L2_2 = 1
  L3_2 = EnvironmentStack
  L4_2 = EnvironmentDepth
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = PlayUISound
  L2_2 = UISoundEventUnlock_Asset
  L1_2(L2_2)
  L1_2 = PushMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
  L1_2 = UnlockedPopup
  L2_2 = L1_2
  L1_2 = L1_2.UnlockedItem
  L3_2 = "ConceptArt"
  L4_2 = ""
  L5_2 = GetLocalizedString
  L6_2 = "ingameui"
  L7_2 = "STR_GLOBAL_UNLOCKS_6"
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L4_2 .. L5_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = RaiseMenu
  L2_2 = "UnlockedPopup"
  L1_2(L2_2)
end
L0_1.onUnlockedConceptArt = L1_1
ConceptArt = L0_1
