TR03 = {
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
      DebugPrint("Running")
      SetHUD("HUD_DynamicEvents")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
      DebugPrint("State_End")
      success = getvar("PlayerSucceeded")
      if success == 1 then
        PushMenu("Results")
      end
    elseif _ARG_1_ == State_PostEvent then
      DebugPrint("PostEvent")
      PushPostEvent()
    elseif _ARG_1_ == State_PostEventUI then
      DebugPrint("PostEventUI")
    end
  end
}
