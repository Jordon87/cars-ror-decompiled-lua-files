HUB_PP01 = {
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_PreEvent then
      DebugPrint("preevent")
      PushMenu("PreEvent")
    elseif _ARG_1_ == State_PreEventUI then
      DebugPrint("preeventUI")
    elseif _ARG_1_ == State_Begin then
      DebugPrint("begin")
    elseif _ARG_1_ == State_Rollup then
      DebugPrint("rollup")
    elseif _ARG_1_ == State_Countdown then
      DebugPrint("countdown")
    elseif _ARG_1_ == State_Running then
      SetHUD("RaceHUD")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
    elseif _ARG_1_ == State_Results then
      PushMenu("Results")
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    elseif _ARG_1_ == State_PostEventUI then
    end
  end
}
