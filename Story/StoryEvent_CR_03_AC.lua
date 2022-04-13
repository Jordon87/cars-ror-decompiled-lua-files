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
  L1_2 = "onUnlocked(StoryEvent_CR_03_BR)"
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
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CR_03_BR"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
end
L0_1.onPlaced = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = StoryEvent_CR_03_AC
  L0_2 = L0_2.onPlaced
  L0_2()
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = UnlockPart
  L1_2 = "mcq_bumper09"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_side09"
  L0_2(L1_2)
  L0_2 = UnlockPart
  L1_2 = "mcq_spoiler09"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "unlocked bumper09, side09 and spoiler09"
  L0_2(L1_2)
end
L0_1.onCollectedAllBonusBolts = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_03_AC = L0_1
