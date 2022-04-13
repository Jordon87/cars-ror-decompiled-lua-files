local L0_1, L1_1
L0_1 = DebugPrint
L1_1 = "loading HUB_SC01 startscript"
L0_1(L1_1)
L0_1 = {}
L0_1.TotalTime = 0
L0_1.NumSpeedersCaught = 0
L0_1.ActivityCoroutine = nil
L0_1.CurrentWaitEvents = nil
L1_1 = GetNumPlayers
L1_1 = L1_1()
L0_1.NumPlayers = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = {}
  L3_2 = A1_2
  L2_2[1] = L3_2
  A0_2.CurrentWaitEvents = L2_2
  L2_2 = coroutine
  L2_2 = L2_2.yield
  L2_2()
  A0_2.CurrentWaitEvents = nil
end
L0_1.WaitForEvent = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2.CurrentWaitEvents = A1_2
  L2_2 = coroutine
  L2_2 = L2_2.yield
  L2_2 = L2_2()
  event = L2_2
  A0_2.CurrentWaitEvents = nil
  L2_2 = event
  return L2_2
end
L0_1.WaitForMultipleEvents = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
        L2_2 = coroutine
        L2_2 = L2_2.create
        L3_2 = A0_2.HandlePostEventState
        L2_2 = L2_2(L3_2)
        A0_2.ActivityCoroutine = L2_2
        L2_2 = coroutine
        L2_2 = L2_2.resume
        L3_2 = A0_2.ActivityCoroutine
        L4_2 = A0_2
        L2_2(L3_2, L4_2)
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
              L2_2 = SetHUD
              L3_2 = "HUD_SheriffChase"
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.CurrentWaitEvents
  if L2_2 ~= nil then
    L2_2 = ipairs
    L3_2 = A0_2.CurrentWaitEvents
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2.CurrentWaitEvents
      L7_2 = L7_2[L5_2]
      if L7_2 == A1_2 then
        L7_2 = coroutine
        L7_2 = L7_2.resume
        L8_2 = A0_2.ActivityCoroutine
        L9_2 = A1_2
        L7_2(L8_2, L9_2)
      end
    end
  end
  if A1_2 == "SCCaught" then
    L2_2 = PlaySoundEffect
    L3_2 = "SFX\\MG\\MG_SC_CatchCar01"
    L2_2(L3_2)
  elseif A1_2 == "SCFailed" then
    L2_2 = PlaySoundEffect
    L3_2 = "SFX\\MG\\MG_SC_MissCar02"
    L2_2(L3_2)
  end
end
L0_1.EventHandler = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugPrint
  L2_2 = "Running funtion: HandlePostEventState"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = "GameOver"
  L1_2(L2_2, L3_2)
  L1_2 = SetEventTimer
  L2_2 = "GameOverLagTime"
  L3_2 = 2
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = "GameOverLagTime"
  L1_2(L2_2, L3_2)
  L1_2 = getvar
  L2_2 = "NumCaught"
  L1_2 = L1_2(L2_2)
  A0_2.NumSpeedersCaught = L1_2
  L1_2 = A0_2.NumSpeedersCaught
  if L1_2 == 3 then
    L1_2 = setvar
    L2_2 = "PlayerSucceeded"
    L3_2 = 1
    L1_2(L2_2, L3_2)
    L1_2 = getvar
    L2_2 = "TotalCatchTime"
    L1_2 = L1_2(L2_2)
    A0_2.TotalTime = L1_2
    L1_2 = A0_2.TotalTime
    if L1_2 < 180 then
      L1_2 = setvar
      L2_2 = "TrophyAwarded"
      L3_2 = 0
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2.TotalTime
      if L1_2 < 240 then
        L1_2 = setvar
        L2_2 = "TrophyAwarded"
        L3_2 = 1
        L1_2(L2_2, L3_2)
      else
        L1_2 = setvar
        L2_2 = "TrophyAwarded"
        L3_2 = 2
        L1_2(L2_2, L3_2)
      end
    end
  else
    L1_2 = setvar
    L2_2 = "PlayerSucceeded"
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = setvar
    L2_2 = "TrophyAwarded"
    L3_2 = 3
    L1_2(L2_2, L3_2)
  end
end
L0_1.HandlePostEventState = L1_1
HUB_SC01 = L0_1
