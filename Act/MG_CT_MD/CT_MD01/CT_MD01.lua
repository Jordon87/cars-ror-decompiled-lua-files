local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\MG_CT_MD\\MG_CT_MD"
L0_1(L1_1)
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = State_Results
  if A1_2 == L2_2 then
    L2_2 = PushMenu
    L3_2 = "Results"
    L2_2(L3_2)
  else
    L2_2 = State_PostEvent
    if A1_2 == L2_2 then
      L2_2 = PushPostEvent
      L2_2()
    end
  end
end
L0_1.ChangedState = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A1_2 == "StateChange_Intro" then
    L2_2 = GetDifficulty
    L2_2 = L2_2()
    if L2_2 == "easy" then
      L3_2 = MaterdorMinigame
      L4_2 = L3_2
      L3_2 = L3_2.ApplySettings
      L5_2 = A0_2.EasySettings
      L3_2(L4_2, L5_2)
    elseif L2_2 == "normal" then
      L3_2 = MaterdorMinigame
      L4_2 = L3_2
      L3_2 = L3_2.ApplySettings
      L5_2 = A0_2.MediumSettings
      L3_2(L4_2, L5_2)
    elseif L2_2 == "hard" then
      L3_2 = MaterdorMinigame
      L4_2 = L3_2
      L3_2 = L3_2.ApplySettings
      L5_2 = A0_2.HardSettings
      L3_2(L4_2, L5_2)
    else
      L3_2 = DebugPrint
      L4_2 = "INVALID DIFFICULTY SETTINGS FOR MATERDOR!"
      L3_2(L4_2)
      L3_2 = MaterdorMinigame
      L4_2 = L3_2
      L3_2 = L3_2.ApplySettings
      L5_2 = A0_2.EasySettings
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = MaterdorMinigame
  L3_2 = L2_2
  L2_2 = L2_2.EventHandler
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.EventHandler = L1_1
L1_1 = {}
L1_1.TripleChargeDuration = 3
L2_1 = {}
L2_1.Start = 1.5
L2_1.End = 2.5
L1_1.TripleChargeDodgeWindow = L2_1
L2_1 = {}
L2_1.AngerBoostPerTaunt = 33.34
L2_1.TauntInputTimeout = 8
L2_1.TractorChargeDuration = 3
L2_1.TractorChargeDodgePromptTime = 1
L2_1.MediumThreshold = 33
L2_1.HardThreshold = 66
L2_1.AngerRequired = 100
L2_1.PointsPerEasyTaunt = 100
L2_1.PointsPerMediumTaunt = 200
L2_1.PointsPerHardTaunt = 500
L2_1.TargetBreakPoints = 1000
L2_1.TargetBreakAnger = 50
L2_1.DodgePoints = 0
L2_1.ChargeWarningThreshold = 50
L2_1.ChargeDangerThreshold = 25
L2_1.CharacterPositionToy = "CharacterPosition01"
L3_1 = {}
L3_1.AngerBoostPerTaunt = 33.34
L3_1.TauntInputTimeout = 8
L3_1.TractorChargeDuration = 3
L3_1.TractorChargeDodgePromptTime = 1
L3_1.MediumThreshold = 33
L3_1.HardThreshold = 66
L3_1.AngerRequired = 100
L3_1.PointsPerEasyTaunt = 100
L3_1.PointsPerMediumTaunt = 200
L3_1.PointsPerHardTaunt = 500
L3_1.TargetBreakPoints = 1000
L3_1.TargetBreakAnger = 50
L3_1.DodgePoints = 0
L3_1.ChargeWarningThreshold = 50
L3_1.ChargeDangerThreshold = 25
L3_1.CharacterPositionToy = "CharacterPosition02"
L4_1 = {}
L4_1.AngerBoostPerTaunt = 33.34
L4_1.TauntInputTimeout = 8
L4_1.TractorChargeDuration = 3
L4_1.TractorChargeDodgePromptTime = 1
L4_1.MediumThreshold = 33
L4_1.HardThreshold = 66
L4_1.AngerRequired = 100
L4_1.PointsPerEasyTaunt = 100
L4_1.PointsPerMediumTaunt = 200
L4_1.PointsPerHardTaunt = 500
L4_1.TargetBreakPoints = 1000
L4_1.TargetBreakAnger = 50
L4_1.DodgePoints = 0
L4_1.ChargeWarningThreshold = 50
L4_1.ChargeDangerThreshold = 25
L4_1.CharacterPositionToy = "CharacterPosition03"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.EasySettings = L1_1
L1_1 = {}
L1_1.TripleChargeDuration = 3
L2_1 = {}
L2_1.Start = 1.5
L2_1.End = 2.5
L1_1.TripleChargeDodgeWindow = L2_1
L2_1 = {}
L2_1.AngerBoostPerTaunt = 33.4
L2_1.TauntInputTimeout = 6
L2_1.TractorChargeDuration = 3
L2_1.TractorChargeDodgePromptTime = 1
L2_1.MediumThreshold = 100
L2_1.HardThreshold = 100
L2_1.AngerRequired = 50
L2_1.PointsPerEasyTaunt = 100
L2_1.PointsPerMediumTaunt = 200
L2_1.PointsPerHardTaunt = 300
L2_1.TargetBreakPoints = 1000
L2_1.TargetBreakAnger = 50
L2_1.DodgePoints = 0
L2_1.ChargeWarningThreshold = 50
L2_1.ChargeDangerThreshold = 25
L2_1.CharacterPositionToy = "CharacterPosition01"
L3_1 = {}
L3_1.AngerBoostPerTaunt = 33.4
L3_1.TauntInputTimeout = 5
L3_1.TractorChargeDuration = 2.5
L3_1.TractorChargeDodgePromptTime = 0.75
L3_1.MediumThreshold = 50
L3_1.HardThreshold = 75
L3_1.AngerRequired = 60
L3_1.PointsPerEasyTaunt = 100
L3_1.PointsPerMediumTaunt = 200
L3_1.PointsPerHardTaunt = 300
L3_1.TargetBreakPoints = 1000
L3_1.TargetBreakAnger = 50
L3_1.DodgePoints = 0
L3_1.ChargeWarningThreshold = 50
L3_1.ChargeDangerThreshold = 25
L3_1.CharacterPositionToy = "CharacterPosition02"
L4_1 = {}
L4_1.AngerBoostPerTaunt = 33.4
L4_1.TauntInputTimeout = 4
L4_1.TractorChargeDuration = 2.25
L4_1.TractorChargeDodgePromptTime = 0.5
L4_1.MediumThreshold = 25
L4_1.HardThreshold = 50
L4_1.AngerRequired = 70
L4_1.PointsPerEasyTaunt = 100
L4_1.PointsPerMediumTaunt = 200
L4_1.PointsPerHardTaunt = 300
L4_1.TargetBreakPoints = 1000
L4_1.TargetBreakAnger = 50
L4_1.DodgePoints = 0
L4_1.ChargeWarningThreshold = 50
L4_1.ChargeDangerThreshold = 25
L4_1.CharacterPositionToy = "CharacterPosition03"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.MediumSettings = L1_1
L1_1 = {}
L1_1.TripleChargeDuration = 3
L2_1 = {}
L2_1.Start = 1.5
L2_1.End = 2.5
L1_1.TripleChargeDodgeWindow = L2_1
L2_1 = {}
L2_1.AngerBoostPerTaunt = 33.4
L2_1.TauntInputTimeout = 6
L2_1.TractorChargeDuration = 3
L2_1.TractorChargeDodgePromptTime = 1
L2_1.MediumThreshold = 100
L2_1.HardThreshold = 100
L2_1.AngerRequired = 50
L2_1.PointsPerEasyTaunt = 100
L2_1.PointsPerMediumTaunt = 200
L2_1.PointsPerHardTaunt = 300
L2_1.TargetBreakPoints = 1000
L2_1.TargetBreakAnger = 50
L2_1.DodgePoints = 0
L2_1.ChargeWarningThreshold = 50
L2_1.ChargeDangerThreshold = 25
L2_1.CharacterPositionToy = "CharacterPosition01"
L3_1 = {}
L3_1.AngerBoostPerTaunt = 33.4
L3_1.TauntInputTimeout = 5
L3_1.TractorChargeDuration = 2.5
L3_1.TractorChargeDodgePromptTime = 0.75
L3_1.MediumThreshold = 50
L3_1.HardThreshold = 75
L3_1.AngerRequired = 60
L3_1.PointsPerEasyTaunt = 100
L3_1.PointsPerMediumTaunt = 200
L3_1.PointsPerHardTaunt = 300
L3_1.TargetBreakPoints = 1000
L3_1.TargetBreakAnger = 50
L3_1.DodgePoints = 0
L3_1.ChargeWarningThreshold = 50
L3_1.ChargeDangerThreshold = 25
L3_1.CharacterPositionToy = "CharacterPosition02"
L4_1 = {}
L4_1.AngerBoostPerTaunt = 33.4
L4_1.TauntInputTimeout = 4
L4_1.TractorChargeDuration = 2.25
L4_1.TractorChargeDodgePromptTime = 0.5
L4_1.MediumThreshold = 25
L4_1.HardThreshold = 50
L4_1.AngerRequired = 70
L4_1.PointsPerEasyTaunt = 100
L4_1.PointsPerMediumTaunt = 200
L4_1.PointsPerHardTaunt = 300
L4_1.TargetBreakPoints = 1000
L4_1.TargetBreakAnger = 50
L4_1.DodgePoints = 0
L4_1.ChargeWarningThreshold = 50
L4_1.ChargeDangerThreshold = 25
L4_1.CharacterPositionToy = "CharacterPosition03"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.HardSettings = L1_1
CT_MD01 = L0_1
