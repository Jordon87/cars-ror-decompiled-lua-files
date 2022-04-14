IncludeScript("C\\Act\\GlobalSettings.lua")
MaterdorMinigame = {
  CurrentWaitEvents = nil,
  ApplySettings = function(_ARG_0_, _ARG_1_)
    _ARG_0_.MaterdorSettings = _ARG_1_
  end,
  GetDodgeTimerPercent = function(_ARG_0_)
    if _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].DodgeTime[_ARG_0_.Round] then
      if _ARG_0_.GestureSet == "x360_wheel" then
        return _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].DodgeTime[_ARG_0_.Round] / (_ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration * GlobalSettings.WheelTimeExtend) * 100
      else
        return _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].DodgeTime[_ARG_0_.Round] / _ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration * 100
      end
    else
      return GetPercentTimeRemaining("Gesture_Timer")
    end
  end,
  WaitForEvent = function(_ARG_0_, _ARG_1_)
    _ARG_0_.CurrentWaitEvents = {_ARG_1_}
    coroutine.yield()
    _ARG_0_.CurrentWaitEvents = nil
  end,
  WaitForMultipleEvents = function(_ARG_0_, _ARG_1_)
    _ARG_0_.CurrentWaitEvents = _ARG_1_
    _ARG_0_.CurrentWaitEvents = nil
    return (coroutine.yield())
  end,
  Wait = function(_ARG_0_, _ARG_1_)
    SetEventTimer("Wait" .. _ARG_1_, _ARG_1_)
    _ARG_0_:WaitForEvent("Wait" .. _ARG_1_)
  end,
  PlayCameraAnimationAndWait = function(_ARG_0_, _ARG_1_, _ARG_2_)
    PlayCameraAnimationWithCallback(_ARG_1_, _ARG_2_, _ARG_2_)
    _ARG_0_:WaitForEvent(_ARG_2_)
  end,
  PlayCharacterAnimationAndWait = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
    SetCharacterAnimation(_ARG_1_, _ARG_2_, _ARG_2_, _ARG_3_)
    _ARG_0_:WaitForEvent(_ARG_2_)
  end,
  PlayToyDialogueMotionAndWait = function(_ARG_0_, _ARG_1_, _ARG_2_)
    PlayToyDialogueMotion(characterName, _ARG_2_, _ARG_2_)
    _ARG_0_:WaitForEvent(_ARG_2_)
  end,
  PlayCutsceneAndWait = function(_ARG_0_, _ARG_1_)
    PlayActivityCutscene(_ARG_1_, _ARG_1_)
    _ARG_0_:WaitForEvent(_ARG_1_)
  end,
  FadeOutScreenAndWait = function(_ARG_0_, _ARG_1_)
    FadeOutScreen(_ARG_1_)
    SetEventTimer("FadeOutScreen" .. _ARG_1_, _ARG_1_)
    _ARG_0_:WaitForEvent("FadeOutScreen" .. _ARG_1_)
  end,
  FadeInScreenAndWait = function(_ARG_0_, _ARG_1_)
    FadeInScreen(_ARG_1_)
    SetEventTimer("FadeInScreen" .. _ARG_1_, _ARG_1_)
    _ARG_0_:WaitForEvent("FadeInScreen" .. _ARG_1_)
  end,
  PromptForTauntGesture = function(_ARG_0_)
    if _ARG_0_.BullAnger > _ARG_0_.MaterdorSettings[_ARG_0_.Round].HardThreshold then
      _ARG_0_:PromptForGesture("hard")
    elseif _ARG_0_.BullAnger > _ARG_0_.MaterdorSettings[_ARG_0_.Round].MediumThreshold then
      _ARG_0_:PromptForGesture("medium")
    else
      _ARG_0_:PromptForGesture("easy")
    end
  end,
  PromptForDodgeGesture = function(_ARG_0_)
    _ARG_0_:PromptForGesture("dodge")
  end,
  PromptForJumpGesture = function(_ARG_0_)
    _ARG_0_:PromptForGesture("jump")
  end,
  PromptForGesture = function(_ARG_0_, _ARG_1_)
    if type(GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])]) == "table" then
      DebugPrint(GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])][1])
      DebugPrint(GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])][2])
      if GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])][2] == "LeftStick" then
        PromptForGesture(GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])][1], 1)
      else
        PromptForGesture(GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])][1], 2)
      end
    else
      PromptForGesture(GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_][math.random(#GlobalSettings.Gestures[_ARG_0_.GestureSet][_ARG_1_])], 0)
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == "StateChange_Intro" then
      _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.MaterdorScript)
      coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
    end
    if _ARG_1_ ~= "Tick" then
      DebugPrint(_ARG_1_)
    end
    if _ARG_0_.CurrentWaitEvents ~= nil then
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_.CurrentWaitEvents) do
        if _ARG_0_.CurrentWaitEvents[_FORV_5_] == _ARG_1_ then
          coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_1_)
        end
      end
    end
  end,
  PlayerResults = {
    {
      TotalPoints = 0,
      RoundPoints = {},
      DodgeTime = {},
      JumpedTime = 0
    },
    {
      TotalPoints = 0,
      RoundPoints = {},
      DodgeTime = {},
      JumpTime = 0
    }
  },
  MaterdorSettings = nil,
  BullAnger = 0,
  Round = 1,
  NumPlayers = GetNumPlayers(),
  CurrentPlayer = 0,
  GestureSet = GetPlatform(),
  MaterdorScript = function(_ARG_0_)
    DebugPrint("Materdor Activity Start!")
    PushInputStack()
    SetPlayerInputEnabled(0, 0)
    SetPlayerInputEnabled(1, 0)
    SetHUD("")
    _ARG_0_:FadeOutScreenAndWait(0.001)
    EnableToy("MTD", 0)
    ClearParticles()
    if _ARG_0_.GestureSet == "ps3" and SixAxisEnabled() then
      _ARG_0_.GestureSet = "sixaxis"
    end
    if (_ARG_0_.GestureSet == "x360" or _ARG_0_.GestureSet == "x360_wheel") and GetControllerConfig(1) == 2 then
      _ARG_0_.GestureSet = "x360_wheel"
    end
    _ARG_0_.Round = 1
    _ARG_0_.BullAnger = 0
    _ARG_0_.PlayerResults = {
      {
        TotalPoints = 0,
        RoundPoints = {},
        DodgeTime = {},
        JumpedTime = 0
      },
      {
        TotalPoints = 0,
        RoundPoints = {},
        DodgeTime = {},
        JumpTime = 0
      }
    }
    _ARG_0_:DisableAllToys()
    SetToyPositionByMatrixToy("wallSmashStandIn01", "Bullseye01")
    SetToyPositionByMatrixToy("wallSmashStandIn02", "Bullseye02")
    SetToyPositionByMatrixToy("wallSmashStandIn03", "Bullseye03")
    _ARG_0_:PlayCameraAnimationAndWait("TauntingCamera01", "Anim\\OpeningCamera")
    _ARG_0_:FadeInScreenAndWait(0.5)
    EnableToy("MTD", 1)
    PlayQueuedDialogue("MTD", "StartTheEvent", "MG_CT_TD", 10)
    _ARG_0_:PlayCutsceneAndWait("CS_TRANS_MTDINTRO")
    _ARG_0_:Wait(0.5)
    PopInputStack()
    PushMenu("PreEvent")
    _ARG_0_:WaitForEvent("LE_PREEVENT_FINISHED")
    if getvar("NeedToDisplayTutorial") == 1 then
      RaiseTutorial("CT_MD01")
      setvar("NeedToDisplayTutorial", 0)
    end
    _ARG_0_:Wait(0.5)
    EnableToy("MTD", 0)
    EnableToy("BUL1", 1)
    _ARG_0_:PlayCutsceneAndWait("CS_TRANS_BULLINTRO")
    while _ARG_0_.Round <= #_ARG_0_.MaterdorSettings do
      ClearParticles()
      _ARG_0_.CurrentPlayer = getvar("CurrentPlayerIndex")
      _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].RoundPoints[_ARG_0_.Round] = 0
      SetHUD("")
      if HUD_Gestures_Points == nil then
        AddOverlay("HUD_Gestures_Points")
      end
      PushInputStack()
      SetPlayerInputEnabled(0, 0)
      SetPlayerInputEnabled(1, 0)
      _ARG_0_:FadeOutScreenAndWait(0.25)
      _ARG_0_:DisableAllToys()
      if _ARG_0_.CurrentPlayer == 1 then
      else
      end
      EnableToy("McqD", 1)
      SetCharacterAnimation("McqD", "McqD" .. "_BEFT_IDLE1", "", true)
      SetToyPositionByMatrixToy("McqD", _ARG_0_.MaterdorSettings[_ARG_0_.Round].CharacterPositionToy)
      EnableToy("wallSmashStandIn0" .. _ARG_0_.Round, 1)
      SetToyPositionByMatrixToy("BUL1", "TractorStartPosition")
      SetToyLookAtByMatrixToy("BUL1", "McqD")
      PlayCameraAnimation("TauntingCamera01", "Anim\\TauntingCamera" .. Make2DigitString(_ARG_0_.Round + 8))
      _ARG_0_:FadeInScreenAndWait(0.25)
      PopInputStack()
      _ARG_0_:SetGestureTimer(_ARG_0_.MaterdorSettings[_ARG_0_.Round].TauntInputTimeout)
      SetHUD("HUD_Materdor_1")
      _ARG_0_:PromptForTauntGesture()
      while _ARG_0_.BullAnger < 100 and 0 < GetTimeRemaining("Gesture_Timer") and _ARG_0_:WaitForMultipleEvents({
        "Gesture_Timer",
        "PerformedGesture"
      }) == "PerformedGesture" do
        DebugPrint(_ARG_0_.BullAnger)
        RemoveGesturePrompt()
        PlaySoundEffect("SFX\\Activities\\GesturePass")
        _ARG_0_.BullAnger = _ARG_0_.BullAnger + _ARG_0_.MaterdorSettings[_ARG_0_.Round].AngerBoostPerTaunt
        _ARG_0_:AwardPointsForTaunt(_ARG_0_.CurrentPlayer)
        SetEventTimer("TauntDelay", 0.5)
        _ARG_0_:WaitForEvent("TauntDelay")
        if _ARG_0_.BullAnger < 100 then
          _ARG_0_:PromptForTauntGesture()
        end
      end
      RemoveGesturePrompt()
      if _ARG_0_.BullAnger >= 100 then
        PlaySoundEffect("SFX\\MG\\CT_MD_TauntPass")
        _ARG_0_:PlayCharacterAnimationAndWait("McqD", "McqD" .. "_BEFT_TAUNT" .. math.random(8), false)
      end
      PlayCameraAnimation("TauntingCamera01", "Anim\\TauntingCamera" .. Make2DigitString(_ARG_0_.Round + 4))
      PlayQueuedDialogue("McqD", "Cool", nil, 10)
      _ARG_0_:PlayCharacterAnimationAndWait("BUL1", "BUL_BEFT_ANGER" .. math.random(8), true)
      SetHUD("HUD_Materdor_2")
      _ARG_0_:SetGestureTimer(_ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration)
      _ARG_0_:PlayCameraAnimationAndWait("TauntingCamera01", "Anim\\TauntingCamera" .. Make2DigitString(_ARG_0_.Round + 12))
      SetCharacterAnimation("BUL1", "BUL_BEFT_CHARGE", "", false)
      PlaySoundEffect("SFX\\MG\\CT_MD_Charge")
      EnableToy("BUL1_TreadDirt_L", 1)
      EnableToy("BUL1_TreadDirt_R", 1)
      EnableToy("BUL1_TreadDust_L", 1)
      EnableToy("BUL1_TreadDust_R", 1)
      if _ARG_0_.GestureSet == "x360_wheel" then
        MoveToyWithConstantAccel("BUL1", "CollidePoint0" .. _ARG_0_.Round, _ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration * GlobalSettings.WheelTimeExtend)
      else
        MoveToyWithConstantAccel("BUL1", "CollidePoint0" .. _ARG_0_.Round, _ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration)
      end
      _ARG_0_:PromptForDodgeGesture()
      if _ARG_0_:WaitForMultipleEvents({
        "Gesture_Timer",
        "PerformedGesture"
      }) == "PerformedGesture" then
        RemoveGesturePrompt()
        PlaySoundEffect("SFX\\MG\\CT_MD_DodgePass")
        PlayQueuedDialogue("McqD", "Announcement", "Dodge", 10)
        if GetCurrentGesturePrompt() == "FlickRight" or GetCurrentGesturePrompt() == "FlickRightStick" then
          SetCharacterAnimation("McqD", "McqD" .. "_BEFT_SIDESTEPR", "", false)
        else
          SetCharacterAnimation("McqD", "McqD" .. "_BEFT_SIDESTEPL", "", false)
        end
        _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].DodgeTime[_ARG_0_.Round] = GetTimeRemaining("Gesture_Timer")
        _ARG_0_:WaitForEvent("Gesture_Timer")
        StopSoundEffect("SFX\\MG\\CT_MD_Charge")
        EnableToy("McqD", 0)
        EnableToy("wallSmashStandIn01", 0)
        EnableToy("wallSmashStandIn02", 0)
        EnableToy("wallSmashStandIn03", 0)
        StopMovers()
        if _ARG_0_.BullAnger > _ARG_0_.MaterdorSettings[_ARG_0_.Round].TargetBreakAnger then
          EnableToyGroup("CS_TRANS_WALLHIT", true)
          _ARG_0_:PlayCutsceneAndWait("CS_TRANS_WALLHIT")
          _ARG_0_:AwardPointsForTargetBreak(_ARG_0_.CurrentPlayer)
        else
          EnableToyGroup("CS_TRANS_WALLHIT2", true)
          _ARG_0_:PlayCutsceneAndWait("CS_TRANS_WALLHIT2")
        end
        _ARG_0_:AwardPointsForDodge(_ARG_0_.CurrentPlayer)
        HideHUD()
        _ARG_0_:PlayCameraAnimationAndWait("TauntingCamera01", "Anim\\ReactionCamera")
        if "McqD" == "MTD" then
          characterName = "MIA_A"
          animName = "MIAM_BEFT_CTMDMAT" .. math.random(4)
          _ARG_0_:PlayToyDialogueMotionAndWait(characterName, animName, animName)
          characterName = "TIA_A"
          animName = "TIAM_BEFT_CTMDMAT" .. math.random(3)
          _ARG_0_:PlayToyDialogueMotionAndWait(characterName, animName, animName)
          _ARG_0_:Wait(1)
        else
          characterName = "MIA_A"
          animName = "MIAM_BEFT_CTMDMCQ" .. math.random(4)
          _ARG_0_:PlayToyDialogueMotionAndWait(characterName, animName, animName)
          characterName = "TIA_A"
          animName = "TIAM_BEFT_CTMDMCQ" .. math.random(3)
          _ARG_0_:PlayToyDialogueMotionAndWait(characterName, animName, animName)
          _ARG_0_:Wait(1)
        end
        ShowHUD()
        if 0 < _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].DodgeTime[_ARG_0_.Round] then
          _ARG_0_:AwardRoundPointsToTotal(_ARG_0_.CurrentPlayer)
        end
      else
        RemoveGesturePrompt()
        StopSoundEffect("sfx\\MG\\CT_MD_Charge")
        PlaySoundEffect("SFX\\MG\\CT_MD_DodgeFail")
        if "McqD" == "MTD" then
          PlayQueuedDialogue("MTD", "Hit", nil, 10)
        else
          PlayQueuedDialogue("MCQD", "Hit", nil, 10)
        end
        _ARG_0_:PlayCharacterAnimationAndWait("McqD", "McqD" .. "_BEFT_HIT1", false)
        _ARG_0_:PlayCameraAnimationAndWait("TauntingCamera01", "Anim\\ReactionCamera")
        characterName = "MIA_A"
        animName = "MIAM_BEFT_CTMDBULL" .. math.random(2)
        _ARG_0_:PlayToyDialogueMotionAndWait(characterName, animName, animName)
        _ARG_0_:Wait(0.5)
        characterName = "TIA_A"
        animName = "TIAM_BEFT_CTMDBULL" .. math.random(2)
        _ARG_0_:PlayToyDialogueMotionAndWait(characterName, animName, animName)
        _ARG_0_:Wait(1)
      end
      EnableToy("BUL1_TreadDirt_L", 0)
      EnableToy("BUL1_TreadDirt_R", 0)
      EnableToy("BUL1_TreadDust_L", 0)
      EnableToy("BUL1_TreadDust_R", 0)
      _ARG_0_.BullAnger = 0
      if _ARG_0_.Round == #_ARG_0_.MaterdorSettings then
        _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].RoundPoints[_ARG_0_.Round] = 0
        EnableToyGroup("CS_TRANS_WALLHIT", false)
        EnableToyGroup("CS_TRANS_WALLHIT2", false)
        HideHUD()
        _ARG_0_:PlayCutsceneAndWait("CS_TRANS_3BULLINTRO")
        ClearParticles()
        SetHUD("HUD_Materdor_3")
        EnableToy("BUL1", 1)
        EnableToy("BUL2", 1)
        EnableToy("BUL3", 1)
        SetToyPositionByMatrixToy("BUL1", "TripleChargeTractorPos01")
        SetToyPositionByMatrixToy("BUL2", "TripleChargeTractorPos02")
        SetToyPositionByMatrixToy("BUL3", "TripleChargeTractorPos03")
        _ARG_0_:PlayCameraAnimationAndWait("TauntingCamera01", "Anim\\OpeningCamera")
        SetCharacterAnimation("BUL1", "BUL_BEFT_CHARGE", "", true)
        SetCharacterAnimation("BUL2", "BUL_BEFT_CHARGE", "", true)
        SetCharacterAnimation("BUL3", "BUL_BEFT_CHARGE", "", true)
        SetToyPositionByMatrixToy("McqD", "PlayerOneTripleChargePosition")
        SetCharacterAnimation("McqD", "McqD" .. "_BEFT_IDLE1", "", true)
        if _ARG_0_.GestureSet == "x360_wheel" then
          MoveToyWithConstantAccel("BUL1", "TripleChargeTractorDest01", _ARG_0_.MaterdorSettings.TripleChargeDuration * GlobalSettings.WheelTimeExtend)
          MoveToyWithConstantAccel("BUL2", "TripleChargeTractorDest02", _ARG_0_.MaterdorSettings.TripleChargeDuration * GlobalSettings.WheelTimeExtend)
          MoveToyWithConstantAccel("BUL3", "TripleChargeTractorDest03", _ARG_0_.MaterdorSettings.TripleChargeDuration * GlobalSettings.WheelTimeExtend)
        else
          MoveToyWithConstantAccel("BUL1", "TripleChargeTractorDest01", _ARG_0_.MaterdorSettings.TripleChargeDuration)
          MoveToyWithConstantAccel("BUL2", "TripleChargeTractorDest02", _ARG_0_.MaterdorSettings.TripleChargeDuration)
          MoveToyWithConstantAccel("BUL3", "TripleChargeTractorDest03", _ARG_0_.MaterdorSettings.TripleChargeDuration)
        end
        _ARG_0_:SetGestureTimer(_ARG_0_.MaterdorSettings.TripleChargeDuration)
        SetEventTimer("TripleCharge_PromptStart", _ARG_0_.MaterdorSettings.TripleChargeDodgeWindow.Start)
        _ARG_0_:WaitForEvent("TripleCharge_PromptStart")
        _ARG_0_:PromptForJumpGesture()
        SetEventTimer("TripleCharge_PromptEnd", _ARG_0_.MaterdorSettings.TripleChargeDodgeWindow.End - _ARG_0_.MaterdorSettings.TripleChargeDodgeWindow.Start)
        RemoveGesturePrompt()
        if _ARG_0_:WaitForMultipleEvents({
          "TripleCharge_PromptEnd",
          "PerformedGesture"
        }) == "TripleCharge_PromptEnd" then
          _ARG_0_:WaitForEvent("Gesture_Timer")
          StopMovers()
          _ARG_0_:PlayCutsceneAndWait("CS_TRANS_" .. "McqD" .. "FAIL")
        else
          _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].TotalPoints = _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].TotalPoints + 1000
          _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].JumpTime = GetTimeRemaining("Gesture_Timer")
          SetCharacterAnimation("McqD", "McqD" .. "_BEFT_BULJUMP", "BULJUMP", false)
          _ARG_0_:WaitForMultipleEvents({
            "BULJUMP",
            "Gesture_Timer"
          })
          StopMovers()
          PlayQueuedDialogue("McqD", "Complete", "MG_CT_MD", 10)
          _ARG_0_:PlayCutsceneAndWait("CS_TRANS_" .. "McqD" .. "WIN")
          SetPlayerScore(_ARG_0_.CurrentPlayer - 1, _ARG_0_.PlayerResults[_ARG_0_.CurrentPlayer].TotalPoints)
        end
      end
      if _ARG_0_.CurrentPlayer < _ARG_0_.NumPlayers then
        DebugPrint("NumPlayers = " .. _ARG_0_.NumPlayers)
        setvar("CurrentPlayerIndex", _ARG_0_.CurrentPlayer + 1)
      else
        setvar("CurrentPlayerIndex", 1)
        _ARG_0_.Round = _ARG_0_.Round + 1
      end
    end
    AwardMaterdorBonusPoints(_ARG_0_.PlayerResults[1].TotalPoints)
    EndActivity()
  end,
  ActivityCoroutine = nil,
  GetPointsForTaunt = function(_ARG_0_)
    if _ARG_0_.BullAnger > _ARG_0_.MaterdorSettings[_ARG_0_.Round].HardThreshold then
      return _ARG_0_.MaterdorSettings[_ARG_0_.Round].PointsPerHardTaunt
    elseif _ARG_0_.BullAnger > _ARG_0_.MaterdorSettings[_ARG_0_.Round].MediumThreshold then
      return _ARG_0_.MaterdorSettings[_ARG_0_.Round].PointsPerMediumTaunt
    else
      return _ARG_0_.MaterdorSettings[_ARG_0_.Round].PointsPerEasyTaunt
    end
  end,
  AwardPointsForTaunt = function(_ARG_0_, _ARG_1_)
    _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] = _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] + _ARG_0_:GetPointsForTaunt()
    ShowPointsReceived((_ARG_0_:GetPointsForTaunt()))
  end,
  AwardPointsForDodge = function(_ARG_0_, _ARG_1_)
    _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] = _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] + _ARG_0_.MaterdorSettings[_ARG_0_.Round].DodgePoints
    ShowPointsReceived(_ARG_0_.MaterdorSettings[_ARG_0_.Round].DodgePoints)
  end,
  AwardPointsForTargetBreak = function(_ARG_0_, _ARG_1_)
    _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] = _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] + _ARG_0_.MaterdorSettings[_ARG_0_.Round].TargetBreakPoints
    ShowPointsReceived(_ARG_0_.MaterdorSettings[_ARG_0_.Round].TargetBreakPoints)
  end,
  AwardRoundPointsToTotal = function(_ARG_0_, _ARG_1_)
    _ARG_0_.PlayerResults[_ARG_1_].TotalPoints = _ARG_0_.PlayerResults[_ARG_1_].TotalPoints + _ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] * GetDodgeMultiplier(_ARG_0_.PlayerResults[_ARG_1_].DodgeTime[_ARG_0_.Round] / _ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration * 100)
    ShowPointsReceived(_ARG_0_.PlayerResults[_ARG_1_].RoundPoints[_ARG_0_.Round] * GetDodgeMultiplier(_ARG_0_.PlayerResults[_ARG_1_].DodgeTime[_ARG_0_.Round] / _ARG_0_.MaterdorSettings[_ARG_0_.Round].TractorChargeDuration * 100))
  end,
  DisableAllToys = function(_ARG_0_)
    EnableToy("BUL1", 0)
    EnableToy("BUL2", 0)
    EnableToy("BUL3", 0)
    EnableToy("MTD", 0)
    EnableToy("MCQD", 0)
    EnableToy("wallSmash", 0)
    EnableToy("wallSmash2", 0)
    EnableToy("wallSmashStandIn01", 0)
    EnableToy("wallSmashStandIn02", 0)
    EnableToy("wallSmashStandIn03", 0)
  end,
  TotalGestureTime = 1,
  SetGestureTimer = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.GestureSet == "x360_wheel" then
      _ARG_1_ = _ARG_1_ * GlobalSettings.WheelTimeExtend
    end
    SetEventTimer("Gesture_Timer", _ARG_1_)
    _ARG_0_.TotalGestureTime = _ARG_1_
  end
}
function GetTotalPointsForPlayer(_ARG_0_)
  return MaterdorMinigame.PlayerResults[_ARG_0_].TotalPoints
end
function GetRoundPointsForPlayer(_ARG_0_)
  if MaterdorMinigame.PlayerResults[_ARG_0_].RoundPoints[MaterdorMinigame.Round] then
    return MaterdorMinigame.PlayerResults[_ARG_0_].RoundPoints[MaterdorMinigame.Round]
  else
    return 0
  end
end
function GetPlayerName(_ARG_0_)
  if _ARG_0_ == 1 then
  else
  end
  return "McQueen"
end
function GetDodgeTimerPercent()
  return MaterdorMinigame:GetDodgeTimerPercent()
end
function GetDodgeMultiplier(_ARG_0_)
  if _ARG_0_ < 20 then
    return 8
  elseif _ARG_0_ < 40 then
    return 6
  elseif _ARG_0_ < 60 then
    return 4
  elseif _ARG_0_ < 80 then
    return 2
  else
    return 1
  end
end
function GetCurrentTauntValue()
  return MaterdorMinigame:GetPointsForTaunt()
end
function GetAngerPercent()
  return MaterdorMinigame.BullAnger
end
function ShowPointsReceived(_ARG_0_)
  if HUD_Gestures_Points ~= nil then
    HUD_Gestures_Points:GiveBonus(0, _ARG_0_)
  end
end
function RoundToNearest(_ARG_0_, _ARG_1_)
  if _ARG_0_ - math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_ > math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_ + _ARG_1_ - _ARG_0_ then
    return math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_ + _ARG_1_
  else
    return math.floor(_ARG_0_ / _ARG_1_) * _ARG_1_
  end
end
function Make2DigitString(_ARG_0_)
  if _ARG_0_ < 10 then
    return 0 .. _ARG_0_
  else
    return _ARG_0_
  end
end
function GetGestureTime()
  return GetTimeRemaining("Gesture_Timer") / MaterdorMinigame.TotalGestureTime
end
