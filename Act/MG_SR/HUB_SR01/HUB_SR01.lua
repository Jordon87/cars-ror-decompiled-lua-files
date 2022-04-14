DebugPrint("loading HUB_SR01 startscript")
HUB_SR01 = {
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
      _ARG_0_.TotalTractors = getvar("TotalTractorCount")
      _ARG_0_.TimeLimit = getvar("TimeLimit")
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
      SetHUD("HUD_TractorRoundup")
    elseif _ARG_1_ == State_GameOver then
      PauseGame(1)
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
  end,
  HandlePostEventState = function(_ARG_0_)
    DebugPrint("Running funtion: HandlePostEventState")
    _ARG_0_:WaitForEvent("GameOver")
    SetEventTimer("GameOverLagTime", 2)
    _ARG_0_:WaitForEvent("GameOverLagTime")
    _ARG_0_.TotalTractorsTipped = getvar("TotalTractorsTipped")
    if _ARG_0_.TotalTractors == _ARG_0_.TotalTractorsTipped then
      _ARG_0_.timeLeft = getvar("TimeLeft")
      DebugPrint("Stampede Roundup: TimeLeft = " .. _ARG_0_.timeLeft)
      if _ARG_0_.NumPlayers == 1 then
        _ARG_0_.score = _ARG_0_.timeLeft * 1000 * 1
        SetGameScoreForPlayer(1, _ARG_0_.score)
        DebugPrint("Stampede Roundup: Score = " .. _ARG_0_.score)
      else
        DebugPrint("Stampede Roundup: NumPlayers = " .. _ARG_0_.NumPlayers)
        for _FORV_4_ = 1, _ARG_0_.NumPlayers do
          _ARG_0_.score = GetNumTractorsCaughtForPlayer(_FORV_4_)
          DebugPrint("Stampede Roundup: Score[" .. _FORV_4_ .. "] = " .. _ARG_0_.score)
          SetGameScoreForPlayer(_FORV_4_, _ARG_0_.score)
        end
      end
      setvar("PlayerSucceeded", 1)
    else
      setvar("PlayerSucceeded", 0)
    end
    PushMenu("Results")
  end
}
