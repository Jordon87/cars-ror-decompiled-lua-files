DebugPrint("loading HUB_SC01 startscript")
HUB_SC01 = {
  TotalTime = 0,
  NumSpeedersCaught = 0,
  ActivityCoroutine = nil,
  CurrentWaitEvents = nil,
  NumPlayers = GetNumPlayers(),
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
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_PreEvent then
      DebugPrint("preevent")
      PushMenu("PreEvent")
    elseif _ARG_1_ == State_PreEventUI then
      DebugPrint("preeventUI")
    elseif _ARG_1_ == State_Begin then
      DebugPrint("begin")
      _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.HandlePostEventState)
      coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
    elseif _ARG_1_ == State_Rollup then
      DebugPrint("rollup")
    elseif _ARG_1_ == State_Countdown then
      DebugPrint("countdown")
    elseif _ARG_1_ == State_Running then
      DebugPrint("running")
      SetHUD("HUD_SheriffChase")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
      DebugPrint("State_End")
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    elseif _ARG_1_ == State_PostEventUI then
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.CurrentWaitEvents ~= nil then
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_.CurrentWaitEvents) do
        if _ARG_0_.CurrentWaitEvents[_FORV_5_] == _ARG_1_ then
          coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_1_)
        end
      end
    end
    if _ARG_1_ == "SCCaught" then
      PlaySoundEffect("SFX\\MG\\MG_SC_CatchCar01")
    elseif _ARG_1_ == "SCFailed" then
      PlaySoundEffect("SFX\\MG\\MG_SC_MissCar02")
    end
  end,
  HandlePostEventState = function(_ARG_0_)
    DebugPrint("Running funtion: HandlePostEventState")
    _ARG_0_:WaitForEvent("GameOver")
    SetEventTimer("GameOverLagTime", 2)
    _ARG_0_:WaitForEvent("GameOverLagTime")
    _ARG_0_.NumSpeedersCaught = getvar("NumCaught")
    if _ARG_0_.NumSpeedersCaught == 3 then
      setvar("PlayerSucceeded", 1)
      _ARG_0_.TotalTime = getvar("TotalCatchTime")
      if _ARG_0_.TotalTime < 180 then
        setvar("TrophyAwarded", 0)
      elseif _ARG_0_.TotalTime < 240 then
        setvar("TrophyAwarded", 1)
      else
        setvar("TrophyAwarded", 2)
      end
    else
      setvar("PlayerSucceeded", 0)
      setvar("TrophyAwarded", 3)
    end
  end
}
