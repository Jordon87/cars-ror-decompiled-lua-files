IncludeScript("C\\Act\\MG_CT_TD\\MG_CT_TD")
CT_TD01 = {
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_PreEvent then
      DebugPrint("preevent")
    elseif _ARG_1_ == State_PreEventUI then
      DebugPrint("preeventUI")
      RaiseMenu("PreEvent")
    elseif _ARG_1_ == State_Begin then
      DebugPrint("begin")
      MG_CT_TD:EventHandler("begin")
    elseif _ARG_1_ == State_Rollup then
      DebugPrint("rollup")
      MG_CT_TD:EventHandler("TokyoIntroVO")
    elseif _ARG_1_ == State_Countdown then
      DebugPrint("countdown")
    elseif _ARG_1_ == State_Running then
      SetHUD("HUD_TokyoMater")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_Results then
      RaiseMenu("Results")
    elseif _ARG_1_ == State_End then
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    elseif _ARG_1_ == State_PostEventUI then
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    DebugPrint(_ARG_1_)
    MG_CT_TD:EventHandler(_ARG_1_)
  end
}
