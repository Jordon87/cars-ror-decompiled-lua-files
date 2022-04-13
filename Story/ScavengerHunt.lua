local L0_1, L1_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CutScene24"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = EnableToy
  L1_2 = "LuigiGarage"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = AwardBumperSticker
  L1_2 = "MonsterMcqueenScavenger"
  L0_2(L1_2)
end
L0_1.OnMcqueenFinished = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_UpdateStatus
  L1_2 = "StoryEvent_CutScene32"
  L2_2 = "Unlocked"
  L0_2(L1_2, L2_2)
  L0_2 = EnableToy
  L1_2 = "ScavengerHunt_2"
  L2_2 = 1
  L0_2(L1_2, L2_2)
  L0_2 = AwardBumperSticker
  L1_2 = "MonsterMaterScavenger"
  L0_2(L1_2)
end
L0_1.OnMaterFinished = L1_1
ScavengerHunt = L0_1
