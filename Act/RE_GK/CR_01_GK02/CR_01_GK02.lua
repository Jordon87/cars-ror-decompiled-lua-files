IncludeScript("C\\Act\\RE_GK\\RE_GK")
DebugPrint("loading cr_01_gk02 startscript")
CR_01_GK02 = {
  numHumans = 1,
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
      DebugPrint("running")
      SetHUD("RaceHUD")
      AttachSubmenu(CurrentHUD.instance, "HUD_GuidoKart_1")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
      DebugPrint("State_End")
    elseif _ARG_1_ == State_Results then
      PushMenu("Results")
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
      DebugPrint("State_PostEvent")
    elseif _ARG_1_ == State_PostEventUI then
      DebugPrint("State_PostEventUI")
    end
  end
}
