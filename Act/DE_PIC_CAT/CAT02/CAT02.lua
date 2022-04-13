local L0_1, L1_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\DE_PIC_CAT\\PhotoShoot"
L0_1(L1_1)
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = State_PreEvent
  if A1_2 == L2_2 then
    L2_2 = DebugPrint
    L3_2 = "preevent"
    L2_2(L3_2)
    L2_2 = PushMenu
    L3_2 = "PreEvent"
    L2_2(L3_2)
  else
    L2_2 = State_PreEventUI
    if A1_2 == L2_2 then
      L2_2 = DebugPrint
      L3_2 = "preeventUI"
      L2_2(L3_2)
    else
      L2_2 = State_Begin
      if A1_2 == L2_2 then
        L2_2 = DebugPrint
        L3_2 = "begin"
        L2_2(L3_2)
      else
        L2_2 = State_Rollup
        if A1_2 == L2_2 then
          L2_2 = DebugPrint
          L3_2 = "rollup"
          L2_2(L3_2)
        else
          L2_2 = State_Countdown
          if A1_2 == L2_2 then
            L2_2 = DebugPrint
            L3_2 = "countdown"
            L2_2(L3_2)
          else
            L2_2 = State_Running
            if A1_2 == L2_2 then
              L2_2 = DebugPrint
              L3_2 = "Running"
              L2_2(L3_2)
              L2_2 = SetHUD
              L3_2 = "HUD_PhotoOp"
              L2_2(L3_2)
              L2_2 = PhotoShootMiniGame
              L3_2 = L2_2
              L2_2 = L2_2.MiaTiaInit
              L2_2(L3_2)
            else
              L2_2 = State_GameOver
              if A1_2 == L2_2 then
                L2_2 = DebugPrint
                L3_2 = "gameover"
                L2_2(L3_2)
              else
                L2_2 = State_End
                if A1_2 == L2_2 then
                  L2_2 = DebugPrint
                  L3_2 = "State_End"
                  L2_2(L3_2)
                else
                  L2_2 = State_PostEvent
                  if A1_2 == L2_2 then
                    L2_2 = PushPostEvent
                    L2_2()
                  else
                    L2_2 = State_PostEventUI
                    if A1_2 == L2_2 then
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_1.ChangedState = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = "Photo Shoot event received: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  if A1_2 == "CameraTransitionTo" then
    L2_2 = HideHUD
    L2_2()
  elseif A1_2 == "CameraAim" then
    L2_2 = SetHUD
    L3_2 = "HUD_PhotoOp_1"
    L2_2(L3_2)
  elseif A1_2 == "PhotoDisplayStart" then
    L2_2 = SetHUD
    L3_2 = "HUD_PhotoOp_2"
    L2_2(L3_2)
    L2_2 = GetComponentValue
    L3_2 = HUD_PhotoOp_2
    L3_2 = L3_2.Photo
    L3_2 = L3_2.icon1
    L3_2 = L3_2.instance
    L4_2 = "x"
    L2_2 = L2_2(L3_2, L4_2)
    x = L2_2
    L2_2 = GetComponentValue
    L3_2 = HUD_PhotoOp_2
    L3_2 = L3_2.Photo
    L3_2 = L3_2.icon1
    L3_2 = L3_2.instance
    L4_2 = "y"
    L2_2 = L2_2(L3_2, L4_2)
    y = L2_2
  elseif A1_2 == "PostPhotoStart" then
    L2_2 = SetHUD
    L3_2 = "ExploreHUD"
    L2_2(L3_2)
  else
    L2_2 = PhotoShootMiniGame
    L3_2 = L2_2
    L2_2 = L2_2.EventHandler
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.EventHandler = L1_1
CAT02 = L0_1
