local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\MG_JD\\MG_JD"
L0_1(L1_1)
L0_1 = IncludeScript
L1_1 = "C\\Act\\GlobalSettings"
L0_1(L1_1)
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = 100
L5_1 = 200
L6_1 = 300
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L2_1.GesturePoints = L3_1
L2_1.TimeScalePerDriftPoint = 0.008
L2_1.MinStuntTimeScale = 4
L2_1.MaxStuntTimeScale = 10
L1_1.easy = L2_1
L2_1 = {}
L3_1 = {}
L4_1 = 150
L5_1 = 300
L6_1 = 450
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L2_1.GesturePoints = L3_1
L2_1.TimeScalePerDriftPoint = 0.004
L2_1.MinStuntTimeScale = 4
L2_1.MaxStuntTimeScale = 10
L1_1.medium = L2_1
L2_1 = {}
L3_1 = {}
L4_1 = 200
L5_1 = 400
L6_1 = 600
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L2_1.GesturePoints = L3_1
L2_1.TimeScalePerDriftPoint = 0.002
L2_1.MinStuntTimeScale = 4
L2_1.MaxStuntTimeScale = 10
L1_1.hard = L2_1
L0_1.Settings = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = MG_JD
  L1_2 = L1_2.Settings
  if L1_2 == nil then
    L1_2 = GetDifficulty
    L1_2 = L1_2()
    if L1_2 == "easy" then
      L2_2 = MG_JD
      L3_2 = A0_2.Settings
      L3_2 = L3_2.easy
      L2_2.Settings = L3_2
    elseif L1_2 == "normal" then
      L2_2 = MG_JD
      L3_2 = A0_2.Settings
      L3_2 = L3_2.medium
      L2_2.Settings = L3_2
    else
      L2_2 = MG_JD
      L3_2 = A0_2.Settings
      L3_2 = L3_2.hard
      L2_2.Settings = L3_2
    end
  end
end
L0_1.ApplyDifficulty = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = State_PreEvent
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.ApplyDifficulty
    L2_2(L3_2)
    L2_2 = math
    L2_2 = L2_2.ceil
    L3_2 = MG_JD
    L3_2 = L3_2.Settings
    L3_2 = L3_2.MinStuntTimeScale
    L4_2 = MG_JD
    L4_2 = L4_2.Settings
    L4_2 = L4_2.TimeScalePerDriftPoint
    L3_2 = L3_2 / L4_2
    L2_2 = L2_2(L3_2)
    L3_2 = GetLocalizedString
    L4_2 = "EventInfo"
    L5_2 = "STR_JD_GATE_MSG1"
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L5_2 = " "
    L6_2 = GetLocalizedString
    L7_2 = "EventInfo"
    L8_2 = "STR_JD_GATE_MSG2"
    L6_2 = L6_2(L7_2, L8_2)
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
    L4_2 = SetLocalizedString
    L5_2 = "EventInfo"
    L6_2 = "STR_DYN_JD_GATE_THRESH_MSG"
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = PushMenu
    L5_2 = "PreEvent"
    L4_2(L5_2)
  else
    L2_2 = State_PreEventUI
    if A1_2 == L2_2 then
    else
      L2_2 = State_Begin
      if A1_2 == L2_2 then
      else
        L2_2 = State_Rollup
        if A1_2 == L2_2 then
        else
          L2_2 = State_Countdown
          if A1_2 == L2_2 then
          else
            L2_2 = State_Running
            if A1_2 == L2_2 then
              L2_2 = SetHUD
              L3_2 = "HUD_DriftJump_1"
              L2_2(L3_2)
              L2_2 = SetJumpOpen
              L3_2 = 0
              L2_2(L3_2)
            else
              L2_2 = State_Results
              if A1_2 == L2_2 then
                L2_2 = PushMenu
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
L0_1.ChangedState = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = "JumpDrift event received: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.ApplyDifficulty
  L2_2(L3_2)
  L2_2 = MG_JD
  L3_2 = L2_2
  L2_2 = L2_2.EventHandler
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.EventHandler = L1_1
JD01 = L0_1
