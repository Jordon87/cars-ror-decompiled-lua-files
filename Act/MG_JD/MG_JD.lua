local L0_1, L1_1, L2_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\GlobalSettings"
L0_1(L1_1)
L0_1 = {}
L1_1 = ActivityCoroutine
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.ProcessEvent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.EventHandler = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = "StartActivityScript"
  L1_2(L2_2, L3_2)
  while true do
    L2_2 = A0_2
    L1_2 = A0_2.WaitForEvent
    L3_2 = "JumpTrigger"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.GetEarnedStuntTimeScale
    L1_2 = L1_2(L2_2)
    L2_2 = StartStuntState
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = SetHUD
    L3_2 = "HUD_DriftJump_2"
    L2_2(L3_2)
    L2_2 = 0
    L4_2 = A0_2
    L3_2 = A0_2.RequestGesture
    L6_2 = A0_2
    L5_2 = A0_2.PickGesture
    L7_2 = L2_2
    L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    while true do
      L4_2 = A0_2
      L3_2 = A0_2.WaitForMultipleEvents
      L5_2 = {}
      L6_2 = "PerformedGesture"
      L7_2 = "LandingTrigger"
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 ~= "PerformedGesture" then
        break
      end
      L4_2 = A0_2
      L3_2 = A0_2.RequestGesture
      L5_2 = "None"
      L3_2(L4_2, L5_2)
      L2_2 = L2_2 + 1
      L3_2 = PlaySoundEffect
      L4_2 = "SFX\\Activities\\GesturePass"
      L3_2(L4_2)
      L4_2 = A0_2
      L3_2 = A0_2.AwardGesturePoints
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      if L2_2 == 3 then
        break
      end
      L3_2 = SetEventTimer
      L4_2 = "GesturePause"
      L5_2 = 0.25
      L3_2(L4_2, L5_2)
      L4_2 = A0_2
      L3_2 = A0_2.WaitForMultipleEvents
      L5_2 = {}
      L6_2 = "GesturePause"
      L7_2 = "LandingTrigger"
      L5_2[1] = L6_2
      L5_2[2] = L7_2
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 == "LandingTrigger" then
        break
      end
      L4_2 = A0_2
      L3_2 = A0_2.RequestGesture
      L6_2 = A0_2
      L5_2 = A0_2.PickGesture
      L7_2 = L2_2
      L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    end
    L3_2 = 0
    L4_2 = getvar
    L5_2 = "CurrentPlayerIndex"
    L4_2 = L4_2(L5_2)
    if L2_2 < 3 then
      L5_2 = PlaySoundEffect
      L6_2 = "SFX\\Activities\\GestureFail"
      L5_2(L6_2)
      L5_2 = PlaySoundEffect
      L6_2 = "SFX\\Activities\\StuntFail"
      L5_2(L6_2)
      L5_2 = PlayFailAnimation
      L5_2 = L5_2()
      L3_2 = L5_2
    else
      L5_2 = PlaySoundEffect
      L6_2 = "SFX\\Activities\\StuntPass"
      L5_2(L6_2)
      if L4_2 == 0 then
        L5_2 = PlayQueuedDialogue
        L6_2 = "MCQ"
        L7_2 = "Announcement"
        L8_2 = "StuntPose"
        L9_2 = 10
        L5_2(L6_2, L7_2, L8_2, L9_2)
      else
        L5_2 = PlayQueuedDialogue
        L6_2 = "MAT"
        L7_2 = "Announcement"
        L8_2 = "StuntPose"
        L9_2 = 10
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
      L5_2 = PlayStuntAnimation
      L6_2 = L2_2
      L5_2 = L5_2(L6_2)
      L3_2 = L5_2
    end
    L5_2 = SetEventTimer
    L6_2 = "StuntAnimDone"
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2.WaitForMultipleEvents
    L7_2 = {}
    L8_2 = "StuntAnimDone"
    L9_2 = "LandingTrigger"
    L7_2[1] = L8_2
    L7_2[2] = L9_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 == "LandingTrigger" then
      L5_2 = PlayFlyingAnimation
      L5_2()
    end
    L5_2 = SetHUD
    L6_2 = "HUD_DriftJump_1"
    L5_2(L6_2)
    if L2_2 == 3 then
      if L4_2 == 0 then
        L5_2 = PlayQueuedDialogue
        L6_2 = "MCQ"
        L7_2 = "Announcement"
        L8_2 = "LandPass"
        L9_2 = 10
        L5_2(L6_2, L7_2, L8_2, L9_2)
      else
        L5_2 = PlayQueuedDialogue
        L6_2 = "MAT"
        L7_2 = "Announcement"
        L8_2 = "LandPass"
        L9_2 = 10
        L5_2(L6_2, L7_2, L8_2, L9_2)
      end
    end
    L5_2 = EndStuntState
    L5_2()
  end
end
L0_1.JumpDriftScript = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = type
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L2_2 = type
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == "table" then
    L2_2 = A1_2[2]
    if L2_2 == "LeftStick" then
      L2_2 = PromptForGesture
      L3_2 = A1_2[1]
      L4_2 = 1
      L2_2(L3_2, L4_2)
    else
      L2_2 = PromptForGesture
      L3_2 = A1_2[1]
      L4_2 = 2
      L2_2(L3_2, L4_2)
    end
  else
    L2_2 = PromptForGesture
    L3_2 = A1_2
    L4_2 = 0
    L2_2(L3_2, L4_2)
  end
end
L0_1.RequestGesture = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = {}
  L3_2.easy = "easy"
  L3_2.normal = "easy"
  L3_2.hard = "medium"
  L4_2 = {}
  L4_2.easy = "easy"
  L4_2.normal = "medium"
  L4_2.hard = "hard"
  L5_2 = {}
  L5_2.easy = "medium"
  L5_2.normal = "hard"
  L5_2.hard = "hard"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = GetPlatform
  L3_2 = L3_2()
  if L3_2 == "ps3" then
    L4_2 = SixAxisEnabled
    L4_2 = L4_2()
    if L4_2 then
      L3_2 = "sixaxis"
    end
  end
  if L3_2 == "x360" then
    L4_2 = GetControllerConfig
    L5_2 = getvar
    L6_2 = "CurrentPlayerIndex"
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 + 1
    L4_2 = L4_2(L5_2)
    if L4_2 == 2 then
      L3_2 = "x360_wheel"
    end
  end
  L4_2 = GetDifficulty
  L4_2 = L4_2()
  L5_2 = DebugPrint
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = DebugPrint
  L6_2 = A1_2
  L5_2(L6_2)
  L5_2 = DebugPrint
  L6_2 = L3_2
  L5_2(L6_2)
  L5_2 = GlobalSettings
  L5_2 = L5_2.Gestures
  L5_2 = L5_2[L3_2]
  L6_2 = A1_2 + 1
  L6_2 = L2_2[L6_2]
  L6_2 = L6_2[L4_2]
  L5_2 = L5_2[L6_2]
  L6_2 = math
  L6_2 = L6_2.random
  L7_2 = #L5_2
  L6_2 = L6_2(L7_2)
  L6_2 = L5_2[L6_2]
  return L6_2
end
L0_1.PickGesture = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.Settings
  if L2_2 ~= nil then
    L3_2 = A0_2
    L2_2 = A0_2.AwardPoints
    L4_2 = A0_2.Settings
    L4_2 = L4_2.GesturePoints
    L4_2 = L4_2[A1_2]
    L2_2(L3_2, L4_2)
    L2_2 = setvar
    L3_2 = "curGesturePoints"
    L4_2 = getvar
    L5_2 = "curGesturePoints"
    L4_2 = L4_2(L5_2)
    L5_2 = A0_2.Settings
    L5_2 = L5_2.GesturePoints
    L5_2 = L5_2[A1_2]
    L4_2 = L4_2 + L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1.AwardGesturePoints = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = setvar
  L3_2 = "CurrentScore"
  L4_2 = getvar
  L5_2 = "CurrentScore"
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2 + A1_2
  L2_2(L3_2, L4_2)
end
L0_1.AwardPoints = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = "LapCompleted: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.LapCompleted = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = DebugPrint
  L3_2 = "LapTrigger when "
  L5_2 = A0_2
  L4_2 = A0_2.GetEarnedStuntTimeScale
  L4_2 = L4_2(L5_2)
  L5_2 = "sec Earned\n"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = getvar
  L3_2 = "CurrentPlayerIndex"
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.Settings
  if L3_2 ~= nil then
    L3_2 = GetNumLaps
    L3_2 = L3_2()
    L3_2 = L3_2 - 2
    if A1_2 == L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.GetEarnedStuntTimeScale
      L3_2 = L3_2(L4_2)
      L4_2 = A0_2.Settings
      L4_2 = L4_2.MinStuntTimeScale
      if L3_2 >= L4_2 then
        L3_2 = PlaySoundEffect
        L4_2 = "SFX\\MG\\JD_Gate_Open"
        L3_2(L4_2)
        L3_2 = SetJumpOpen
        L4_2 = 1
        L3_2(L4_2)
        if L2_2 == 0 then
          L3_2 = PlayQueuedDialogue
          L4_2 = "MCQ"
          L5_2 = "Announcement"
          L6_2 = "GateOpen"
          L7_2 = 10
          L3_2(L4_2, L5_2, L6_2, L7_2)
        else
          L3_2 = PlayQueuedDialogue
          L4_2 = "MAT"
          L5_2 = "Announcement"
          L6_2 = "GateOpen"
          L7_2 = 10
          L3_2(L4_2, L5_2, L6_2, L7_2)
        end
    end
    else
      L3_2 = SetJumpOpen
      L4_2 = 0
      L3_2(L4_2)
    end
  end
end
L0_1.LapTrigger = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = getvar
  L2_2 = "CompletedPowerslideScore"
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.max
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = A0_2.Settings
  L4_2 = L4_2.TimeScalePerDriftPoint
  L4_2 = L1_2 * L4_2
  L5_2 = A0_2.Settings
  L5_2 = L5_2.MaxStuntTimeScale
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A0_2.Settings
  L4_2 = L4_2.MinStuntTimeScale
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = GetPlatform
  L3_2 = L3_2()
  if L3_2 == "x360" then
    L3_2 = GetControllerConfig
    L4_2 = getvar
    L5_2 = "CurrentPlayerIndex"
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2 + 1
    L3_2 = L3_2(L4_2)
    if L3_2 == 2 then
      L3_2 = GlobalSettings
      L3_2 = L3_2.WheelTimeExtend
      L2_2 = L2_2 * L3_2
    end
  end
  return L2_2
end
L0_1.GetEarnedStuntTimeScale = L2_1
L0_1.GesturesPerformed = 0
L0_1.Settings = nil
L0_1.CurrentWaitEvents = nil
L0_1.ActivityCoroutine = nil
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = "Waiting for "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = {}
  L3_2 = A1_2
  L2_2[1] = L3_2
  A0_2.CurrentWaitEvents = L2_2
  L2_2 = coroutine
  L2_2 = L2_2.yield
  L2_2()
  A0_2.CurrentWaitEvents = nil
end
L0_1.WaitForEvent = L2_1
function L2_1(A0_2, A1_2)
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
L0_1.WaitForMultipleEvents = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = PlayActivityCutscene
  L3_2 = A1_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.PlayCutsceneAndWait = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = SetCharacterAnimation
  L4_2 = A1_2
  L5_2 = A2_2
  L6_2 = A2_2
  L7_2 = false
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = PlayQueuedDialogue
  L4_2 = "MCQ"
  L5_2 = "Announcement"
  L6_2 = "StuntPose"
  L7_2 = 10
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = A0_2
  L3_2 = A0_2.WaitForEvent
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.PlayCharacterAnimationAndWait = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = FadeOutScreen
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = SetEventTimer
  L3_2 = "FadeOutScreen"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "FadeOutScreen"
  L2_2(L3_2, L4_2)
end
L0_1.FadeOutScreenAndWait = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = FadeInScreen
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = SetEventTimer
  L3_2 = "FadeInScreen"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "FadeInScreen"
  L2_2(L3_2, L4_2)
end
L0_1.FadeInScreenAndWait = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = SetEventTimer
  L3_2 = "Wait"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "Wait"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.Wait = L2_1
function L2_1(A0_2, A1_2)
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
  if A1_2 == "RaceCompleted" then
    L2_2 = TurnCompleted
    L2_2()
  end
end
L0_1.ProcessEvent = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2.CurrentWaitEvents = nil
  L1_2 = coroutine
  L1_2 = L1_2.create
  L2_2 = A0_2.JumpDriftScript
  L1_2 = L1_2(L2_2)
  A0_2.ActivityCoroutine = L1_2
  L1_2 = coroutine
  L1_2 = L1_2.resume
  L2_2 = A0_2.ActivityCoroutine
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.CreateCoroutine = L2_1
L0_1[1] = L1_1
MG_JD = L0_1
