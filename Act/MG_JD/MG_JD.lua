IncludeScript("C\\Act\\GlobalSettings")
MG_JD = {
  ActivityCoroutine,
  EventHandler = function(_ARG_0_, _ARG_1_)
    _ARG_0_:ProcessEvent(_ARG_1_)
  end,
  JumpDriftScript = function(_ARG_0_)
    _ARG_0_:WaitForEvent("StartActivityScript")
    while true do
      _ARG_0_:WaitForEvent("JumpTrigger")
      StartStuntState((_ARG_0_:GetEarnedStuntTimeScale()))
      SetHUD("HUD_DriftJump_2")
      _ARG_0_:RequestGesture(_ARG_0_:PickGesture(0))
      while _ARG_0_:WaitForMultipleEvents({
        "PerformedGesture",
        "LandingTrigger"
      }) == "PerformedGesture" do
        _ARG_0_:RequestGesture("None")
        PlaySoundEffect("SFX\\Activities\\GesturePass")
        _ARG_0_:AwardGesturePoints(0 + 1)
        if 0 + 1 == 3 then
          break
        end
        SetEventTimer("GesturePause", 0.25)
        if _ARG_0_:WaitForMultipleEvents({
          "GesturePause",
          "LandingTrigger"
        }) == "LandingTrigger" then
          break
        end
        _ARG_0_:RequestGesture(_ARG_0_:PickGesture(0 + 1))
      end
      if 0 + 1 < 3 then
        PlaySoundEffect("SFX\\Activities\\GestureFail")
        PlaySoundEffect("SFX\\Activities\\StuntFail")
      else
        PlaySoundEffect("SFX\\Activities\\StuntPass")
        if getvar("CurrentPlayerIndex") == 0 then
          PlayQueuedDialogue("MCQ", "Announcement", "StuntPose", 10)
        else
          PlayQueuedDialogue("MAT", "Announcement", "StuntPose", 10)
        end
      end
      SetEventTimer("StuntAnimDone", (PlayStuntAnimation(0 + 1)))
      if _ARG_0_:WaitForMultipleEvents({
        "StuntAnimDone",
        "LandingTrigger"
      }) == "LandingTrigger" then
        PlayFlyingAnimation()
      end
      SetHUD("HUD_DriftJump_1")
      if 0 + 1 == 3 then
        if getvar("CurrentPlayerIndex") == 0 then
          PlayQueuedDialogue("MCQ", "Announcement", "LandPass", 10)
        else
          PlayQueuedDialogue("MAT", "Announcement", "LandPass", 10)
        end
      end
      EndStuntState()
    end
  end,
  RequestGesture = function(_ARG_0_, _ARG_1_)
    DebugPrint(type(_ARG_1_))
    if type(_ARG_1_) == "table" then
      if _ARG_1_[2] == "LeftStick" then
        PromptForGesture(_ARG_1_[1], 1)
      else
        PromptForGesture(_ARG_1_[1], 2)
      end
    else
      PromptForGesture(_ARG_1_, 0)
    end
  end,
  PickGesture = function(_ARG_0_, _ARG_1_)
    DebugPrint((GetDifficulty()))
    DebugPrint(_ARG_1_)
    DebugPrint("x360_wheel")
    return GlobalSettings.Gestures.x360_wheel[{
      {
        easy = "easy",
        normal = "easy",
        hard = "medium"
      },
      {
        easy = "easy",
        normal = "medium",
        hard = "hard"
      },
      {
        easy = "medium",
        normal = "hard",
        hard = "hard"
      }
    }[_ARG_1_ + 1][GetDifficulty()]][math.random(#GlobalSettings.Gestures.x360_wheel[{
      {
        easy = "easy",
        normal = "easy",
        hard = "medium"
      },
      {
        easy = "easy",
        normal = "medium",
        hard = "hard"
      },
      {
        easy = "medium",
        normal = "hard",
        hard = "hard"
      }
    }[_ARG_1_ + 1][GetDifficulty()]])]
  end,
  AwardGesturePoints = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.Settings ~= nil then
      _ARG_0_:AwardPoints(_ARG_0_.Settings.GesturePoints[_ARG_1_])
      setvar("curGesturePoints", getvar("curGesturePoints") + _ARG_0_.Settings.GesturePoints[_ARG_1_])
    end
  end,
  AwardPoints = function(_ARG_0_, _ARG_1_)
    setvar("CurrentScore", getvar("CurrentScore") + _ARG_1_)
  end,
  LapCompleted = function(_ARG_0_, _ARG_1_)
    DebugPrint("LapCompleted: " .. _ARG_1_)
  end,
  LapTrigger = function(_ARG_0_, _ARG_1_)
    DebugPrint("LapTrigger when " .. _ARG_0_:GetEarnedStuntTimeScale() .. "sec Earned\n")
    if _ARG_0_.Settings ~= nil then
      if _ARG_1_ == GetNumLaps() - 2 and _ARG_0_:GetEarnedStuntTimeScale() >= _ARG_0_.Settings.MinStuntTimeScale then
        PlaySoundEffect("SFX\\MG\\JD_Gate_Open")
        SetJumpOpen(1)
        if getvar("CurrentPlayerIndex") == 0 then
          PlayQueuedDialogue("MCQ", "Announcement", "GateOpen", 10)
        else
          PlayQueuedDialogue("MAT", "Announcement", "GateOpen", 10)
        end
      else
        SetJumpOpen(0)
      end
    end
  end,
  GetEarnedStuntTimeScale = function(_ARG_0_)
    if GetPlatform() == "x360" and GetControllerConfig(getvar("CurrentPlayerIndex") + 1) == 2 then
    end
    return math.max(math.min(getvar("CompletedPowerslideScore") * _ARG_0_.Settings.TimeScalePerDriftPoint, _ARG_0_.Settings.MaxStuntTimeScale), _ARG_0_.Settings.MinStuntTimeScale) * GlobalSettings.WheelTimeExtend
  end,
  GesturesPerformed = 0,
  Settings = nil,
  CurrentWaitEvents = nil,
  ActivityCoroutine = nil,
  WaitForEvent = function(_ARG_0_, _ARG_1_)
    DebugPrint("Waiting for " .. _ARG_1_)
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
    _ARG_0_:WaitForEvent(_ARG_1_)
  end,
  PlayCharacterAnimationAndWait = function(_ARG_0_, _ARG_1_, _ARG_2_)
    SetCharacterAnimation(_ARG_1_, _ARG_2_, _ARG_2_, false)
    PlayQueuedDialogue("MCQ", "Announcement", "StuntPose", 10)
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
    if _ARG_1_ == "RaceCompleted" then
      TurnCompleted()
    end
  end,
  CreateCoroutine = function(_ARG_0_)
    _ARG_0_.CurrentWaitEvents = nil
    _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.JumpDriftScript)
    coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
  end
}
