CR_05_EX = {
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_PreEvent then
      DebugPrint("preevent")
    elseif _ARG_1_ == State_PreLoad then
      DebugPrint("Preload**")
    elseif _ARG_1_ == State_PreEventUI then
      DebugPrint("preeventUI")
      SetHUD("ExploreHUD")
    elseif _ARG_1_ == State_Begin then
      DebugPrint("begin")
    elseif _ARG_1_ == State_Rollup then
      DebugPrint("rollup")
    elseif _ARG_1_ == State_Countdown then
      DebugPrint("countdown")
    elseif _ARG_1_ == State_Running then
      DebugPrint("running")
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
      DebugPrint("State_End")
      EndMenu(ExploreHUD.instance)
    elseif _ARG_1_ == State_PostEvent then
    elseif _ARG_1_ == State_PostEventUI then
    end
  end
}
