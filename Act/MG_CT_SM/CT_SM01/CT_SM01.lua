IncludeScript("C\\Act\\GlobalSettings")
CT_SM01 = {
  GestureSets = {
    "easy",
    "medium",
    "hard"
  },
  StuntPoints = {
    easy = 100,
    medium = 200,
    hard = 300
  },
  DrivingTime = 30,
  StuntTime = function(_ARG_0_, _ARG_1_)
    return math.max(math.min(8, _ARG_1_ * 0.05), 3)
  end,
  LandingTime = 6,
  SteeringAdjustment = function(_ARG_0_, _ARG_1_)
    return 0.1 * math.sin(_ARG_1_ * 0.3)
  end,
  DrivingPointAward = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ < 100 then
      return 0
    end
    return (RoundToNearest((_ARG_1_ - 100) * 2, 5))
  end,
  DrivingPointsTickFrequency = 500,
  DrivingScoreMultiplier = function(_ARG_0_, _ARG_1_)
    for _FORV_6_, _FORV_7_ in ipairs({
      {200, 8},
      {150, 6},
      {100, 4},
      {50, 2},
      {0, 1}
    }) do
      if _ARG_1_ > _FORV_7_[1] then
        return _FORV_7_[2]
      end
    end
  end,
  ShadowScale = {Min = 0.1, Max = 1},
  ControllerAccelScale = 1,
  ControllerDecelScale = 0.95,
  MaxControllerVel = 1.5,
  WobbleAmplitude = 1.2,
  WobbleFrequency = 1.4,
  LandingPointsTickFrequency = 500,
  LandingPointRegions = {
    {0.2, 100},
    {0.4, 75},
    {0.6, 50},
    {0.8, 25}
  },
  LandingMultiplierRegions = {
    {0.3, 3},
    {0.6, 2}
  },
  MinimumSpeed = 75,
  WallHitPenalty = 75,
  TimeSinceLastPointCheck = 0,
  ControllerVel = {x = 0, y = 0},
  CurrentPlayerIndex = 1,
  StuntMaterScript = function(_ARG_0_)
    EnableToy("CT_SM_BIGRAMP", 0)
    EnableToy("CT_SM_SMALLRAMP", 1)
    DebugPrint("Pre-Event State")
    _ARG_0_:WaitForEvent("Start")
    EnableToy("MTG_SM_CUTSCENE", 0)
    EnableToy("MCQS_SM_CUTSCENE", 0)
    EnableToy("StuntMTG", 0)
    EnableToy("StuntMCQS", 0)
    EnableToy("MTG_TOY_SMOKE", 0)
    EnableToy("MTG_TOY_FLAMES", 0)
    EnableToy("MCQS_TOY_SMOKE", 0)
    EnableToy("MCQS_TOY_FLAMES", 0)
    EnableToy("MTG_CS_SMOKE", 0)
    EnableToy("MCQS_CS_SMOKE", 0)
    StartPreviewState()
    PlayCameraAnimation("FlyingCamera", "Anim\\OpeningCamera01")
    PushMenu("PreEvent")
    _ARG_0_:WaitForEvent("LE_PREEVENT_FINISHED")
    if GetNumPlayers() == 2 then
    else
    end
    for _FORV_10_, _FORV_11_ in ipairs({"MTG"}) do
      _ARG_0_.CurrentPlayerIndex = _FORV_10_
      EnableToy("MTG_SM_CUTSCENE", 0)
      EnableToy("MCQS_SM_CUTSCENE", 0)
      EnableToy("StuntMTG", 0)
      EnableToy("StuntMCQS", 0)
      EnableToy("CT_SM_BIGRAMP", 0)
      EnableToy("CT_SM_SMALLRAMP", 1)
      EnableToy(_FORV_11_ .. "_SM_CUTSCENE", 1)
      if _FORV_11_ == "MTG" then
        _ARG_0_:Wait(0.5)
        PlayQueuedDialogue("MTG", "Announcement", "CT_SMstart", 10)
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MAT_RAMPSTART")
      else
        _ARG_0_:Wait(0.5)
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MCQS_RAMPSTART")
      end
      EnableToy(_FORV_11_ .. "_SM_CUTSCENE", 0)
      EnableToy("CT_SM_BIGRAMP", 1)
      EnableToy("CT_SM_SMALLRAMP", 0)
      SetPlayerPosition("Player1Start")
      StartCountdownState()
      _ARG_0_:Wait(3)
      SetHUD("HUD_StuntMater_1")
      ShowHUD()
      TurnOnNitro()
      StartDrivingState()
      if _ARG_0_:WaitForMultipleEvents({
        "TriggerUpdate",
        "DrivingTimerExpired"
      }) == "TriggerUpdate" then
      end
      EndDrivingState()
      HideHUD()
      EnableToy("CT_SM_BIGRAMP", 0)
      EnableToy("CT_SM_SMALLRAMP", 1)
      EnableToy(_FORV_11_ .. "_SM_CUTSCENE", 1)
      EnableToy(_FORV_11_ .. "_TOY_SMOKE", 1)
      EnableToy(_FORV_11_ .. "_TOY_FLAMES", 1)
      if _FORV_11_ == "MTG" then
        PlayQueuedDialogue("MTG", "Announcement", "OffRamp", 10)
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MAT_RAMPTOAIR")
      else
        PlayQueuedDialogue("MCQS", "Announcement", "OffRamp", 10)
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MCQS_RAMPTOAIR")
      end
      EnableToy(_FORV_11_ .. "_SM_CUTSCENE", 0)
      EnableToy("Stunt" .. _FORV_11_, 1)
      PlayCameraAnimation("FlyingCamera", "Anim\\FlyingCamera")
      SetHUD("HUD_StuntMater_2")
      StartStuntState()
      if "x360_wheel" == "x360_wheel" then
      end
      _ARG_0_:SetGestureTimer(_ARG_0_:StuntTime((GetPlayerSpeed())) * GlobalSettings.WheelTimeExtend)
      _ARG_0_:PromptForGesture(GlobalSettings.Gestures.x360_wheel.easy[math.random(#GlobalSettings.Gestures.x360_wheel.easy)])
      while 0 < 3 and _ARG_0_:WaitForMultipleEvents({
        "Gesture_Timer",
        "PerformedGesture"
      }) == "PerformedGesture" do
        PlaySoundEffect("SFX\\Activities\\GesturePass")
        if 0 + 1 == 1 then
        else
        end
        setvar("CurrentScore", getvar("CurrentScore") + _ARG_0_.StuntPoints[_ARG_0_.GestureSets[0 + 1]])
        if _ARG_0_.CurrentPlayerIndex == 1 then
          setvar("StuntScore", getvar("StuntScore") + _ARG_0_.StuntPoints[_ARG_0_.GestureSets[0 + 1]])
        else
          setvar("StuntScore2", getvar("StuntScore2") + _ARG_0_.StuntPoints[_ARG_0_.GestureSets[0 + 1]])
        end
        SetEventTimer("GestureDelay", 0.5)
        if _ARG_0_:WaitForMultipleEvents({
          "GestureDelay",
          "Gesture_Timer"
        }) == "Gesture_Timer" then
          break
        elseif 0 + 1 < 3 then
          _ARG_0_:PromptForGesture(GlobalSettings.Gestures.x360_wheel.hard[math.random(#GlobalSettings.Gestures.x360_wheel.hard)])
        end
      end
      if 0 + 1 == 3 then
        PlaySoundEffect("SFX\\Activities\\StuntPass")
        _ARG_0_:PlayDialogueAndWait("Stunt" .. _FORV_11_, _FORV_11_ .. "_BEFT_STUNT" .. math.random(8))
      else
        PlaySoundEffect("SFX\\Activities\\GestureFail")
        PlaySoundEffect("SFX\\Activities\\StuntFail")
        _ARG_0_:PlayCharacterAnimationAndWait("Stunt" .. _FORV_11_, _FORV_11_ .. "_BEFT_STUNT9")
      end
      HideHUD()
      EndStuntState()
      EnableToy(_FORV_11_ .. "_TOY_SMOKE", 0)
      EnableToy(_FORV_11_ .. "_TOY_FLAMES", 0)
      if _FORV_11_ == "MTG" then
        PlayQueuedDialogue("StuntMTG", "Announcement", "TricksToLand", 10)
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MAT_AIRTRICKSTOLANDING")
      else
        PlayQueuedDialogue("StuntMCQS", "Announcement", "TricksToLand", 10)
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MCQ_AIRTRICKSTOLANDING")
      end
      PlayCameraAnimation("LandingCamera", "Anim\\LandingCamera")
      SetHUD("HUD_StuntMater_3")
      StartLandingState()
      PlaySoundEffect("SFX\\MG\\planecrash")
      SetEventTimer("LandingTimerExpired", _ARG_0_.LandingTime)
      _ARG_0_:WaitForEvent("LandingTimerExpired")
      HideHUD()
      if _ARG_0_.CurrentPlayerIndex == 1 then
        setvar("LandingMultiplier", (_ARG_0_:GetLandingMultiplier()))
      else
        setvar("LandingMultiplier2", (_ARG_0_:GetLandingMultiplier()))
      end
      EndLandingState()
      PlayCameraAnimation("LandingFinishedCamera", "Anim\\LandingFinishedCamera")
      StopSoundEffect("SFX\\MG\\planecrash")
      StartFinishedLandingState()
      _ARG_0_:Wait(1)
      if _FORV_11_ == "MTG" then
        PlayQueuedDialogue("MTG", "Announcement", "HitTarget", 10)
      else
        PlayQueuedDialogue("MCQS", "Announcement", "HitTarget", 10)
      end
      _ARG_0_:Wait(2)
      PlayCameraAnimation("EndlevelCamera", "Anim\\EndlevelCamera")
      if _FORV_11_ == "MTG" then
        _ARG_0_:Wait(0.5)
        _ARG_0_:PlayDialogueAndWait("MIAS", "MIAS_BEFT_CTSMMAT", "MIAS_BEFT_CTSMMAT")
        _ARG_0_:Wait(0.5)
        _ARG_0_:PlayDialogueAndWait("TIAS", "TIAS_BEFT_CTSMMAT", "TIAS_BEFT_CTSMMAT")
      else
        _ARG_0_:Wait(0.5)
        _ARG_0_:PlayDialogueAndWait("MIAS", "MIAS_BEFT_CTSMMCQ", "MIAS_BEFT_CTSMMCQ")
        _ARG_0_:Wait(0.5)
        _ARG_0_:PlayDialogueAndWait("TIAS", "TIAS_BEFT_CTSMMCQ", "TIAS_BEFT_CTSMMCQ")
      end
      HideHUD()
      EndFinishedLandingState()
    end
  end,
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_Results then
      PushMenu("Results")
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    _ARG_0_:ProcessEvent(_ARG_1_)
  end,
  Restart = function(_ARG_0_)
    _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.StuntMaterScript)
    coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
  end,
  ChooseStuntDifficulty = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
    DebugPrint("StuntsCompletedInDifficulty:" .. _ARG_1_ .. [[

TimeInDifficulty:]] .. _ARG_2_ .. [[

TotalAirtime:]] .. _ARG_3_ .. [[

AirtimeLeft:]] .. _ARG_4_ .. [[

Difficulty]] .. _ARG_5_ .. "\n")
    if _ARG_1_ > 2 and _ARG_5_ < _ARG_0_.Stunt_Hard then
      SelectNewStunt(_ARG_5_ + 1)
    else
      SelectNewStunt(_ARG_5_)
    end
  end,
  UpdateWindForces = function(_ARG_0_, _ARG_1_)
    SetVehicleSteeringOffset(_ARG_0_:SteeringAdjustment(_ARG_0_.DrivingTime - GetTimeRemaining("DrivingTimerExpired")))
  end,
  UpdateCursorPosition = function(_ARG_0_, _ARG_1_)
    for _FORV_8_, _FORV_9_ in ipairs({0.2, 0.5}) do
    end
    for _FORV_10_, _FORV_11_ in ipairs({0.6, 0.12}) do
    end
    if GetControllerCursorInput() * _ARG_0_.ControllerAccelScale * _ARG_1_ == 0 and GetControllerCursorInput() * _ARG_0_.ControllerAccelScale * _ARG_1_ == 0 then
      _ARG_0_.ControllerVel.x = _ARG_0_.ControllerVel.x * _ARG_0_.ControllerDecelScale
      _ARG_0_.ControllerVel.y = _ARG_0_.ControllerVel.y * _ARG_0_.ControllerDecelScale
    else
      _ARG_0_.ControllerVel.x = _ARG_0_.ControllerVel.x + GetControllerCursorInput() * _ARG_0_.ControllerAccelScale * _ARG_1_
      _ARG_0_.ControllerVel.y = _ARG_0_.ControllerVel.y + GetControllerCursorInput() * _ARG_0_.ControllerAccelScale * _ARG_1_
    end
    _ARG_0_.ControllerVel.x = math.max(math.min(_ARG_0_.ControllerVel.x, _ARG_0_.MaxControllerVel), -_ARG_0_.MaxControllerVel)
    _ARG_0_.ControllerVel.y = math.max(math.min(_ARG_0_.ControllerVel.y, _ARG_0_.MaxControllerVel), -_ARG_0_.MaxControllerVel)
    if 0 < GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_ and 0 <= GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_ then
    elseif 0 < GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_ and 0 > GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_ then
    elseif 0 > GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_ then
    elseif GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_ == 0 and 0 < GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_ then
    elseif GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_ == 0 and 0 > GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_ then
    end
    SetCursorPosition(math.max(math.min(math.sqrt((GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_) * (GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_) + (GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_) * (GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_)), 1), 0) * math.cos(3 * math.pi / 2), math.max(math.min(math.sqrt((GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_) * (GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_9_)) / #{0.2, 0.5} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.x * _ARG_1_) + (GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_) * (GetCursorPosition() + (math.max(math.min((0 + math.sin((_ARG_0_.LandingTime - GetTimeRemaining("LandingTimerExpired")) * _ARG_0_.WobbleFrequency * _FORV_11_)) / #{0.6, 0.12} * _ARG_0_.WobbleAmplitude, 1), -1) - GetCursorPosition()) * _ARG_1_ + _ARG_0_.ControllerVel.y * _ARG_1_)), 1), 0) * math.sin(3 * math.pi / 2))
    totalTime = _ARG_0_.LandingTime
    currentTime = GetTimeRemaining("LandingTimerExpired")
    SetShadowScale(_ARG_0_.ShadowScale.Min + (_ARG_0_.ShadowScale.Max - _ARG_0_.ShadowScale.Min) * ((totalTime - currentTime) / totalTime) ^ 2, _ARG_0_.ShadowScale.Min + (_ARG_0_.ShadowScale.Max - _ARG_0_.ShadowScale.Min) * ((totalTime - currentTime) / totalTime) ^ 2, _ARG_0_.ShadowScale.Min + (_ARG_0_.ShadowScale.Max - _ARG_0_.ShadowScale.Min) * ((totalTime - currentTime) / totalTime) ^ 2)
  end,
  UpdateLandingPoints = function(_ARG_0_, _ARG_1_)
    _ARG_0_.TimeSinceLastPointCheck = _ARG_0_.TimeSinceLastPointCheck + _ARG_1_
    if _ARG_0_.TimeSinceLastPointCheck * 1000 > _ARG_0_.LandingPointsTickFrequency then
      _ARG_0_.TimeSinceLastPointCheck = 0
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_.LandingPointRegions) do
        if math.sqrt(GetCursorPosition() * GetCursorPosition() + GetCursorPosition() * GetCursorPosition()) < _FORV_6_[1] then
          PlaySoundEffect("SFX\\Activities\\ADD_POINTS")
          if _ARG_0_.CurrentPlayerIndex == 1 then
            setvar("LandingScore", getvar("LandingScore") + _FORV_6_[2])
            break
          end
          setvar("LandingScore2", getvar("LandingScore2") + _FORV_6_[2])
          break
        end
      end
    end
  end,
  UpdateDrivingPoints = function(_ARG_0_, _ARG_1_)
    _ARG_0_.TimeSinceLastPointCheck = _ARG_0_.TimeSinceLastPointCheck + _ARG_1_
    if _ARG_0_.TimeSinceLastPointCheck * 1000 > _ARG_0_.DrivingPointsTickFrequency then
      _ARG_0_.TimeSinceLastPointCheck = 0
      if _ARG_0_:DrivingPointAward(GetPlayerSpeed()) ~= 0 then
        _ARG_0_.LastDrivingPointsAwarded = _ARG_0_:DrivingPointAward(GetPlayerSpeed())
        PlaySoundEffect("SFX\\Activities\\ADD_POINTS")
        ShowHoveringPoints(GetScreenPosition(GetPlayerPosition() + 10, GetPlayerPosition()) * 1280, GetScreenPosition(GetPlayerPosition() + 10, GetPlayerPosition()) * 720)
      else
        _ARG_0_.LastDrivingPointsAwarded = nil
      end
      setvar("CurrentScore", getvar("CurrentScore") + _ARG_0_:DrivingPointAward(GetPlayerSpeed()))
      if _ARG_0_.CurrentPlayerIndex == 1 then
        setvar("DrivingScore", getvar("DrivingScore") + _ARG_0_:DrivingPointAward(GetPlayerSpeed()))
      else
        setvar("DrivingScore2", getvar("DrivingScore2") + _ARG_0_:DrivingPointAward(GetPlayerSpeed()))
      end
    end
  end,
  GetLandingMultiplier = function(_ARG_0_)
    for _FORV_4_, _FORV_5_ in ipairs(_ARG_0_.LandingMultiplierRegions) do
      if math.sqrt(GetCursorPosition() * GetCursorPosition() + GetCursorPosition() * GetCursorPosition()) < _FORV_5_[1] then
        return _FORV_5_[2]
      end
    end
  end,
  DoHitWallPenalty = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_2_ > _ARG_0_.MinimumSpeed then
      ApplySpeedPenalty(2 + math.min(_ARG_1_ * _ARG_0_.WallHitPenalty, _ARG_2_ - _ARG_0_.MinimumSpeed))
    end
  end,
  PromptForGesture = function(_ARG_0_, _ARG_1_)
    DebugPrint(type(_ARG_1_))
    if type(_ARG_1_) == "table" then
      DebugPrint(_ARG_1_[1])
      DebugPrint(_ARG_1_[2])
      if _ARG_1_[2] == "LeftStick" then
        PromptForGesture(_ARG_1_[1], 1)
      else
        PromptForGesture(_ARG_1_[1], 2)
      end
    else
      PromptForGesture(_ARG_1_, 0)
    end
  end,
  TotalGestureTime = 1,
  SetGestureTimer = function(_ARG_0_, _ARG_1_)
    SetEventTimer("Gesture_Timer", _ARG_1_)
    _ARG_0_.TotalGestureTime = _ARG_1_
  end,
  CurrentWaitEvents = nil,
  ActivityCoroutine = nil,
  WaitForEvent = function(_ARG_0_, _ARG_1_)
    _ARG_0_.CurrentWaitEvents = {_ARG_1_}
    coroutine.yield()
    _ARG_0_.CurrentWaitEvents = nil
  end,
  WaitForMultipleEvents = function(_ARG_0_, _ARG_1_)
    _ARG_0_.CurrentWaitEvents = _ARG_1_
    event = coroutine.yield()
    _ARG_0_.CurrentWaitEvents = nil
    return event
  end,
  PlayCutsceneAndWait = function(_ARG_0_, _ARG_1_)
    PlayActivityCutscene(_ARG_1_, _ARG_1_)
    if _ARG_1_ == "CS_TRANS_MAT_RAMPTOAIR" then
      _ARG_0_:Wait(1)
      PlayQueuedDialogue("MTG", "Announcement", "MidAir", 10)
    elseif _ARG_1_ == "CS_TRANS_MCQS_RAMPTOAIR" then
      _ARG_0_:Wait(1)
      PlayQueuedDialogue("MCQS", "Announcement", "MidAir", 10)
    end
    _ARG_0_:WaitForEvent(_ARG_1_)
  end,
  PlayDialogueAndWait = function(_ARG_0_, _ARG_1_, _ARG_2_)
    PlayToyDialogueMotion(_ARG_1_, _ARG_2_, _ARG_2_)
    _ARG_0_:WaitForEvent(_ARG_2_)
  end,
  PlayCharacterAnimationAndWait = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
    SetCharacterAnimation(_ARG_1_, _ARG_2_, _ARG_2_, _ARG_3_)
    _ARG_0_:WaitForEvent(_ARG_2_)
  end,
  FadeOutScreenAndWait = function(_ARG_0_, _ARG_1_)
    FadeOutScreen(_ARG_1_)
    SetEventTimer("FadeOutScreen", _ARG_1_)
    _ARG_0_:WaitForEvent("FadeOutScreen")
  end,
  FadeInScreenAndWait = function(_ARG_0_, _ARG_1_)
    FadeInScreen(_ARG_1_)
    SetEventTimer("FadeInScreen", _ARG_1_)
    _ARG_0_:WaitForEvent("FadeInScreen")
  end,
  Wait = function(_ARG_0_, _ARG_1_)
    SetEventTimer("Wait" .. _ARG_1_, _ARG_1_)
    _ARG_0_:WaitForEvent("Wait" .. _ARG_1_)
  end,
  ProcessEvent = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.CurrentWaitEvents ~= nil then
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_.CurrentWaitEvents) do
        if _ARG_0_.CurrentWaitEvents[_FORV_5_] == _ARG_1_ then
          coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_1_)
        end
      end
    end
  end
}
CT_SM01.ActivityCoroutine = coroutine.create(CT_SM01.StuntMaterScript)
coroutine.resume(CT_SM01.ActivityCoroutine, CT_SM01)
function RoundToNearest(_ARG_0_, _ARG_1_)
  if _ARG_0_ - math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_ > math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_ + _ARG_1_ - _ARG_0_ then
    return math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_ + _ARG_1_
  else
    return math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_
  end
end
function GetGestureTime()
  return GetTimeRemaining("Gesture_Timer") / CT_SM01.TotalGestureTime
end
function GetCurrentPlayerIndex()
  return CT_SM01.CurrentPlayerIndex
end
function GetLastDrivingPoints()
  return CT_SM01.LastDrivingPointsAwarded or ""
end
