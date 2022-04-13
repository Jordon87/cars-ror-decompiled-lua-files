local L0_1, L1_1
L0_1 = {}
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = State_PreEvent
  if A1_2 == L2_2 then
    L2_2 = DebugPrint
    L3_2 = "preevent"
    L2_2(L3_2)
    L2_2 = GetPlatform
    L2_2 = L2_2()
    if L2_2 ~= "x360" then
      L2_2 = GetPlatform
      L2_2 = L2_2()
      if L2_2 ~= "ps3" then
        goto lbl_17
      end
    end
    A0_2.srcMovieDir = "C\\Movies\\720\\"
    goto lbl_24
    ::lbl_17::
    L2_2 = IsDisplayModePAL
    L2_2 = L2_2()
    if L2_2 then
      A0_2.srcMovieDir = "C\\Movies\\2500\\"
    else
      A0_2.srcMovieDir = "C\\Movies\\2997\\"
    end
    ::lbl_24::
    L2_2 = QueueVideo
    L3_2 = "Disney"
    L4_2 = A0_2.srcMovieDir
    L2_2(L3_2, L4_2)
    L2_2 = QueueVideo
    L3_2 = "Pixar"
    L4_2 = A0_2.srcMovieDir
    L2_2(L3_2, L4_2)
    L2_2 = QueueVideo
    L3_2 = "THQ"
    L4_2 = A0_2.srcMovieDir
    L2_2(L3_2, L4_2)
    L2_2 = QueueVideo
    L3_2 = "Incin"
    L4_2 = A0_2.srcMovieDir
    L2_2(L3_2, L4_2)
    L2_2 = StartVideoQueue
    L2_2()
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
                  L2_2 = SwitchActivity
                  L3_2 = "FE_FrontEnd"
                  L4_2 = "player1start"
                  L2_2(L3_2, L4_2)
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
L0_1.ChangedState = L1_1
FE_Intro = L0_1
