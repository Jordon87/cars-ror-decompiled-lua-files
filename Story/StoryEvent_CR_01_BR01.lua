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
  local L0_2, L1_2
  L0_2 = SwitchStoryEvent
  L1_2 = "StoryEvent_Explore"
  L0_2(L1_2)
end
L0_1.onContinue = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onUnlocked(StoryEvent_HUB_EX)"
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
  L0_2 = GetPlatform
  L0_2 = L0_2()
  if L0_2 == "ps2" then
    L0_2 = StoryEvent_UpdateStatus
    L1_2 = "StoryEvent_RS_EX"
    L2_2 = "Unlocked"
    L0_2(L1_2, L2_2)
    L0_2 = StoryEvent_UpdateStatus
    L1_2 = "StoryEvent_OV_EX"
    L2_2 = "Unlocked"
    L0_2(L1_2, L2_2)
    L0_2 = StoryEvent_UpdateStatus
    L1_2 = "StoryEvent_TF_EX"
    L2_2 = "Unlocked"
    L0_2(L1_2, L2_2)
  else
    L0_2 = StoryEvent_UpdateStatus
    L1_2 = "StoryEvent_HUB_EX"
    L2_2 = "Unlocked"
    L0_2(L1_2, L2_2)
  end
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_01_AX"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UnlockPart
  L1_2 = "mcq_bumper04"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side04"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler04"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked bumper04, side04 and spoiler04"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_01_BR01 = L0_1
