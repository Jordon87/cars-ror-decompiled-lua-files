IncludeScript("C\\Act\\MG_CT_MD\\MG_CT_MD")
CT_MD01 = {
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_Results then
      PushMenu("Results")
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == "StateChange_Intro" then
      if GetDifficulty() == "easy" then
        MaterdorMinigame:ApplySettings(_ARG_0_.EasySettings)
      elseif GetDifficulty() == "normal" then
        MaterdorMinigame:ApplySettings(_ARG_0_.MediumSettings)
      elseif GetDifficulty() == "hard" then
        MaterdorMinigame:ApplySettings(_ARG_0_.HardSettings)
      else
        DebugPrint("INVALID DIFFICULTY SETTINGS FOR MATERDOR!")
        MaterdorMinigame:ApplySettings(_ARG_0_.EasySettings)
      end
    end
    MaterdorMinigame:EventHandler(_ARG_1_)
  end,
  EasySettings = {
    TripleChargeDuration = 3,
    TripleChargeDodgeWindow = {Start = 1.5, End = 2.5},
    {
      AngerBoostPerTaunt = 33.34,
      TauntInputTimeout = 8,
      TractorChargeDuration = 3,
      TractorChargeDodgePromptTime = 1,
      MediumThreshold = 33,
      HardThreshold = 66,
      AngerRequired = 100,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 500,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition01"
    },
    {
      AngerBoostPerTaunt = 33.34,
      TauntInputTimeout = 8,
      TractorChargeDuration = 3,
      TractorChargeDodgePromptTime = 1,
      MediumThreshold = 33,
      HardThreshold = 66,
      AngerRequired = 100,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 500,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition02"
    },
    {
      AngerBoostPerTaunt = 33.34,
      TauntInputTimeout = 8,
      TractorChargeDuration = 3,
      TractorChargeDodgePromptTime = 1,
      MediumThreshold = 33,
      HardThreshold = 66,
      AngerRequired = 100,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 500,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition03"
    }
  },
  MediumSettings = {
    TripleChargeDuration = 3,
    TripleChargeDodgeWindow = {Start = 1.5, End = 2.5},
    {
      AngerBoostPerTaunt = 33.4,
      TauntInputTimeout = 6,
      TractorChargeDuration = 3,
      TractorChargeDodgePromptTime = 1,
      MediumThreshold = 100,
      HardThreshold = 100,
      AngerRequired = 50,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 300,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition01"
    },
    {
      AngerBoostPerTaunt = 33.4,
      TauntInputTimeout = 5,
      TractorChargeDuration = 2.5,
      TractorChargeDodgePromptTime = 0.75,
      MediumThreshold = 50,
      HardThreshold = 75,
      AngerRequired = 60,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 300,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition02"
    },
    {
      AngerBoostPerTaunt = 33.4,
      TauntInputTimeout = 4,
      TractorChargeDuration = 2.25,
      TractorChargeDodgePromptTime = 0.5,
      MediumThreshold = 25,
      HardThreshold = 50,
      AngerRequired = 70,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 300,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition03"
    }
  },
  HardSettings = {
    TripleChargeDuration = 3,
    TripleChargeDodgeWindow = {Start = 1.5, End = 2.5},
    {
      AngerBoostPerTaunt = 33.4,
      TauntInputTimeout = 6,
      TractorChargeDuration = 3,
      TractorChargeDodgePromptTime = 1,
      MediumThreshold = 100,
      HardThreshold = 100,
      AngerRequired = 50,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 300,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition01"
    },
    {
      AngerBoostPerTaunt = 33.4,
      TauntInputTimeout = 5,
      TractorChargeDuration = 2.5,
      TractorChargeDodgePromptTime = 0.75,
      MediumThreshold = 50,
      HardThreshold = 75,
      AngerRequired = 60,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 300,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition02"
    },
    {
      AngerBoostPerTaunt = 33.4,
      TauntInputTimeout = 4,
      TractorChargeDuration = 2.25,
      TractorChargeDodgePromptTime = 0.5,
      MediumThreshold = 25,
      HardThreshold = 50,
      AngerRequired = 70,
      PointsPerEasyTaunt = 100,
      PointsPerMediumTaunt = 200,
      PointsPerHardTaunt = 300,
      TargetBreakPoints = 1000,
      TargetBreakAnger = 50,
      DodgePoints = 0,
      ChargeWarningThreshold = 50,
      ChargeDangerThreshold = 25,
      CharacterPositionToy = "CharacterPosition03"
    }
  }
}
