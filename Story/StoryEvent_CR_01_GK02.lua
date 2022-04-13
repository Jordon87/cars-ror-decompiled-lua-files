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
  L0_2 = UnlockPaintjob
  L1_2 = "gui_b"
  L0_2(L1_2)
  L0_2 = UnlockWheelset
  L1_2 = "mcq_wheelset_15C"
  L0_2(L1_2)
  L0_2 = UnlockWheelset
  L1_2 = "mcq_wheelset_20D"
  L0_2(L1_2)
  L0_2 = DebugPrint
  L1_2 = "Unlocked gui_b wheelset15c and wheelset20d"
  L0_2(L1_2)
end
L0_1.onPlaced = L1_1
function L1_1()
  local L0_2, L1_2
  L0_2 = DebugPrint
  L1_2 = "onFirst()"
  L0_2(L1_2)
  L0_2 = StoryEvent_CR_01_GK02
  L0_2 = L0_2.onPlaced
  L0_2()
end
L0_1.onFirst = L1_1
function L1_1()
  local L0_2, L1_2
end
L0_1.onCutsceneFinished = L1_1
StoryEvent_CR_01_GK02 = L0_1
