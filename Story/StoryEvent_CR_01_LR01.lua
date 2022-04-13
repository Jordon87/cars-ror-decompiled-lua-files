local L0_1, L1_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatusSilent
  L1_2 = "StoryEvent_CR_01_EX"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_GetStatus
  L1_2 = "StoryEvent_CS_02"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= 6 then
    L0_2 = SwitchStoryEvent
    L1_2 = "StoryEvent_CS_02"
    L0_2(L1_2)
  else
    L0_2 = SwitchStoryEvent
    L1_2 = "StoryEvent_CR_01_EX"
    L0_2(L1_2)
  end
end
L0_1.onQuit = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = StoryEvent_GetStatus
  L1_2 = "StoryEvent_CS_02"
  L0_2 = L0_2(L1_2)
  if L0_2 ~= 6 then
    L0_2 = SwitchStoryEvent
    L1_2 = "StoryEvent_CS_02"
    L0_2(L1_2)
  else
    L0_2 = SwitchStoryEvent
    L1_2 = "StoryEvent_CR_01_EX"
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
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_01_EX"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
end
L0_1.onFailed = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_01_EX"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_JD01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
end
L0_1.onPlaced = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_01_EX"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_JD01"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UnlockPart
  L1_2 = "mcq_bumper02"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side02"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler02"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_01_LR01 = L0_1
