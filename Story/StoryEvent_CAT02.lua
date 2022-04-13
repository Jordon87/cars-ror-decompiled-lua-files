local L0_1, L1_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onQuit()"
  L0_2(L1_2)
  L0_2 = SwitchStoryEvent
  L1_2 = "StoryEvent_Explore"
  L0_2(L1_2)
end
L0_1.onQuit = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onContinue()"
  L0_2(L1_2)
  L0_2 = SwitchStoryEvent
  L1_2 = "StoryEvent_Explore"
  L0_2(L1_2)
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
  L0_2 = DebugPrint
  L1_2 = "onPlaced()"
  L0_2(L1_2)
  L0_2 = StoryEvent_CAT02
  L0_2 = L0_2.onFailed
  L0_2()
end
L0_1.onPlaced = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onFirst()"
  L0_2(L1_2)
  L0_2 = UnlockPaintjob
  L1_2 = "mcqm_b"
  L0_2(L1_2)
  L0_2 = UnlockWheelset
  L1_2 = "mcq_wheelset_09A"
  L0_2(L1_2)
  L0_2 = UnlockWheelset
  L1_2 = "mcq_wheelset_18C"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "Unlocked mcqm_b"
  L0_2(L1_2)
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CAT02 = L0_1
