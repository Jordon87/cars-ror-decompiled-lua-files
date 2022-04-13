local L0_1, L1_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = State_PreEvent
  if A1_2 == L2_2 then
    L2_2 = DebugPrint
    L3_2 = "preevent"
    L2_2(L3_2)
  else
    L2_2 = State_PreLoad
    if A1_2 == L2_2 then
      L2_2 = DebugPrint
      L3_2 = "Preload**"
      L2_2(L3_2)
    else
      L2_2 = State_PreEventUI
      if A1_2 == L2_2 then
        L2_2 = DebugPrint
        L3_2 = "preeventUI"
        L2_2(L3_2)
        L2_2 = SetHUD
        L3_2 = "ExploreHUD"
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
                L3_2 = "running"
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
                    L2_2 = EndMenu
                    L3_2 = ExploreHUD
                    L3_2 = L3_2.instance
                    L2_2(L3_2)
                  else
                    L2_2 = State_PostEvent
                    if A1_2 == L2_2 then
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
end
L0_1.ChangedState = L1_1
CR_05_EX = L0_1
