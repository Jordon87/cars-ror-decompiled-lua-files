local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\GlobalSettings"
L0_1(L1_1)
L0_1 = {}
L1_1 = {}
L2_1 = "easy"
L3_1 = "medium"
L4_1 = "hard"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L0_1.GestureSets = L1_1
L1_1 = {}
L1_1.easy = 100
L1_1.medium = 200
L1_1.hard = 300
L0_1.StuntPoints = L1_1
L0_1.DrivingTime = 30
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = 3
  L3_2 = 8
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = L3_2
  L7_2 = A1_2 * 0.05
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L2_2
  return L4_2(L5_2, L6_2)
end
L0_1.StuntTime = L1_1
L0_1.LandingTime = 6
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 0.1
  L3_2 = 0.3
  L4_2 = math
  L4_2 = L4_2.sin
  L5_2 = A1_2 * L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L2_2 * L4_2
  return L4_2
end
L0_1.SteeringAdjustment = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = 100
  L3_2 = 2
  if A1_2 < L2_2 then
    L4_2 = 0
    return L4_2
  end
  L4_2 = RoundToNearest
  L5_2 = A1_2 - L2_2
  L5_2 = L5_2 * L3_2
  L6_2 = 5
  L4_2 = L4_2(L5_2, L6_2)
  return L4_2
end
L0_1.DrivingPointAward = L1_1
L0_1.DrivingPointsTickFrequency = 500
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = 200
  L5_2 = 8
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L4_2 = {}
  L5_2 = 150
  L6_2 = 6
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L5_2 = {}
  L6_2 = 100
  L7_2 = 4
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L6_2 = {}
  L7_2 = 50
  L8_2 = 2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L7_2 = {}
  L8_2 = 0
  L9_2 = 1
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L2_2[5] = L7_2
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2[1]
    if A1_2 > L8_2 then
      L8_2 = L7_2[2]
      return L8_2
    end
  end
end
L0_1.DrivingScoreMultiplier = L1_1
L1_1 = {}
L1_1.Min = 0.1
L1_1.Max = 1
L0_1.ShadowScale = L1_1
L0_1.ControllerAccelScale = 1
L0_1.ControllerDecelScale = 0.95
L0_1.MaxControllerVel = 1.5
L0_1.WobbleAmplitude = 1.2
L0_1.WobbleFrequency = 1.4
L0_1.LandingPointsTickFrequency = 500
L1_1 = {}
L2_1 = {}
L3_1 = 0.2
L4_1 = 100
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = {}
L4_1 = 0.4
L5_1 = 75
L3_1[1] = L4_1
L3_1[2] = L5_1
L4_1 = {}
L5_1 = 0.6
L6_1 = 50
L4_1[1] = L5_1
L4_1[2] = L6_1
L5_1 = {}
L6_1 = 0.8
L7_1 = 25
L5_1[1] = L6_1
L5_1[2] = L7_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L0_1.LandingPointRegions = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = 0.3
L4_1 = 3
L2_1[1] = L3_1
L2_1[2] = L4_1
L3_1 = {}
L4_1 = 0.6
L5_1 = 2
L3_1[1] = L4_1
L3_1[2] = L5_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1.LandingMultiplierRegions = L1_1
L0_1.MinimumSpeed = 75
L0_1.WallHitPenalty = 75
L0_1.TimeSinceLastPointCheck = 0
L1_1 = {}
L1_1.x = 0
L1_1.y = 0
L0_1.ControllerVel = L1_1
L0_1.CurrentPlayerIndex = 1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L1_2 = GetPlatform
  L1_2 = L1_2()
  if L1_2 == "ps3" then
    L2_2 = SixAxisEnabled
    L2_2 = L2_2()
    if L2_2 then
      L1_2 = "sixaxis"
    end
  end
  L2_2 = EnableToy
  L3_2 = "CT_SM_BIGRAMP"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "CT_SM_SMALLRAMP"
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = DebugPrint
  L3_2 = "Pre-Event State"
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "Start"
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MTG_SM_CUTSCENE"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MCQS_SM_CUTSCENE"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "StuntMTG"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "StuntMCQS"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MTG_TOY_SMOKE"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MTG_TOY_FLAMES"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MCQS_TOY_SMOKE"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MCQS_TOY_FLAMES"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MTG_CS_SMOKE"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = EnableToy
  L3_2 = "MCQS_CS_SMOKE"
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = StartPreviewState
  L2_2()
  L2_2 = PlayCameraAnimation
  L3_2 = "FlyingCamera"
  L4_2 = "Anim\\OpeningCamera01"
  L2_2(L3_2, L4_2)
  L2_2 = PushMenu
  L3_2 = "PreEvent"
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "LE_PREEVENT_FINISHED"
  L2_2(L3_2, L4_2)
  L2_2 = {}
  L3_2 = GetNumPlayers
  L3_2 = L3_2()
  if L3_2 == 2 then
    L3_2 = {}
    L4_2 = "MTG"
    L5_2 = "MCQS"
    L3_2[1] = L4_2
    L3_2[2] = L5_2
    L2_2 = L3_2
  else
    L3_2 = {}
    L4_2 = "MTG"
    L3_2[1] = L4_2
    L2_2 = L3_2
  end
  L3_2 = ""
  L4_2 = ""
  L5_2 = ""
  L6_2 = 10
  L7_2 = ipairs
  L8_2 = L2_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    if L1_2 == "x360" or L1_2 == "x360_wheel" then
      L12_2 = GetControllerConfig
      L13_2 = L10_2
      L12_2 = L12_2(L13_2)
      if L12_2 == 2 then
        L1_2 = "x360_wheel"
      end
    end
    A0_2.CurrentPlayerIndex = L10_2
    L12_2 = EnableToy
    L13_2 = "MTG_SM_CUTSCENE"
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "MCQS_SM_CUTSCENE"
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "StuntMTG"
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "StuntMCQS"
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "CT_SM_BIGRAMP"
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "CT_SM_SMALLRAMP"
    L14_2 = 1
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = L11_2
    L14_2 = "_SM_CUTSCENE"
    L13_2 = L13_2 .. L14_2
    L14_2 = 1
    L12_2(L13_2, L14_2)
    if L11_2 == "MTG" then
      L3_2 = "MTG"
      L4_2 = "Announcement"
      L5_2 = "CT_SMstart"
      L6_2 = 10
      L13_2 = A0_2
      L12_2 = A0_2.Wait
      L14_2 = 0.5
      L12_2(L13_2, L14_2)
      L12_2 = PlayQueuedDialogue
      L13_2 = L3_2
      L14_2 = L4_2
      L15_2 = L5_2
      L16_2 = L6_2
      L12_2(L13_2, L14_2, L15_2, L16_2)
      L13_2 = A0_2
      L12_2 = A0_2.PlayCutsceneAndWait
      L14_2 = "CS_TRANS_MAT_RAMPSTART"
      L12_2(L13_2, L14_2)
    else
      L3_2 = "MCQS"
      L4_2 = "Announcement"
      L5_2 = "CT_SMstart"
      L6_2 = 10
      L13_2 = A0_2
      L12_2 = A0_2.Wait
      L14_2 = 0.5
      L12_2(L13_2, L14_2)
      L13_2 = A0_2
      L12_2 = A0_2.PlayCutsceneAndWait
      L14_2 = "CS_TRANS_MCQS_RAMPSTART"
      L12_2(L13_2, L14_2)
    end
    L12_2 = EnableToy
    L13_2 = L11_2
    L14_2 = "_SM_CUTSCENE"
    L13_2 = L13_2 .. L14_2
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "CT_SM_BIGRAMP"
    L14_2 = 1
    L12_2(L13_2, L14_2)
    L12_2 = EnableToy
    L13_2 = "CT_SM_SMALLRAMP"
    L14_2 = 0
    L12_2(L13_2, L14_2)
    L12_2 = 100
    L13_2 = SetPlayerPosition
    L14_2 = "Player1Start"
    L13_2(L14_2)
    L13_2 = StartCountdownState
    L13_2()
    L14_2 = A0_2
    L13_2 = A0_2.Wait
    L15_2 = 3
    L13_2(L14_2, L15_2)
    L13_2 = SetHUD
    L14_2 = "HUD_StuntMater_1"
    L13_2(L14_2)
    L13_2 = ShowHUD
    L13_2()
    L13_2 = TurnOnNitro
    L13_2()
    L13_2 = StartDrivingState
    L13_2()
    L14_2 = A0_2
    L13_2 = A0_2.WaitForMultipleEvents
    L15_2 = {}
    L16_2 = "TriggerUpdate"
    L17_2 = "DrivingTimerExpired"
    L15_2[1] = L16_2
    L15_2[2] = L17_2
    L13_2 = L13_2(L14_2, L15_2)
    if L13_2 == "TriggerUpdate" then
      L14_2 = GetPlayerSpeed
      L14_2 = L14_2()
      L12_2 = L14_2
    end
    L14_2 = EndDrivingState
    L14_2()
    L14_2 = HideHUD
    L14_2()
    L13_2 = EnableToy
    L14_2 = "CT_SM_BIGRAMP"
    L15_2 = 0
    L13_2(L14_2, L15_2)
    L13_2 = EnableToy
    L14_2 = "CT_SM_SMALLRAMP"
    L15_2 = 1
    L13_2(L14_2, L15_2)
    L13_2 = EnableToy
    L14_2 = L11_2
    L15_2 = "_SM_CUTSCENE"
    L14_2 = L14_2 .. L15_2
    L15_2 = 1
    L13_2(L14_2, L15_2)
    L13_2 = EnableToy
    L14_2 = L11_2
    L15_2 = "_TOY_SMOKE"
    L14_2 = L14_2 .. L15_2
    L15_2 = 1
    L13_2(L14_2, L15_2)
    L13_2 = EnableToy
    L14_2 = L11_2
    L15_2 = "_TOY_FLAMES"
    L14_2 = L14_2 .. L15_2
    L15_2 = 1
    L13_2(L14_2, L15_2)
    if L11_2 == "MTG" then
      L3_2 = "MTG"
      L4_2 = "Announcement"
      L5_2 = "OffRamp"
      L6_2 = 10
      L13_2 = PlayQueuedDialogue
      L14_2 = L3_2
      L15_2 = L4_2
      L16_2 = L5_2
      L17_2 = L6_2
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = A0_2
      L13_2 = A0_2.PlayCutsceneAndWait
      L15_2 = "CS_TRANS_MAT_RAMPTOAIR"
      L13_2(L14_2, L15_2)
    else
      L3_2 = "MCQS"
      L4_2 = "Announcement"
      L5_2 = "OffRamp"
      L6_2 = 10
      L13_2 = PlayQueuedDialogue
      L14_2 = L3_2
      L15_2 = L4_2
      L16_2 = L5_2
      L17_2 = L6_2
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = A0_2
      L13_2 = A0_2.PlayCutsceneAndWait
      L15_2 = "CS_TRANS_MCQS_RAMPTOAIR"
      L13_2(L14_2, L15_2)
    end
    L13_2 = EnableToy
    L14_2 = L11_2
    L15_2 = "_SM_CUTSCENE"
    L14_2 = L14_2 .. L15_2
    L15_2 = 0
    L13_2(L14_2, L15_2)
    L13_2 = EnableToy
    L14_2 = "Stunt"
    L15_2 = L11_2
    L14_2 = L14_2 .. L15_2
    L15_2 = 1
    L13_2(L14_2, L15_2)
    L13_2 = PlayCameraAnimation
    L14_2 = "FlyingCamera"
    L15_2 = "Anim\\FlyingCamera"
    L13_2(L14_2, L15_2)
    L13_2 = SetHUD
    L14_2 = "HUD_StuntMater_2"
    L13_2(L14_2)
    L13_2 = StartStuntState
    L13_2()
    L14_2 = A0_2
    L13_2 = A0_2.StuntTime
    L15_2 = L12_2
    L13_2 = L13_2(L14_2, L15_2)
    if L1_2 == "x360_wheel" then
      L14_2 = GlobalSettings
      L14_2 = L14_2.WheelTimeExtend
      L13_2 = L13_2 * L14_2
    end
    L15_2 = A0_2
    L14_2 = A0_2.SetGestureTimer
    L16_2 = L13_2
    L14_2(L15_2, L16_2)
    L14_2 = GlobalSettings
    L14_2 = L14_2.Gestures
    L14_2 = L14_2[L1_2]
    L14_2 = L14_2.easy
    L16_2 = A0_2
    L15_2 = A0_2.PromptForGesture
    L17_2 = math
    L17_2 = L17_2.random
    L18_2 = #L14_2
    L17_2 = L17_2(L18_2)
    L17_2 = L14_2[L17_2]
    L15_2(L16_2, L17_2)
    L15_2 = 0
    while L15_2 < 3 do
      L17_2 = A0_2
      L16_2 = A0_2.WaitForMultipleEvents
      L18_2 = {}
      L19_2 = "Gesture_Timer"
      L20_2 = "PerformedGesture"
      L18_2[1] = L19_2
      L18_2[2] = L20_2
      L16_2 = L16_2(L17_2, L18_2)
      if L16_2 ~= "PerformedGesture" then
        break
      end
      L16_2 = PlaySoundEffect
      L17_2 = "SFX\\Activities\\GesturePass"
      L16_2(L17_2)
      L15_2 = L15_2 + 1
      if L15_2 == 1 then
        L16_2 = GlobalSettings
        L16_2 = L16_2.Gestures
        L16_2 = L16_2[L1_2]
        L14_2 = L16_2.medium
      else
        L16_2 = GlobalSettings
        L16_2 = L16_2.Gestures
        L16_2 = L16_2[L1_2]
        L14_2 = L16_2.hard
      end
      L16_2 = setvar
      L17_2 = "CurrentScore"
      L18_2 = getvar
      L19_2 = "CurrentScore"
      L18_2 = L18_2(L19_2)
      L19_2 = A0_2.StuntPoints
      L20_2 = A0_2.GestureSets
      L20_2 = L20_2[L15_2]
      L19_2 = L19_2[L20_2]
      L18_2 = L18_2 + L19_2
      L16_2(L17_2, L18_2)
      L16_2 = A0_2.CurrentPlayerIndex
      if L16_2 == 1 then
        L16_2 = setvar
        L17_2 = "StuntScore"
        L18_2 = getvar
        L19_2 = "StuntScore"
        L18_2 = L18_2(L19_2)
        L19_2 = A0_2.StuntPoints
        L20_2 = A0_2.GestureSets
        L20_2 = L20_2[L15_2]
        L19_2 = L19_2[L20_2]
        L18_2 = L18_2 + L19_2
        L16_2(L17_2, L18_2)
      else
        L16_2 = setvar
        L17_2 = "StuntScore2"
        L18_2 = getvar
        L19_2 = "StuntScore2"
        L18_2 = L18_2(L19_2)
        L19_2 = A0_2.StuntPoints
        L20_2 = A0_2.GestureSets
        L20_2 = L20_2[L15_2]
        L19_2 = L19_2[L20_2]
        L18_2 = L18_2 + L19_2
        L16_2(L17_2, L18_2)
      end
      L16_2 = SetEventTimer
      L17_2 = "GestureDelay"
      L18_2 = 0.5
      L16_2(L17_2, L18_2)
      L17_2 = A0_2
      L16_2 = A0_2.WaitForMultipleEvents
      L18_2 = {}
      L19_2 = "GestureDelay"
      L20_2 = "Gesture_Timer"
      L18_2[1] = L19_2
      L18_2[2] = L20_2
      L16_2 = L16_2(L17_2, L18_2)
      if L16_2 == "Gesture_Timer" then
        break
      elseif L15_2 < 3 then
        L17_2 = A0_2
        L16_2 = A0_2.PromptForGesture
        L18_2 = math
        L18_2 = L18_2.random
        L19_2 = #L14_2
        L18_2 = L18_2(L19_2)
        L18_2 = L14_2[L18_2]
        L16_2(L17_2, L18_2)
      end
    end
    if L15_2 == 3 then
      L16_2 = PlaySoundEffect
      L17_2 = "SFX\\Activities\\StuntPass"
      L16_2(L17_2)
      L17_2 = A0_2
      L16_2 = A0_2.PlayDialogueAndWait
      L18_2 = "Stunt"
      L19_2 = L11_2
      L18_2 = L18_2 .. L19_2
      L19_2 = L11_2
      L20_2 = "_BEFT_STUNT"
      L21_2 = math
      L21_2 = L21_2.random
      L22_2 = 8
      L21_2 = L21_2(L22_2)
      L19_2 = L19_2 .. L20_2 .. L21_2
      L16_2(L17_2, L18_2, L19_2)
    else
      L16_2 = PlaySoundEffect
      L17_2 = "SFX\\Activities\\GestureFail"
      L16_2(L17_2)
      L16_2 = PlaySoundEffect
      L17_2 = "SFX\\Activities\\StuntFail"
      L16_2(L17_2)
      L17_2 = A0_2
      L16_2 = A0_2.PlayCharacterAnimationAndWait
      L18_2 = "Stunt"
      L19_2 = L11_2
      L18_2 = L18_2 .. L19_2
      L19_2 = L11_2
      L20_2 = "_BEFT_STUNT9"
      L19_2 = L19_2 .. L20_2
      L16_2(L17_2, L18_2, L19_2)
    end
    L16_2 = HideHUD
    L16_2()
    L16_2 = EndStuntState
    L16_2()
    L13_2 = EnableToy
    L14_2 = L11_2
    L15_2 = "_TOY_SMOKE"
    L14_2 = L14_2 .. L15_2
    L15_2 = 0
    L13_2(L14_2, L15_2)
    L13_2 = EnableToy
    L14_2 = L11_2
    L15_2 = "_TOY_FLAMES"
    L14_2 = L14_2 .. L15_2
    L15_2 = 0
    L13_2(L14_2, L15_2)
    if L11_2 == "MTG" then
      L3_2 = "StuntMTG"
      L4_2 = "Announcement"
      L5_2 = "TricksToLand"
      L6_2 = 10
      L13_2 = PlayQueuedDialogue
      L14_2 = L3_2
      L15_2 = L4_2
      L16_2 = L5_2
      L17_2 = L6_2
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = A0_2
      L13_2 = A0_2.PlayCutsceneAndWait
      L15_2 = "CS_TRANS_MAT_AIRTRICKSTOLANDING"
      L13_2(L14_2, L15_2)
    else
      L3_2 = "StuntMCQS"
      L4_2 = "Announcement"
      L5_2 = "TricksToLand"
      L6_2 = 10
      L13_2 = PlayQueuedDialogue
      L14_2 = L3_2
      L15_2 = L4_2
      L16_2 = L5_2
      L17_2 = L6_2
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = A0_2
      L13_2 = A0_2.PlayCutsceneAndWait
      L15_2 = "CS_TRANS_MCQ_AIRTRICKSTOLANDING"
      L13_2(L14_2, L15_2)
    end
    L13_2 = PlayCameraAnimation
    L14_2 = "LandingCamera"
    L15_2 = "Anim\\LandingCamera"
    L13_2(L14_2, L15_2)
    L13_2 = SetHUD
    L14_2 = "HUD_StuntMater_3"
    L13_2(L14_2)
    L13_2 = StartLandingState
    L13_2()
    L13_2 = PlaySoundEffect
    L14_2 = "SFX\\MG\\planecrash"
    L13_2(L14_2)
    L13_2 = SetEventTimer
    L14_2 = "LandingTimerExpired"
    L15_2 = A0_2.LandingTime
    L13_2(L14_2, L15_2)
    L14_2 = A0_2
    L13_2 = A0_2.WaitForEvent
    L15_2 = "LandingTimerExpired"
    L13_2(L14_2, L15_2)
    L13_2 = HideHUD
    L13_2()
    L14_2 = A0_2
    L13_2 = A0_2.GetLandingMultiplier
    L13_2 = L13_2(L14_2)
    L14_2 = A0_2.CurrentPlayerIndex
    if L14_2 == 1 then
      L14_2 = setvar
      L15_2 = "LandingMultiplier"
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    else
      L14_2 = setvar
      L15_2 = "LandingMultiplier2"
      L16_2 = L13_2
      L14_2(L15_2, L16_2)
    end
    L14_2 = EndLandingState
    L14_2()
    L13_2 = PlayCameraAnimation
    L14_2 = "LandingFinishedCamera"
    L15_2 = "Anim\\LandingFinishedCamera"
    L13_2(L14_2, L15_2)
    L13_2 = StopSoundEffect
    L14_2 = "SFX\\MG\\planecrash"
    L13_2(L14_2)
    L13_2 = StartFinishedLandingState
    L13_2()
    L14_2 = A0_2
    L13_2 = A0_2.Wait
    L15_2 = 1
    L13_2(L14_2, L15_2)
    if L11_2 == "MTG" then
      L13_2 = PlayQueuedDialogue
      L14_2 = "MTG"
      L15_2 = "Announcement"
      L16_2 = "HitTarget"
      L17_2 = 10
      L13_2(L14_2, L15_2, L16_2, L17_2)
    else
      L13_2 = PlayQueuedDialogue
      L14_2 = "MCQS"
      L15_2 = "Announcement"
      L16_2 = "HitTarget"
      L17_2 = 10
      L13_2(L14_2, L15_2, L16_2, L17_2)
    end
    L14_2 = A0_2
    L13_2 = A0_2.Wait
    L15_2 = 2
    L13_2(L14_2, L15_2)
    L13_2 = PlayCameraAnimation
    L14_2 = "EndlevelCamera"
    L15_2 = "Anim\\EndlevelCamera"
    L13_2(L14_2, L15_2)
    if L11_2 == "MTG" then
      L14_2 = A0_2
      L13_2 = A0_2.Wait
      L15_2 = 0.5
      L13_2(L14_2, L15_2)
      L13_2 = "MIAS"
      L14_2 = "MIAS_BEFT_CTSMMAT"
      L16_2 = A0_2
      L15_2 = A0_2.PlayDialogueAndWait
      L17_2 = L13_2
      L18_2 = L14_2
      L19_2 = L14_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
      L16_2 = A0_2
      L15_2 = A0_2.Wait
      L17_2 = 0.5
      L15_2(L16_2, L17_2)
      L13_2 = "TIAS"
      L14_2 = "TIAS_BEFT_CTSMMAT"
      L16_2 = A0_2
      L15_2 = A0_2.PlayDialogueAndWait
      L17_2 = L13_2
      L18_2 = L14_2
      L19_2 = L14_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
    else
      L14_2 = A0_2
      L13_2 = A0_2.Wait
      L15_2 = 0.5
      L13_2(L14_2, L15_2)
      L13_2 = "MIAS"
      L14_2 = "MIAS_BEFT_CTSMMCQ"
      L16_2 = A0_2
      L15_2 = A0_2.PlayDialogueAndWait
      L17_2 = L13_2
      L18_2 = L14_2
      L19_2 = L14_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
      L16_2 = A0_2
      L15_2 = A0_2.Wait
      L17_2 = 0.5
      L15_2(L16_2, L17_2)
      L13_2 = "TIAS"
      L14_2 = "TIAS_BEFT_CTSMMCQ"
      L16_2 = A0_2
      L15_2 = A0_2.PlayDialogueAndWait
      L17_2 = L13_2
      L18_2 = L14_2
      L19_2 = L14_2
      L15_2(L16_2, L17_2, L18_2, L19_2)
    end
    L13_2 = HideHUD
    L13_2()
    L13_2 = EndFinishedLandingState
    L13_2()
  end
end
L0_1.StuntMaterScript = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = State_Results
  if A1_2 == L2_2 then
    L2_2 = PushMenu
    L3_2 = "Results"
    L2_2(L3_2)
  else
    L2_2 = State_PostEvent
    if A1_2 == L2_2 then
      L2_2 = PushPostEvent
      L2_2()
    end
  end
end
L0_1.ChangedState = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.ProcessEvent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.EventHandler = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = coroutine
  L1_2 = L1_2.create
  L2_2 = A0_2.StuntMaterScript
  L1_2 = L1_2(L2_2)
  A0_2.ActivityCoroutine = L1_2
  L1_2 = coroutine
  L1_2 = L1_2.resume
  L2_2 = A0_2.ActivityCoroutine
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
end
L0_1.Restart = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = DebugPrint
  L7_2 = "StuntsCompletedInDifficulty:"
  L8_2 = A1_2
  L9_2 = [[

TimeInDifficulty:]]
  L10_2 = A2_2
  L11_2 = [[

TotalAirtime:]]
  L12_2 = A3_2
  L13_2 = [[

AirtimeLeft:]]
  L14_2 = A4_2
  L15_2 = [[

Difficulty]]
  L16_2 = A5_2
  L17_2 = "\n"
  L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2 .. L15_2 .. L16_2 .. L17_2
  L6_2(L7_2)
  if 2 < A1_2 then
    L6_2 = A0_2.Stunt_Hard
    if A5_2 < L6_2 then
      L6_2 = SelectNewStunt
      L7_2 = A5_2 + 1
      L6_2(L7_2)
  end
  else
    L6_2 = SelectNewStunt
    L7_2 = A5_2
    L6_2(L7_2)
  end
end
L0_1.ChooseStuntDifficulty = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.DrivingTime
  L3_2 = GetTimeRemaining
  L4_2 = "DrivingTimerExpired"
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 - L3_2
  L3_2 = SetVehicleSteeringOffset
  L5_2 = A0_2
  L4_2 = A0_2.SteeringAdjustment
  L6_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.UpdateWindForces = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L2_2 = {}
  L3_2 = 0.2
  L4_2 = 0.5
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = A0_2.LandingTime
  L4_2 = GetTimeRemaining
  L5_2 = "LandingTimerExpired"
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 - L4_2
  L4_2 = 0
  L5_2 = ipairs
  L6_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = math
    L10_2 = L10_2.sin
    L11_2 = A0_2.WobbleFrequency
    L11_2 = L3_2 * L11_2
    L11_2 = L11_2 * L9_2
    L10_2 = L10_2(L11_2)
    L4_2 = L4_2 + L10_2
  end
  L5_2 = #L2_2
  L5_2 = L4_2 / L5_2
  L6_2 = A0_2.WobbleAmplitude
  L4_2 = L5_2 * L6_2
  L5_2 = math
  L5_2 = L5_2.max
  L6_2 = math
  L6_2 = L6_2.min
  L7_2 = L4_2
  L8_2 = 1
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = -1
  L5_2 = L5_2(L6_2, L7_2)
  L4_2 = L5_2
  L5_2 = {}
  L6_2 = 0.6
  L7_2 = 0.12
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L6_2 = 0
  L7_2 = ipairs
  L8_2 = L5_2
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = math
    L12_2 = L12_2.sin
    L13_2 = A0_2.WobbleFrequency
    L13_2 = L3_2 * L13_2
    L13_2 = L13_2 * L11_2
    L12_2 = L12_2(L13_2)
    L6_2 = L6_2 + L12_2
  end
  L7_2 = #L5_2
  L7_2 = L6_2 / L7_2
  L8_2 = A0_2.WobbleAmplitude
  L6_2 = L7_2 * L8_2
  L7_2 = math
  L7_2 = L7_2.max
  L8_2 = math
  L8_2 = L8_2.min
  L9_2 = L6_2
  L10_2 = 1
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = -1
  L7_2 = L7_2(L8_2, L9_2)
  L6_2 = L7_2
  L7_2 = GetCursorPosition
  L7_2, L8_2 = L7_2()
  L9_2 = L4_2 - L7_2
  L9_2 = L9_2 * A1_2
  L10_2 = L6_2 - L8_2
  L10_2 = L10_2 * A1_2
  L11_2 = GetControllerCursorInput
  L11_2, L12_2 = L11_2()
  L13_2 = A0_2.ControllerAccelScale
  L13_2 = L11_2 * L13_2
  L11_2 = L13_2 * A1_2
  L13_2 = A0_2.ControllerAccelScale
  L13_2 = L12_2 * L13_2
  L12_2 = L13_2 * A1_2
  if L11_2 == 0 and L12_2 == 0 then
    L13_2 = A0_2.ControllerVel
    L14_2 = A0_2.ControllerVel
    L14_2 = L14_2.x
    L15_2 = A0_2.ControllerDecelScale
    L14_2 = L14_2 * L15_2
    L13_2.x = L14_2
    L13_2 = A0_2.ControllerVel
    L14_2 = A0_2.ControllerVel
    L14_2 = L14_2.y
    L15_2 = A0_2.ControllerDecelScale
    L14_2 = L14_2 * L15_2
    L13_2.y = L14_2
  else
    L13_2 = A0_2.ControllerVel
    L14_2 = A0_2.ControllerVel
    L14_2 = L14_2.x
    L14_2 = L14_2 + L11_2
    L13_2.x = L14_2
    L13_2 = A0_2.ControllerVel
    L14_2 = A0_2.ControllerVel
    L14_2 = L14_2.y
    L14_2 = L14_2 + L12_2
    L13_2.y = L14_2
  end
  L13_2 = A0_2.ControllerVel
  L14_2 = math
  L14_2 = L14_2.max
  L15_2 = math
  L15_2 = L15_2.min
  L16_2 = A0_2.ControllerVel
  L16_2 = L16_2.x
  L17_2 = A0_2.MaxControllerVel
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A0_2.MaxControllerVel
  L16_2 = -L16_2
  L14_2 = L14_2(L15_2, L16_2)
  L13_2.x = L14_2
  L13_2 = A0_2.ControllerVel
  L14_2 = math
  L14_2 = L14_2.max
  L15_2 = math
  L15_2 = L15_2.min
  L16_2 = A0_2.ControllerVel
  L16_2 = L16_2.y
  L17_2 = A0_2.MaxControllerVel
  L15_2 = L15_2(L16_2, L17_2)
  L16_2 = A0_2.MaxControllerVel
  L16_2 = -L16_2
  L14_2 = L14_2(L15_2, L16_2)
  L13_2.y = L14_2
  L13_2 = L7_2 + L9_2
  L14_2 = A0_2.ControllerVel
  L14_2 = L14_2.x
  L14_2 = L14_2 * A1_2
  L13_2 = L13_2 + L14_2
  L14_2 = L8_2 + L10_2
  L15_2 = A0_2.ControllerVel
  L15_2 = L15_2.y
  L15_2 = L15_2 * A1_2
  L14_2 = L14_2 + L15_2
  L15_2 = math
  L15_2 = L15_2.sqrt
  L16_2 = L13_2 * L13_2
  L17_2 = L14_2 * L14_2
  L16_2 = L16_2 + L17_2
  L15_2 = L15_2(L16_2)
  L16_2 = math
  L16_2 = L16_2.max
  L17_2 = math
  L17_2 = L17_2.min
  L18_2 = L15_2
  L19_2 = 1
  L17_2 = L17_2(L18_2, L19_2)
  L18_2 = 0
  L16_2 = L16_2(L17_2, L18_2)
  L15_2 = L16_2
  L16_2 = 0
  if 0 < L13_2 and 0 <= L14_2 then
    L17_2 = math
    L17_2 = L17_2.atan
    L18_2 = L14_2 / L13_2
    L17_2 = L17_2(L18_2)
    L16_2 = L17_2
  elseif 0 < L13_2 and L14_2 < 0 then
    L17_2 = math
    L17_2 = L17_2.atan
    L18_2 = L14_2 / L13_2
    L17_2 = L17_2(L18_2)
    L18_2 = math
    L18_2 = L18_2.pi
    L18_2 = 2 * L18_2
    L16_2 = L17_2 + L18_2
  elseif L13_2 < 0 then
    L17_2 = math
    L17_2 = L17_2.atan
    L18_2 = L14_2 / L13_2
    L17_2 = L17_2(L18_2)
    L18_2 = math
    L18_2 = L18_2.pi
    L16_2 = L17_2 + L18_2
  elseif L13_2 == 0 and 0 < L14_2 then
    L17_2 = math
    L17_2 = L17_2.pi
    L16_2 = L17_2 / 2
  elseif L13_2 == 0 and L14_2 < 0 then
    L17_2 = math
    L17_2 = L17_2.pi
    L17_2 = 3 * L17_2
    L16_2 = L17_2 / 2
  end
  L17_2 = math
  L17_2 = L17_2.cos
  L18_2 = L16_2
  L17_2 = L17_2(L18_2)
  L13_2 = L15_2 * L17_2
  L17_2 = math
  L17_2 = L17_2.sin
  L18_2 = L16_2
  L17_2 = L17_2(L18_2)
  L14_2 = L15_2 * L17_2
  L17_2 = SetCursorPosition
  L18_2 = L13_2
  L19_2 = L14_2
  L17_2(L18_2, L19_2)
  L17_2 = A0_2.LandingTime
  totalTime = L17_2
  L17_2 = GetTimeRemaining
  L18_2 = "LandingTimerExpired"
  L17_2 = L17_2(L18_2)
  currentTime = L17_2
  L17_2 = A0_2.ShadowScale
  L17_2 = L17_2.Min
  L18_2 = A0_2.ShadowScale
  L18_2 = L18_2.Max
  L19_2 = A0_2.ShadowScale
  L19_2 = L19_2.Min
  L18_2 = L18_2 - L19_2
  L19_2 = totalTime
  L20_2 = currentTime
  L19_2 = L19_2 - L20_2
  L20_2 = totalTime
  L19_2 = L19_2 / L20_2
  L19_2 = L19_2 ^ 2
  L18_2 = L18_2 * L19_2
  L17_2 = L17_2 + L18_2
  L18_2 = SetShadowScale
  L19_2 = L17_2
  L20_2 = L17_2
  L21_2 = L17_2
  L18_2(L19_2, L20_2, L21_2)
end
L0_1.UpdateCursorPosition = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2.TimeSinceLastPointCheck
  L2_2 = L2_2 + A1_2
  A0_2.TimeSinceLastPointCheck = L2_2
  L2_2 = A0_2.TimeSinceLastPointCheck
  L2_2 = L2_2 * 1000
  L3_2 = A0_2.LandingPointsTickFrequency
  if L2_2 > L3_2 then
    A0_2.TimeSinceLastPointCheck = 0
    L2_2 = ipairs
    L3_2 = A0_2.LandingPointRegions
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = GetCursorPosition
      L7_2, L8_2 = L7_2()
      L9_2 = math
      L9_2 = L9_2.sqrt
      L10_2 = L7_2 * L7_2
      L11_2 = L8_2 * L8_2
      L10_2 = L10_2 + L11_2
      L9_2 = L9_2(L10_2)
      L10_2 = L6_2[1]
      if L9_2 < L10_2 then
        L9_2 = PlaySoundEffect
        L10_2 = "SFX\\Activities\\ADD_POINTS"
        L9_2(L10_2)
        L9_2 = A0_2.CurrentPlayerIndex
        if L9_2 == 1 then
          L9_2 = setvar
          L10_2 = "LandingScore"
          L11_2 = getvar
          L12_2 = "LandingScore"
          L11_2 = L11_2(L12_2)
          L12_2 = L6_2[2]
          L11_2 = L11_2 + L12_2
          L9_2(L10_2, L11_2)
          break
        end
        L9_2 = setvar
        L10_2 = "LandingScore2"
        L11_2 = getvar
        L12_2 = "LandingScore2"
        L11_2 = L11_2(L12_2)
        L12_2 = L6_2[2]
        L11_2 = L11_2 + L12_2
        L9_2(L10_2, L11_2)
        break
      end
    end
  end
end
L0_1.UpdateLandingPoints = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2.TimeSinceLastPointCheck
  L2_2 = L2_2 + A1_2
  A0_2.TimeSinceLastPointCheck = L2_2
  L2_2 = A0_2.TimeSinceLastPointCheck
  L2_2 = L2_2 * 1000
  L3_2 = A0_2.DrivingPointsTickFrequency
  if L2_2 > L3_2 then
    A0_2.TimeSinceLastPointCheck = 0
    L3_2 = A0_2
    L2_2 = A0_2.DrivingPointAward
    L4_2 = GetPlayerSpeed
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    if L2_2 ~= 0 then
      A0_2.LastDrivingPointsAwarded = L2_2
      L3_2 = PlaySoundEffect
      L4_2 = "SFX\\Activities\\ADD_POINTS"
      L3_2(L4_2)
      L3_2 = GetPlayerPosition
      L3_2, L4_2, L5_2 = L3_2()
      L6_2 = GetScreenPosition
      L7_2 = L3_2 + 10
      L8_2 = L4_2
      L9_2 = L5_2
      L6_2, L7_2 = L6_2(L7_2, L8_2, L9_2)
      L8_2 = ShowHoveringPoints
      L9_2 = L6_2 * 1280
      L10_2 = L7_2 * 720
      L8_2(L9_2, L10_2)
    else
      A0_2.LastDrivingPointsAwarded = nil
    end
    L3_2 = setvar
    L4_2 = "CurrentScore"
    L5_2 = getvar
    L6_2 = "CurrentScore"
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2 + L2_2
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.CurrentPlayerIndex
    if L3_2 == 1 then
      L3_2 = setvar
      L4_2 = "DrivingScore"
      L5_2 = getvar
      L6_2 = "DrivingScore"
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2 + L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = setvar
      L4_2 = "DrivingScore2"
      L5_2 = getvar
      L6_2 = "DrivingScore2"
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2 + L2_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.UpdateDrivingPoints = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = ipairs
  L2_2 = A0_2.LandingMultiplierRegions
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = GetCursorPosition
    L6_2, L7_2 = L6_2()
    L8_2 = math
    L8_2 = L8_2.sqrt
    L9_2 = L6_2 * L6_2
    L10_2 = L7_2 * L7_2
    L9_2 = L9_2 + L10_2
    L8_2 = L8_2(L9_2)
    L9_2 = L5_2[1]
    if L8_2 < L9_2 then
      L8_2 = L5_2[2]
      return L8_2
    end
  end
end
L0_1.GetLandingMultiplier = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2.MinimumSpeed
  if A2_2 > L3_2 then
    L3_2 = ApplySpeedPenalty
    L4_2 = math
    L4_2 = L4_2.min
    L5_2 = A0_2.WallHitPenalty
    L5_2 = A1_2 * L5_2
    L6_2 = A0_2.MinimumSpeed
    L6_2 = A2_2 - L6_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = 2 + L4_2
    L3_2(L4_2)
  end
end
L0_1.DoHitWallPenalty = L1_1
function L1_1(A0_2, A1_2)
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
    L2_2 = DebugPrint
    L3_2 = A1_2[1]
    L2_2(L3_2)
    L2_2 = DebugPrint
    L3_2 = A1_2[2]
    L2_2(L3_2)
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
L0_1.PromptForGesture = L1_1
L0_1.TotalGestureTime = 1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetEventTimer
  L3_2 = "Gesture_Timer"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2.TotalGestureTime = A1_2
end
L0_1.SetGestureTimer = L1_1
L0_1.CurrentWaitEvents = nil
L0_1.ActivityCoroutine = nil
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
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlayActivityCutscene
  L3_2 = A1_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 == "CS_TRANS_MAT_RAMPTOAIR" then
    L3_2 = A0_2
    L2_2 = A0_2.Wait
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = PlayQueuedDialogue
    L3_2 = "MTG"
    L4_2 = "Announcement"
    L5_2 = "MidAir"
    L6_2 = 10
    L2_2(L3_2, L4_2, L5_2, L6_2)
  elseif A1_2 == "CS_TRANS_MCQS_RAMPTOAIR" then
    L3_2 = A0_2
    L2_2 = A0_2.Wait
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = PlayQueuedDialogue
    L3_2 = "MCQS"
    L4_2 = "Announcement"
    L5_2 = "MidAir"
    L6_2 = 10
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.PlayCutsceneAndWait = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = PlayToyDialogueMotion
  L4_2 = A1_2
  L5_2 = A2_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.WaitForEvent
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.PlayDialogueAndWait = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = SetCharacterAnimation
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A2_2
  L8_2 = A3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2.WaitForEvent
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.PlayCharacterAnimationAndWait = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.FadeOutScreenAndWait = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.FadeInScreenAndWait = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.Wait = L1_1
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
end
L0_1.ProcessEvent = L1_1
CT_SM01 = L0_1
L0_1 = CT_SM01
L1_1 = coroutine
L1_1 = L1_1.create
L2_1 = CT_SM01
L2_1 = L2_1.StuntMaterScript
L1_1 = L1_1(L2_1)
L0_1.ActivityCoroutine = L1_1
L0_1 = coroutine
L0_1 = L0_1.resume
L1_1 = CT_SM01
L1_1 = L1_1.ActivityCoroutine
L2_1 = CT_SM01
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 / A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2 * A1_2
  L3_2 = L2_2 + A1_2
  L4_2 = A0_2 - L2_2
  L5_2 = L3_2 - A0_2
  if L4_2 > L5_2 then
    return L3_2
  else
    return L2_2
  end
end
RoundToNearest = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GetTimeRemaining
  L1_2 = "Gesture_Timer"
  L0_2 = L0_2(L1_2)
  L1_2 = CT_SM01
  L1_2 = L1_2.TotalGestureTime
  L0_2 = L0_2 / L1_2
  return L0_2
end
GetGestureTime = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = CT_SM01
  L0_2 = L0_2.CurrentPlayerIndex
  return L0_2
end
GetCurrentPlayerIndex = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = CT_SM01
  L0_2 = L0_2.LastDrivingPointsAwarded
  if not L0_2 then
    L0_2 = ""
  end
  return L0_2
end
GetLastDrivingPoints = L0_1
