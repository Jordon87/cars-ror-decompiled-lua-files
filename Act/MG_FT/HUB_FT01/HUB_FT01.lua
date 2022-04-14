HUB_FT01 = {
  TotalTires = 0,
  TiresCollected = 0,
  ActivityCoroutine = nil,
  CurrentWaitEvents = nil,
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
      _ARG_0_.Difficulty = GetDifficulty()
      if _ARG_0_.Difficulty == "easy" then
        DebugPrint("************************ Difficulty == easy")
        ChangeTireGroup(1)
      elseif _ARG_0_.Difficulty == "normal" then
        DebugPrint("************************ Difficulty == normal")
        ChangeTireGroup(2)
      elseif _ARG_0_.Difficulty == "hard" then
        DebugPrint("************************ Difficulty == hard")
        ChangeTireGroup(3)
      elseif _ARG_0_.Difficulty == "expert" then
        DebugPrint("************************ Difficulty == expert")
        ChangeTireGroup(3)
      else
        ChangeTireGroup(1)
      end
      PushMenu("PreEvent")
    elseif _ARG_1_ == State_PreEventUI then
      DebugPrint("preeventUI")
    elseif _ARG_1_ == State_Begin then
      DebugPrint("begin")
      _ARG_0_.TiresCollected = 0
      _ARG_0_.TotalTires = getvar("TotalTireCount")
      _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.HandlePostEventState)
      coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
    elseif _ARG_1_ == State_Rollup then
      DebugPrint("rollup")
    elseif _ARG_1_ == State_Countdown then
      DebugPrint("countdown")
    elseif _ARG_1_ == State_Running then
      DebugPrint("running")
      SetHUD("HUD_TireFind")
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
    if _ARG_1_ == "TireStackCollision" then
      _ARG_0_.TiresCollected = _ARG_0_.TiresCollected + 1
    end
  end,
  HandlePostEventState = function(_ARG_0_)
    DebugPrint("Running funtion: HandlePostEventState")
    _ARG_0_:WaitForEvent("GameOver")
    if _ARG_0_.TiresCollected == _ARG_0_.TotalTires then
      setvar("PlayerSucceeded", 1)
    else
      setvar("PlayerSucceeded", 0)
    end
    SetHUD("")
    RaiseMenu("Results")
    _ARG_0_:WaitForEvent("GameOver")
    PushPostEvent()
  end
}
