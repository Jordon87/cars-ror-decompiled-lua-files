local L0_1, L1_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\MG_CT_TD\\MG_CT_TD"
L0_1(L1_1)
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = State_PreEvent
  if A1_2 == L2_2 then
    L2_2 = DebugPrint
    L3_2 = "preevent"
    L2_2(L3_2)
  else
    L2_2 = State_PreEventUI
    if A1_2 == L2_2 then
      L2_2 = DebugPrint
      L3_2 = "preeventUI"
      L2_2(L3_2)
      L2_2 = RaiseMenu
      L3_2 = "PreEvent"
      L2_2(L3_2)
    else
      L2_2 = State_Begin
      if A1_2 == L2_2 then
        L2_2 = DebugPrint
        L3_2 = "begin"
        L2_2(L3_2)
        L2_2 = MG_CT_TD
        L3_2 = L2_2
        L2_2 = L2_2.EventHandler
        L4_2 = "begin"
        L2_2(L3_2, L4_2)
      else
        L2_2 = State_Rollup
        if A1_2 == L2_2 then
          L2_2 = DebugPrint
          L3_2 = "rollup"
          L2_2(L3_2)
          L2_2 = MG_CT_TD
          L3_2 = L2_2
          L2_2 = L2_2.EventHandler
          L4_2 = "TokyoIntroVO"
          L2_2(L3_2, L4_2)
        else
          L2_2 = State_Countdown
          if A1_2 == L2_2 then
            L2_2 = DebugPrint
            L3_2 = "countdown"
            L2_2(L3_2)
          else
            L2_2 = State_Running
            if A1_2 == L2_2 then
              L2_2 = SetHUD
              L3_2 = "HUD_TokyoMater"
              L2_2(L3_2)
            else
              L2_2 = State_GameOver
              if A1_2 == L2_2 then
                L2_2 = DebugPrint
                L3_2 = "gameover"
                L2_2(L3_2)
              else
                L2_2 = State_Results
                if A1_2 == L2_2 then
                  L2_2 = RaiseMenu
                  L3_2 = "Results"
                  L2_2(L3_2)
                else
                  L2_2 = State_End
                  if A1_2 == L2_2 then
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
end
L0_1.ChangedState = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = MG_CT_TD
  L3_2 = L2_2
  L2_2 = L2_2.EventHandler
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.EventHandler = L1_1
CT_TD01 = L0_1
