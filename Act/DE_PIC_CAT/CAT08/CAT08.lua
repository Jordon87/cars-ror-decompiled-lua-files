IncludeScript("C\\Act\\DE_PIC_CAT\\PhotoShoot")
CAT08 = {
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
      SetHUD("HUD_PhotoOp")
      PhotoShootMiniGame:MiaTiaInit()
    elseif _ARG_1_ == State_GameOver then
      DebugPrint("gameover")
    elseif _ARG_1_ == State_End then
      DebugPrint("State_End")
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    elseif _ARG_1_ == State_PostEventUI then
      DebugPrint("PostEventUI")
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    DebugPrint("Photo Shoot event received: " .. _ARG_1_)
    if _ARG_1_ == "CameraTransitionTo" then
      HideHUD()
    elseif _ARG_1_ == "CameraAim" then
      SetHUD("HUD_PhotoOp_1")
    elseif _ARG_1_ == "PhotoDisplayStart" then
      SetHUD("HUD_PhotoOp_2")
      x = GetComponentValue(HUD_PhotoOp_2.Photo.icon1.instance, "x")
      y = GetComponentValue(HUD_PhotoOp_2.Photo.icon1.instance, "y")
    elseif _ARG_1_ == "PostPhotoStart" then
      SetHUD("ExploreHUD")
    else
      PhotoShootMiniGame:EventHandler(_ARG_1_)
    end
  end
}
