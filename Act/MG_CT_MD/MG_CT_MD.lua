local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = IncludeScript
L1_1 = "C\\Act\\GlobalSettings.lua"
L0_1(L1_1)
L0_1 = {}
L0_1.CurrentWaitEvents = nil
function L1_1(A0_2, A1_2)
  A0_2.MaterdorSettings = A1_2
end
L0_1.ApplySettings = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.PlayerResults
  L2_2 = A0_2.CurrentPlayer
  L1_2 = L1_2[L2_2]
  L1_2 = L1_2.DodgeTime
  L2_2 = A0_2.Round
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = A0_2.GestureSet
    if L1_2 == "x360_wheel" then
      L1_2 = A0_2.PlayerResults
      L2_2 = A0_2.CurrentPlayer
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.DodgeTime
      L2_2 = A0_2.Round
      L1_2 = L1_2[L2_2]
      L2_2 = A0_2.MaterdorSettings
      L3_2 = A0_2.Round
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.TractorChargeDuration
      L3_2 = GlobalSettings
      L3_2 = L3_2.WheelTimeExtend
      L2_2 = L2_2 * L3_2
      L1_2 = L1_2 / L2_2
      L1_2 = L1_2 * 100
      return L1_2
    else
      L1_2 = A0_2.PlayerResults
      L2_2 = A0_2.CurrentPlayer
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.DodgeTime
      L2_2 = A0_2.Round
      L1_2 = L1_2[L2_2]
      L2_2 = A0_2.MaterdorSettings
      L3_2 = A0_2.Round
      L2_2 = L2_2[L3_2]
      L2_2 = L2_2.TractorChargeDuration
      L1_2 = L1_2 / L2_2
      L1_2 = L1_2 * 100
      return L1_2
    end
  else
    L1_2 = GetPercentTimeRemaining
    L2_2 = "Gesture_Timer"
    return L1_2(L2_2)
  end
end
L0_1.GetDodgeTimerPercent = L1_1
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
  A0_2.CurrentWaitEvents = nil
  return L2_2
end
L0_1.WaitForMultipleEvents = L1_1
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
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = PlayCameraAnimationWithCallback
  L4_2 = A1_2
  L5_2 = A2_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.WaitForEvent
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.PlayCameraAnimationAndWait = L1_1
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
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = PlayToyDialogueMotion
  L4_2 = characterName
  L5_2 = A2_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2.WaitForEvent
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.PlayToyDialogueMotionAndWait = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.PlayCutsceneAndWait = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = FadeOutScreen
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = SetEventTimer
  L3_2 = "FadeOutScreen"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "FadeOutScreen"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.FadeOutScreenAndWait = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = FadeInScreen
  L3_2 = A1_2
  L2_2(L3_2)
  L2_2 = SetEventTimer
  L3_2 = "FadeInScreen"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.WaitForEvent
  L4_2 = "FadeInScreen"
  L5_2 = A1_2
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
end
L0_1.FadeInScreenAndWait = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.BullAnger
  L2_2 = A0_2.MaterdorSettings
  L3_2 = A0_2.Round
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.HardThreshold
  if L1_2 > L2_2 then
    L2_2 = A0_2
    L1_2 = A0_2.PromptForGesture
    L3_2 = "hard"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2.BullAnger
    L2_2 = A0_2.MaterdorSettings
    L3_2 = A0_2.Round
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.MediumThreshold
    if L1_2 > L2_2 then
      L2_2 = A0_2
      L1_2 = A0_2.PromptForGesture
      L3_2 = "medium"
      L1_2(L2_2, L3_2)
    else
      L2_2 = A0_2
      L1_2 = A0_2.PromptForGesture
      L3_2 = "easy"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1.PromptForTauntGesture = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.PromptForGesture
  L3_2 = "dodge"
  L1_2(L2_2, L3_2)
end
L0_1.PromptForDodgeGesture = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.PromptForGesture
  L3_2 = "jump"
  L1_2(L2_2, L3_2)
end
L0_1.PromptForJumpGesture = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = GlobalSettings
  L2_2 = L2_2.Gestures
  L3_2 = A0_2.GestureSet
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2[A1_2]
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = #L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L2_2[L3_2]
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 == "table" then
    L4_2 = DebugPrint
    L5_2 = L3_2[1]
    L4_2(L5_2)
    L4_2 = DebugPrint
    L5_2 = L3_2[2]
    L4_2(L5_2)
    L4_2 = L3_2[2]
    if L4_2 == "LeftStick" then
      L4_2 = PromptForGesture
      L5_2 = L3_2[1]
      L6_2 = 1
      L4_2(L5_2, L6_2)
    else
      L4_2 = PromptForGesture
      L5_2 = L3_2[1]
      L6_2 = 2
      L4_2(L5_2, L6_2)
    end
  else
    L4_2 = PromptForGesture
    L5_2 = L3_2
    L6_2 = 0
    L4_2(L5_2, L6_2)
  end
end
L0_1.PromptForGesture = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == "StateChange_Intro" then
    L2_2 = coroutine
    L2_2 = L2_2.create
    L3_2 = A0_2.MaterdorScript
    L2_2 = L2_2(L3_2)
    A0_2.ActivityCoroutine = L2_2
    L2_2 = coroutine
    L2_2 = L2_2.resume
    L3_2 = A0_2.ActivityCoroutine
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  end
  if A1_2 ~= "Tick" then
    L2_2 = DebugPrint
    L3_2 = A1_2
    L2_2(L3_2)
  end
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
L0_1.EventHandler = L1_1
L1_1 = {}
L2_1 = {}
L2_1.TotalPoints = 0
L3_1 = {}
L2_1.RoundPoints = L3_1
L3_1 = {}
L2_1.DodgeTime = L3_1
L2_1.JumpedTime = 0
L3_1 = {}
L3_1.TotalPoints = 0
L4_1 = {}
L3_1.RoundPoints = L4_1
L4_1 = {}
L3_1.DodgeTime = L4_1
L3_1.JumpTime = 0
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1.PlayerResults = L1_1
L0_1.MaterdorSettings = nil
L0_1.BullAnger = 0
L0_1.Round = 1
L1_1 = GetNumPlayers
L1_1 = L1_1()
L0_1.NumPlayers = L1_1
L0_1.CurrentPlayer = 0
L1_1 = GetPlatform
L1_1 = L1_1()
L0_1.GestureSet = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = DebugPrint
  L2_2 = "Materdor Activity Start!"
  L1_2(L2_2)
  L1_2 = PushInputStack
  L1_2()
  L1_2 = SetPlayerInputEnabled
  L2_2 = 0
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = SetPlayerInputEnabled
  L2_2 = 1
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = SetHUD
  L2_2 = ""
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.FadeOutScreenAndWait
  L3_2 = 0.001
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "MTD"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = ClearParticles
  L1_2()
  L1_2 = A0_2.GestureSet
  if L1_2 == "ps3" then
    L1_2 = SixAxisEnabled
    L1_2 = L1_2()
    if L1_2 then
      A0_2.GestureSet = "sixaxis"
    end
  end
  L1_2 = A0_2.GestureSet
  if L1_2 ~= "x360" then
    L1_2 = A0_2.GestureSet
    if L1_2 ~= "x360_wheel" then
      goto lbl_46
    end
  end
  L1_2 = GetControllerConfig
  L2_2 = 1
  L1_2 = L1_2(L2_2)
  if L1_2 == 2 then
    A0_2.GestureSet = "x360_wheel"
  end
  ::lbl_46::
  A0_2.Round = 1
  A0_2.BullAnger = 0
  L1_2 = {}
  L2_2 = {}
  L2_2.TotalPoints = 0
  L3_2 = {}
  L2_2.RoundPoints = L3_2
  L3_2 = {}
  L2_2.DodgeTime = L3_2
  L2_2.JumpedTime = 0
  L3_2 = {}
  L3_2.TotalPoints = 0
  L4_2 = {}
  L3_2.RoundPoints = L4_2
  L4_2 = {}
  L3_2.DodgeTime = L4_2
  L3_2.JumpTime = 0
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2.PlayerResults = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.DisableAllToys
  L1_2(L2_2)
  L1_2 = SetToyPositionByMatrixToy
  L2_2 = "wallSmashStandIn01"
  L3_2 = "Bullseye01"
  L1_2(L2_2, L3_2)
  L1_2 = SetToyPositionByMatrixToy
  L2_2 = "wallSmashStandIn02"
  L3_2 = "Bullseye02"
  L1_2(L2_2, L3_2)
  L1_2 = SetToyPositionByMatrixToy
  L2_2 = "wallSmashStandIn03"
  L3_2 = "Bullseye03"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.PlayCameraAnimationAndWait
  L3_2 = "TauntingCamera01"
  L4_2 = "Anim\\OpeningCamera"
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.FadeInScreenAndWait
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "MTD"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = PlayQueuedDialogue
  L2_2 = "MTD"
  L3_2 = "StartTheEvent"
  L4_2 = "MG_CT_TD"
  L5_2 = 10
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.PlayCutsceneAndWait
  L3_2 = "CS_TRANS_MTDINTRO"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.Wait
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = PopInputStack
  L1_2()
  L1_2 = PushMenu
  L2_2 = "PreEvent"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = "LE_PREEVENT_FINISHED"
  L1_2(L2_2, L3_2)
  L1_2 = getvar
  L2_2 = "NeedToDisplayTutorial"
  L1_2 = L1_2(L2_2)
  if L1_2 == 1 then
    L1_2 = RaiseTutorial
    L2_2 = "CT_MD01"
    L1_2(L2_2)
    L1_2 = setvar
    L2_2 = "NeedToDisplayTutorial"
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.Wait
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "MTD"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "BUL1"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.PlayCutsceneAndWait
  L3_2 = "CS_TRANS_BULLINTRO"
  L1_2(L2_2, L3_2)
  while true do
    L1_2 = A0_2.Round
    L2_2 = A0_2.MaterdorSettings
    L2_2 = #L2_2
    if not (L1_2 <= L2_2) then
      break
    end
    L1_2 = ClearParticles
    L1_2()
    L1_2 = getvar
    L2_2 = "CurrentPlayerIndex"
    L1_2 = L1_2(L2_2)
    A0_2.CurrentPlayer = L1_2
    L1_2 = A0_2.PlayerResults
    L2_2 = A0_2.CurrentPlayer
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.RoundPoints
    L2_2 = A0_2.Round
    L1_2[L2_2] = 0
    L1_2 = SetHUD
    L2_2 = ""
    L1_2(L2_2)
    L1_2 = HUD_Gestures_Points
    if L1_2 == nil then
      L1_2 = AddOverlay
      L2_2 = "HUD_Gestures_Points"
      L1_2(L2_2)
    end
    L1_2 = PushInputStack
    L1_2()
    L1_2 = SetPlayerInputEnabled
    L2_2 = 0
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L1_2 = SetPlayerInputEnabled
    L2_2 = 1
    L3_2 = 0
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.FadeOutScreenAndWait
    L3_2 = 0.25
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2.DisableAllToys
    L1_2(L2_2)
    L1_2 = ""
    L2_2 = A0_2.CurrentPlayer
    if L2_2 == 1 then
      L1_2 = "MTD"
    else
      L1_2 = "McqD"
    end
    L2_2 = EnableToy
    L3_2 = L1_2
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = SetCharacterAnimation
    L3_2 = L1_2
    L4_2 = L1_2
    L5_2 = "_BEFT_IDLE1"
    L4_2 = L4_2 .. L5_2
    L5_2 = ""
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = SetToyPositionByMatrixToy
    L3_2 = L1_2
    L4_2 = A0_2.MaterdorSettings
    L5_2 = A0_2.Round
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.CharacterPositionToy
    L2_2(L3_2, L4_2)
    L2_2 = EnableToy
    L3_2 = "wallSmashStandIn0"
    L4_2 = A0_2.Round
    L3_2 = L3_2 .. L4_2
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = SetToyPositionByMatrixToy
    L3_2 = "BUL1"
    L4_2 = "TractorStartPosition"
    L2_2(L3_2, L4_2)
    L2_2 = SetToyLookAtByMatrixToy
    L3_2 = "BUL1"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    L2_2 = PlayCameraAnimation
    L3_2 = "TauntingCamera01"
    L4_2 = "Anim\\TauntingCamera"
    L5_2 = Make2DigitString
    L6_2 = A0_2.Round
    L6_2 = L6_2 + 8
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.FadeInScreenAndWait
    L4_2 = 0.25
    L2_2(L3_2, L4_2)
    L2_2 = PopInputStack
    L2_2()
    L3_2 = A0_2
    L2_2 = A0_2.SetGestureTimer
    L4_2 = A0_2.MaterdorSettings
    L5_2 = A0_2.Round
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.TauntInputTimeout
    L2_2(L3_2, L4_2)
    L2_2 = SetHUD
    L3_2 = "HUD_Materdor_1"
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.PromptForTauntGesture
    L2_2(L3_2)
    while true do
      L2_2 = A0_2.BullAnger
      if not (L2_2 < 100) then
        break
      end
      L2_2 = GetTimeRemaining
      L3_2 = "Gesture_Timer"
      L2_2 = L2_2(L3_2)
      if not (0 < L2_2) then
        break
      end
      L3_2 = A0_2
      L2_2 = A0_2.WaitForMultipleEvents
      L4_2 = {}
      L5_2 = "Gesture_Timer"
      L6_2 = "PerformedGesture"
      L4_2[1] = L5_2
      L4_2[2] = L6_2
      L2_2 = L2_2(L3_2, L4_2)
      if L2_2 ~= "PerformedGesture" then
        break
      end
      L2_2 = DebugPrint
      L3_2 = A0_2.BullAnger
      L2_2(L3_2)
      L2_2 = RemoveGesturePrompt
      L2_2()
      L2_2 = PlaySoundEffect
      L3_2 = "SFX\\Activities\\GesturePass"
      L2_2(L3_2)
      L2_2 = A0_2.BullAnger
      L3_2 = A0_2.MaterdorSettings
      L4_2 = A0_2.Round
      L3_2 = L3_2[L4_2]
      L3_2 = L3_2.AngerBoostPerTaunt
      L2_2 = L2_2 + L3_2
      A0_2.BullAnger = L2_2
      L3_2 = A0_2
      L2_2 = A0_2.AwardPointsForTaunt
      L4_2 = A0_2.CurrentPlayer
      L2_2(L3_2, L4_2)
      L2_2 = SetEventTimer
      L3_2 = "TauntDelay"
      L4_2 = 0.5
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.WaitForEvent
      L4_2 = "TauntDelay"
      L2_2(L3_2, L4_2)
      L2_2 = A0_2.BullAnger
      if L2_2 < 100 then
        L3_2 = A0_2
        L2_2 = A0_2.PromptForTauntGesture
        L2_2(L3_2)
      end
    end
    L2_2 = RemoveGesturePrompt
    L2_2()
    L2_2 = A0_2.BullAnger
    if 100 <= L2_2 then
      L2_2 = PlaySoundEffect
      L3_2 = "SFX\\MG\\CT_MD_TauntPass"
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2.PlayCharacterAnimationAndWait
      L4_2 = L1_2
      L5_2 = L1_2
      L6_2 = "_BEFT_TAUNT"
      L7_2 = math
      L7_2 = L7_2.random
      L8_2 = 8
      L7_2 = L7_2(L8_2)
      L5_2 = L5_2 .. L6_2 .. L7_2
      L6_2 = false
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
    L2_2 = PlayCameraAnimation
    L3_2 = "TauntingCamera01"
    L4_2 = "Anim\\TauntingCamera"
    L5_2 = Make2DigitString
    L6_2 = A0_2.Round
    L6_2 = L6_2 + 4
    L5_2 = L5_2(L6_2)
    L4_2 = L4_2 .. L5_2
    L2_2(L3_2, L4_2)
    L2_2 = PlayQueuedDialogue
    L3_2 = L1_2
    L4_2 = "Cool"
    L5_2 = nil
    L6_2 = 10
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = A0_2
    L2_2 = A0_2.PlayCharacterAnimationAndWait
    L4_2 = "BUL1"
    L5_2 = "BUL_BEFT_ANGER"
    L6_2 = math
    L6_2 = L6_2.random
    L7_2 = 8
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = SetHUD
    L3_2 = "HUD_Materdor_2"
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2.SetGestureTimer
    L4_2 = A0_2.MaterdorSettings
    L5_2 = A0_2.Round
    L4_2 = L4_2[L5_2]
    L4_2 = L4_2.TractorChargeDuration
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.PlayCameraAnimationAndWait
    L4_2 = "TauntingCamera01"
    L5_2 = "Anim\\TauntingCamera"
    L6_2 = Make2DigitString
    L7_2 = A0_2.Round
    L7_2 = L7_2 + 12
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 .. L6_2
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = SetCharacterAnimation
    L3_2 = "BUL1"
    L4_2 = "BUL_BEFT_CHARGE"
    L5_2 = ""
    L6_2 = false
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = PlaySoundEffect
    L3_2 = "SFX\\MG\\CT_MD_Charge"
    L2_2(L3_2)
    L2_2 = EnableToy
    L3_2 = "BUL1_TreadDirt_L"
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = EnableToy
    L3_2 = "BUL1_TreadDirt_R"
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = EnableToy
    L3_2 = "BUL1_TreadDust_L"
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = EnableToy
    L3_2 = "BUL1_TreadDust_R"
    L4_2 = 1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2.GestureSet
    if L2_2 == "x360_wheel" then
      L2_2 = MoveToyWithConstantAccel
      L3_2 = "BUL1"
      L4_2 = "CollidePoint0"
      L5_2 = A0_2.Round
      L4_2 = L4_2 .. L5_2
      L5_2 = A0_2.MaterdorSettings
      L6_2 = A0_2.Round
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.TractorChargeDuration
      L6_2 = GlobalSettings
      L6_2 = L6_2.WheelTimeExtend
      L5_2 = L5_2 * L6_2
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = MoveToyWithConstantAccel
      L3_2 = "BUL1"
      L4_2 = "CollidePoint0"
      L5_2 = A0_2.Round
      L4_2 = L4_2 .. L5_2
      L5_2 = A0_2.MaterdorSettings
      L6_2 = A0_2.Round
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.TractorChargeDuration
      L2_2(L3_2, L4_2, L5_2)
    end
    L3_2 = A0_2
    L2_2 = A0_2.PromptForDodgeGesture
    L2_2(L3_2)
    L2_2 = GetCurrentGesturePrompt
    L2_2 = L2_2()
    L4_2 = A0_2
    L3_2 = A0_2.WaitForMultipleEvents
    L5_2 = {}
    L6_2 = "Gesture_Timer"
    L7_2 = "PerformedGesture"
    L5_2[1] = L6_2
    L5_2[2] = L7_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 == "PerformedGesture" then
      L4_2 = RemoveGesturePrompt
      L4_2()
      L4_2 = PlaySoundEffect
      L5_2 = "SFX\\MG\\CT_MD_DodgePass"
      L4_2(L5_2)
      L4_2 = PlayQueuedDialogue
      L5_2 = L1_2
      L6_2 = "Announcement"
      L7_2 = "Dodge"
      L8_2 = 10
      L4_2(L5_2, L6_2, L7_2, L8_2)
      if L2_2 == "FlickRight" or L2_2 == "FlickRightStick" then
        L4_2 = SetCharacterAnimation
        L5_2 = L1_2
        L6_2 = L1_2
        L7_2 = "_BEFT_SIDESTEPR"
        L6_2 = L6_2 .. L7_2
        L7_2 = ""
        L8_2 = false
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L4_2 = SetCharacterAnimation
        L5_2 = L1_2
        L6_2 = L1_2
        L7_2 = "_BEFT_SIDESTEPL"
        L6_2 = L6_2 .. L7_2
        L7_2 = ""
        L8_2 = false
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      L4_2 = A0_2.PlayerResults
      L5_2 = A0_2.CurrentPlayer
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.DodgeTime
      L5_2 = A0_2.Round
      L6_2 = GetTimeRemaining
      L7_2 = "Gesture_Timer"
      L6_2 = L6_2(L7_2)
      L4_2[L5_2] = L6_2
      L5_2 = A0_2
      L4_2 = A0_2.WaitForEvent
      L6_2 = "Gesture_Timer"
      L4_2(L5_2, L6_2)
      L4_2 = StopSoundEffect
      L5_2 = "SFX\\MG\\CT_MD_Charge"
      L4_2(L5_2)
      L4_2 = EnableToy
      L5_2 = L1_2
      L6_2 = 0
      L4_2(L5_2, L6_2)
      L4_2 = EnableToy
      L5_2 = "wallSmashStandIn01"
      L6_2 = 0
      L4_2(L5_2, L6_2)
      L4_2 = EnableToy
      L5_2 = "wallSmashStandIn02"
      L6_2 = 0
      L4_2(L5_2, L6_2)
      L4_2 = EnableToy
      L5_2 = "wallSmashStandIn03"
      L6_2 = 0
      L4_2(L5_2, L6_2)
      L4_2 = StopMovers
      L4_2()
      L4_2 = A0_2.BullAnger
      L5_2 = A0_2.MaterdorSettings
      L6_2 = A0_2.Round
      L5_2 = L5_2[L6_2]
      L5_2 = L5_2.TargetBreakAnger
      if L4_2 > L5_2 then
        L4_2 = EnableToyGroup
        L5_2 = "CS_TRANS_WALLHIT"
        L6_2 = true
        L4_2(L5_2, L6_2)
        L5_2 = A0_2
        L4_2 = A0_2.PlayCutsceneAndWait
        L6_2 = "CS_TRANS_WALLHIT"
        L4_2(L5_2, L6_2)
        L5_2 = A0_2
        L4_2 = A0_2.AwardPointsForTargetBreak
        L6_2 = A0_2.CurrentPlayer
        L4_2(L5_2, L6_2)
      else
        L4_2 = EnableToyGroup
        L5_2 = "CS_TRANS_WALLHIT2"
        L6_2 = true
        L4_2(L5_2, L6_2)
        L5_2 = A0_2
        L4_2 = A0_2.PlayCutsceneAndWait
        L6_2 = "CS_TRANS_WALLHIT2"
        L4_2(L5_2, L6_2)
      end
      L5_2 = A0_2
      L4_2 = A0_2.AwardPointsForDodge
      L6_2 = A0_2.CurrentPlayer
      L4_2(L5_2, L6_2)
      L4_2 = HideHUD
      L4_2()
      L5_2 = A0_2
      L4_2 = A0_2.PlayCameraAnimationAndWait
      L6_2 = "TauntingCamera01"
      L7_2 = "Anim\\ReactionCamera"
      L4_2(L5_2, L6_2, L7_2)
      if L1_2 == "MTD" then
        L4_2 = "MIA_A"
        characterName = L4_2
        L4_2 = "MIAM_BEFT_CTMDMAT"
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 4
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 .. L5_2
        animName = L4_2
        L5_2 = A0_2
        L4_2 = A0_2.PlayToyDialogueMotionAndWait
        L6_2 = characterName
        L7_2 = animName
        L8_2 = animName
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = "TIA_A"
        characterName = L4_2
        L4_2 = "TIAM_BEFT_CTMDMAT"
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 3
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 .. L5_2
        animName = L4_2
        L5_2 = A0_2
        L4_2 = A0_2.PlayToyDialogueMotionAndWait
        L6_2 = characterName
        L7_2 = animName
        L8_2 = animName
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L5_2 = A0_2
        L4_2 = A0_2.Wait
        L6_2 = 1
        L4_2(L5_2, L6_2)
      else
        L4_2 = "MIA_A"
        characterName = L4_2
        L4_2 = "MIAM_BEFT_CTMDMCQ"
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 4
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 .. L5_2
        animName = L4_2
        L5_2 = A0_2
        L4_2 = A0_2.PlayToyDialogueMotionAndWait
        L6_2 = characterName
        L7_2 = animName
        L8_2 = animName
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = "TIA_A"
        characterName = L4_2
        L4_2 = "TIAM_BEFT_CTMDMCQ"
        L5_2 = math
        L5_2 = L5_2.random
        L6_2 = 3
        L5_2 = L5_2(L6_2)
        L4_2 = L4_2 .. L5_2
        animName = L4_2
        L5_2 = A0_2
        L4_2 = A0_2.PlayToyDialogueMotionAndWait
        L6_2 = characterName
        L7_2 = animName
        L8_2 = animName
        L4_2(L5_2, L6_2, L7_2, L8_2)
        L5_2 = A0_2
        L4_2 = A0_2.Wait
        L6_2 = 1
        L4_2(L5_2, L6_2)
      end
      L4_2 = ShowHUD
      L4_2()
      L4_2 = A0_2.PlayerResults
      L5_2 = A0_2.CurrentPlayer
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.DodgeTime
      L5_2 = A0_2.Round
      L4_2 = L4_2[L5_2]
      if 0 < L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2.AwardRoundPointsToTotal
        L6_2 = A0_2.CurrentPlayer
        L4_2(L5_2, L6_2)
      end
    else
      L4_2 = RemoveGesturePrompt
      L4_2()
      L4_2 = StopSoundEffect
      L5_2 = "sfx\\MG\\CT_MD_Charge"
      L4_2(L5_2)
      L4_2 = PlaySoundEffect
      L5_2 = "SFX\\MG\\CT_MD_DodgeFail"
      L4_2(L5_2)
      if L1_2 == "MTD" then
        L4_2 = PlayQueuedDialogue
        L5_2 = "MTD"
        L6_2 = "Hit"
        L7_2 = nil
        L8_2 = 10
        L4_2(L5_2, L6_2, L7_2, L8_2)
      else
        L4_2 = PlayQueuedDialogue
        L5_2 = "MCQD"
        L6_2 = "Hit"
        L7_2 = nil
        L8_2 = 10
        L4_2(L5_2, L6_2, L7_2, L8_2)
      end
      L5_2 = A0_2
      L4_2 = A0_2.PlayCharacterAnimationAndWait
      L6_2 = L1_2
      L7_2 = L1_2
      L8_2 = "_BEFT_HIT1"
      L7_2 = L7_2 .. L8_2
      L8_2 = false
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = A0_2
      L4_2 = A0_2.PlayCameraAnimationAndWait
      L6_2 = "TauntingCamera01"
      L7_2 = "Anim\\ReactionCamera"
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = "MIA_A"
      characterName = L4_2
      L4_2 = "MIAM_BEFT_CTMDBULL"
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 2
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2 .. L5_2
      animName = L4_2
      L5_2 = A0_2
      L4_2 = A0_2.PlayToyDialogueMotionAndWait
      L6_2 = characterName
      L7_2 = animName
      L8_2 = animName
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = A0_2
      L4_2 = A0_2.Wait
      L6_2 = 0.5
      L4_2(L5_2, L6_2)
      L4_2 = "TIA_A"
      characterName = L4_2
      L4_2 = "TIAM_BEFT_CTMDBULL"
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 2
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2 .. L5_2
      animName = L4_2
      L5_2 = A0_2
      L4_2 = A0_2.PlayToyDialogueMotionAndWait
      L6_2 = characterName
      L7_2 = animName
      L8_2 = animName
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L5_2 = A0_2
      L4_2 = A0_2.Wait
      L6_2 = 1
      L4_2(L5_2, L6_2)
    end
    L4_2 = EnableToy
    L5_2 = "BUL1_TreadDirt_L"
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = EnableToy
    L5_2 = "BUL1_TreadDirt_R"
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = EnableToy
    L5_2 = "BUL1_TreadDust_L"
    L6_2 = 0
    L4_2(L5_2, L6_2)
    L4_2 = EnableToy
    L5_2 = "BUL1_TreadDust_R"
    L6_2 = 0
    L4_2(L5_2, L6_2)
    A0_2.BullAnger = 0
    L4_2 = A0_2.Round
    L5_2 = A0_2.MaterdorSettings
    L5_2 = #L5_2
    if L4_2 == L5_2 then
      L4_2 = A0_2.PlayerResults
      L5_2 = A0_2.CurrentPlayer
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.RoundPoints
      L5_2 = A0_2.Round
      L4_2[L5_2] = 0
      L4_2 = EnableToyGroup
      L5_2 = "CS_TRANS_WALLHIT"
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = EnableToyGroup
      L5_2 = "CS_TRANS_WALLHIT2"
      L6_2 = false
      L4_2(L5_2, L6_2)
      L4_2 = HideHUD
      L4_2()
      L5_2 = A0_2
      L4_2 = A0_2.PlayCutsceneAndWait
      L6_2 = "CS_TRANS_3BULLINTRO"
      L4_2(L5_2, L6_2)
      L4_2 = ClearParticles
      L4_2()
      L4_2 = SetHUD
      L5_2 = "HUD_Materdor_3"
      L4_2(L5_2)
      L4_2 = EnableToy
      L5_2 = "BUL1"
      L6_2 = 1
      L4_2(L5_2, L6_2)
      L4_2 = EnableToy
      L5_2 = "BUL2"
      L6_2 = 1
      L4_2(L5_2, L6_2)
      L4_2 = EnableToy
      L5_2 = "BUL3"
      L6_2 = 1
      L4_2(L5_2, L6_2)
      L4_2 = SetToyPositionByMatrixToy
      L5_2 = "BUL1"
      L6_2 = "TripleChargeTractorPos01"
      L4_2(L5_2, L6_2)
      L4_2 = SetToyPositionByMatrixToy
      L5_2 = "BUL2"
      L6_2 = "TripleChargeTractorPos02"
      L4_2(L5_2, L6_2)
      L4_2 = SetToyPositionByMatrixToy
      L5_2 = "BUL3"
      L6_2 = "TripleChargeTractorPos03"
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2.PlayCameraAnimationAndWait
      L6_2 = "TauntingCamera01"
      L7_2 = "Anim\\OpeningCamera"
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = SetCharacterAnimation
      L5_2 = "BUL1"
      L6_2 = "BUL_BEFT_CHARGE"
      L7_2 = ""
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = SetCharacterAnimation
      L5_2 = "BUL2"
      L6_2 = "BUL_BEFT_CHARGE"
      L7_2 = ""
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = SetCharacterAnimation
      L5_2 = "BUL3"
      L6_2 = "BUL_BEFT_CHARGE"
      L7_2 = ""
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = SetToyPositionByMatrixToy
      L5_2 = L1_2
      L6_2 = "PlayerOneTripleChargePosition"
      L4_2(L5_2, L6_2)
      L4_2 = SetCharacterAnimation
      L5_2 = L1_2
      L6_2 = L1_2
      L7_2 = "_BEFT_IDLE1"
      L6_2 = L6_2 .. L7_2
      L7_2 = ""
      L8_2 = true
      L4_2(L5_2, L6_2, L7_2, L8_2)
      L4_2 = A0_2.GestureSet
      if L4_2 == "x360_wheel" then
        L4_2 = MoveToyWithConstantAccel
        L5_2 = "BUL1"
        L6_2 = "TripleChargeTractorDest01"
        L7_2 = A0_2.MaterdorSettings
        L7_2 = L7_2.TripleChargeDuration
        L8_2 = GlobalSettings
        L8_2 = L8_2.WheelTimeExtend
        L7_2 = L7_2 * L8_2
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = MoveToyWithConstantAccel
        L5_2 = "BUL2"
        L6_2 = "TripleChargeTractorDest02"
        L7_2 = A0_2.MaterdorSettings
        L7_2 = L7_2.TripleChargeDuration
        L8_2 = GlobalSettings
        L8_2 = L8_2.WheelTimeExtend
        L7_2 = L7_2 * L8_2
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = MoveToyWithConstantAccel
        L5_2 = "BUL3"
        L6_2 = "TripleChargeTractorDest03"
        L7_2 = A0_2.MaterdorSettings
        L7_2 = L7_2.TripleChargeDuration
        L8_2 = GlobalSettings
        L8_2 = L8_2.WheelTimeExtend
        L7_2 = L7_2 * L8_2
        L4_2(L5_2, L6_2, L7_2)
      else
        L4_2 = MoveToyWithConstantAccel
        L5_2 = "BUL1"
        L6_2 = "TripleChargeTractorDest01"
        L7_2 = A0_2.MaterdorSettings
        L7_2 = L7_2.TripleChargeDuration
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = MoveToyWithConstantAccel
        L5_2 = "BUL2"
        L6_2 = "TripleChargeTractorDest02"
        L7_2 = A0_2.MaterdorSettings
        L7_2 = L7_2.TripleChargeDuration
        L4_2(L5_2, L6_2, L7_2)
        L4_2 = MoveToyWithConstantAccel
        L5_2 = "BUL3"
        L6_2 = "TripleChargeTractorDest03"
        L7_2 = A0_2.MaterdorSettings
        L7_2 = L7_2.TripleChargeDuration
        L4_2(L5_2, L6_2, L7_2)
      end
      L5_2 = A0_2
      L4_2 = A0_2.SetGestureTimer
      L6_2 = A0_2.MaterdorSettings
      L6_2 = L6_2.TripleChargeDuration
      L4_2(L5_2, L6_2)
      L4_2 = SetEventTimer
      L5_2 = "TripleCharge_PromptStart"
      L6_2 = A0_2.MaterdorSettings
      L6_2 = L6_2.TripleChargeDodgeWindow
      L6_2 = L6_2.Start
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2.WaitForEvent
      L6_2 = "TripleCharge_PromptStart"
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2.PromptForJumpGesture
      L4_2(L5_2)
      L4_2 = SetEventTimer
      L5_2 = "TripleCharge_PromptEnd"
      L6_2 = A0_2.MaterdorSettings
      L6_2 = L6_2.TripleChargeDodgeWindow
      L6_2 = L6_2.End
      L7_2 = A0_2.MaterdorSettings
      L7_2 = L7_2.TripleChargeDodgeWindow
      L7_2 = L7_2.Start
      L6_2 = L6_2 - L7_2
      L4_2(L5_2, L6_2)
      L5_2 = A0_2
      L4_2 = A0_2.WaitForMultipleEvents
      L6_2 = {}
      L7_2 = "TripleCharge_PromptEnd"
      L8_2 = "PerformedGesture"
      L6_2[1] = L7_2
      L6_2[2] = L8_2
      L4_2 = L4_2(L5_2, L6_2)
      L5_2 = RemoveGesturePrompt
      L5_2()
      if L4_2 == "TripleCharge_PromptEnd" then
        L6_2 = A0_2
        L5_2 = A0_2.WaitForEvent
        L7_2 = "Gesture_Timer"
        L5_2(L6_2, L7_2)
        L5_2 = StopMovers
        L5_2()
        L6_2 = A0_2
        L5_2 = A0_2.PlayCutsceneAndWait
        L7_2 = "CS_TRANS_"
        L8_2 = L1_2
        L9_2 = "FAIL"
        L7_2 = L7_2 .. L8_2 .. L9_2
        L5_2(L6_2, L7_2)
      else
        L5_2 = A0_2.PlayerResults
        L6_2 = A0_2.CurrentPlayer
        L5_2 = L5_2[L6_2]
        L6_2 = A0_2.PlayerResults
        L7_2 = A0_2.CurrentPlayer
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.TotalPoints
        L6_2 = L6_2 + 1000
        L5_2.TotalPoints = L6_2
        L5_2 = A0_2.PlayerResults
        L6_2 = A0_2.CurrentPlayer
        L5_2 = L5_2[L6_2]
        L6_2 = GetTimeRemaining
        L7_2 = "Gesture_Timer"
        L6_2 = L6_2(L7_2)
        L5_2.JumpTime = L6_2
        L5_2 = SetCharacterAnimation
        L6_2 = L1_2
        L7_2 = L1_2
        L8_2 = "_BEFT_BULJUMP"
        L7_2 = L7_2 .. L8_2
        L8_2 = "BULJUMP"
        L9_2 = false
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L6_2 = A0_2
        L5_2 = A0_2.WaitForMultipleEvents
        L7_2 = {}
        L8_2 = "BULJUMP"
        L9_2 = "Gesture_Timer"
        L7_2[1] = L8_2
        L7_2[2] = L9_2
        L5_2(L6_2, L7_2)
        L5_2 = StopMovers
        L5_2()
        L5_2 = PlayQueuedDialogue
        L6_2 = L1_2
        L7_2 = "Complete"
        L8_2 = "MG_CT_MD"
        L9_2 = 10
        L5_2(L6_2, L7_2, L8_2, L9_2)
        L6_2 = A0_2
        L5_2 = A0_2.PlayCutsceneAndWait
        L7_2 = "CS_TRANS_"
        L8_2 = L1_2
        L9_2 = "WIN"
        L7_2 = L7_2 .. L8_2 .. L9_2
        L5_2(L6_2, L7_2)
        L5_2 = SetPlayerScore
        L6_2 = A0_2.CurrentPlayer
        L6_2 = L6_2 - 1
        L7_2 = A0_2.PlayerResults
        L8_2 = A0_2.CurrentPlayer
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.TotalPoints
        L5_2(L6_2, L7_2)
      end
    end
    L4_2 = A0_2.CurrentPlayer
    L5_2 = A0_2.NumPlayers
    if L4_2 < L5_2 then
      L4_2 = DebugPrint
      L5_2 = "NumPlayers = "
      L6_2 = A0_2.NumPlayers
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
      L4_2 = setvar
      L5_2 = "CurrentPlayerIndex"
      L6_2 = A0_2.CurrentPlayer
      L6_2 = L6_2 + 1
      L4_2(L5_2, L6_2)
    else
      L4_2 = setvar
      L5_2 = "CurrentPlayerIndex"
      L6_2 = 1
      L4_2(L5_2, L6_2)
      L4_2 = A0_2.Round
      L4_2 = L4_2 + 1
      A0_2.Round = L4_2
    end
  end
  L1_2 = AwardMaterdorBonusPoints
  L2_2 = A0_2.PlayerResults
  L2_2 = L2_2[1]
  L2_2 = L2_2.TotalPoints
  L1_2(L2_2)
  L1_2 = EndActivity
  L1_2()
end
L0_1.MaterdorScript = L1_1
L0_1.ActivityCoroutine = nil
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.BullAnger
  L2_2 = A0_2.MaterdorSettings
  L3_2 = A0_2.Round
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.HardThreshold
  if L1_2 > L2_2 then
    L1_2 = A0_2.MaterdorSettings
    L2_2 = A0_2.Round
    L1_2 = L1_2[L2_2]
    L1_2 = L1_2.PointsPerHardTaunt
    return L1_2
  else
    L1_2 = A0_2.BullAnger
    L2_2 = A0_2.MaterdorSettings
    L3_2 = A0_2.Round
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.MediumThreshold
    if L1_2 > L2_2 then
      L1_2 = A0_2.MaterdorSettings
      L2_2 = A0_2.Round
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.PointsPerMediumTaunt
      return L1_2
    else
      L1_2 = A0_2.MaterdorSettings
      L2_2 = A0_2.Round
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.PointsPerEasyTaunt
      return L1_2
    end
  end
end
L0_1.GetPointsForTaunt = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2.GetPointsForTaunt
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2.PlayerResults
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.RoundPoints
  L4_2 = A0_2.Round
  L5_2 = A0_2.PlayerResults
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.RoundPoints
  L6_2 = A0_2.Round
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2 + L2_2
  L3_2[L4_2] = L5_2
  L3_2 = ShowPointsReceived
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1.AwardPointsForTaunt = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.MaterdorSettings
  L3_2 = A0_2.Round
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.DodgePoints
  L3_2 = A0_2.PlayerResults
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.RoundPoints
  L4_2 = A0_2.Round
  L5_2 = A0_2.PlayerResults
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.RoundPoints
  L6_2 = A0_2.Round
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2 + L2_2
  L3_2[L4_2] = L5_2
  L3_2 = ShowPointsReceived
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1.AwardPointsForDodge = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.MaterdorSettings
  L3_2 = A0_2.Round
  L2_2 = L2_2[L3_2]
  L2_2 = L2_2.TargetBreakPoints
  L3_2 = A0_2.PlayerResults
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.RoundPoints
  L4_2 = A0_2.Round
  L5_2 = A0_2.PlayerResults
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.RoundPoints
  L6_2 = A0_2.Round
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2 + L2_2
  L3_2[L4_2] = L5_2
  L3_2 = ShowPointsReceived
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1.AwardPointsForTargetBreak = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.PlayerResults
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.DodgeTime
  L3_2 = A0_2.Round
  L2_2 = L2_2[L3_2]
  L3_2 = A0_2.MaterdorSettings
  L4_2 = A0_2.Round
  L3_2 = L3_2[L4_2]
  L3_2 = L3_2.TractorChargeDuration
  L2_2 = L2_2 / L3_2
  L2_2 = L2_2 * 100
  L3_2 = A0_2.PlayerResults
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.RoundPoints
  L4_2 = A0_2.Round
  L3_2 = L3_2[L4_2]
  L4_2 = GetDodgeMultiplier
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2 = L3_2 * L4_2
  L4_2 = A0_2.PlayerResults
  L4_2 = L4_2[A1_2]
  L5_2 = A0_2.PlayerResults
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.TotalPoints
  L5_2 = L5_2 + L3_2
  L4_2.TotalPoints = L5_2
  L4_2 = ShowPointsReceived
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1.AwardRoundPointsToTotal = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = EnableToy
  L2_2 = "BUL1"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "BUL2"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "BUL3"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "MTD"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "MCQD"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "wallSmash"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "wallSmash2"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "wallSmashStandIn01"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "wallSmashStandIn02"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = EnableToy
  L2_2 = "wallSmashStandIn03"
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1.DisableAllToys = L1_1
L0_1.TotalGestureTime = 1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.GestureSet
  if L2_2 == "x360_wheel" then
    L2_2 = GlobalSettings
    L2_2 = L2_2.WheelTimeExtend
    A1_2 = A1_2 * L2_2
  end
  L2_2 = SetEventTimer
  L3_2 = "Gesture_Timer"
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2.TotalGestureTime = A1_2
end
L0_1.SetGestureTimer = L1_1
MaterdorMinigame = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = MaterdorMinigame
  L1_2 = L1_2.PlayerResults
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.TotalPoints
  return L1_2
end
GetTotalPointsForPlayer = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = MaterdorMinigame
  L1_2 = L1_2.PlayerResults
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.RoundPoints
  L2_2 = MaterdorMinigame
  L2_2 = L2_2.Round
  L1_2 = L1_2[L2_2]
  if L1_2 then
    L1_2 = MaterdorMinigame
    L1_2 = L1_2.PlayerResults
    L1_2 = L1_2[A0_2]
    L1_2 = L1_2.RoundPoints
    L2_2 = MaterdorMinigame
    L2_2 = L2_2.Round
    L1_2 = L1_2[L2_2]
    return L1_2
  else
    L1_2 = 0
    return L1_2
  end
end
GetRoundPointsForPlayer = L0_1
function L0_1(A0_2)
  local L1_2
  L1_2 = ""
  if A0_2 == 1 then
    L1_2 = "Mater"
  else
    L1_2 = "McQueen"
  end
  return L1_2
end
GetPlayerName = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = MaterdorMinigame
  L1_2 = L0_2
  L0_2 = L0_2.GetDodgeTimerPercent
  return L0_2(L1_2)
end
GetDodgeTimerPercent = L0_1
function L0_1(A0_2)
  local L1_2
  if A0_2 < 20 then
    L1_2 = 8
    return L1_2
  elseif A0_2 < 40 then
    L1_2 = 6
    return L1_2
  elseif A0_2 < 60 then
    L1_2 = 4
    return L1_2
  elseif A0_2 < 80 then
    L1_2 = 2
    return L1_2
  else
    L1_2 = 1
    return L1_2
  end
end
GetDodgeMultiplier = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = MaterdorMinigame
  L1_2 = L0_2
  L0_2 = L0_2.GetPointsForTaunt
  return L0_2(L1_2)
end
GetCurrentTauntValue = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = MaterdorMinigame
  L0_2 = L0_2.BullAnger
  return L0_2
end
GetAngerPercent = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = HUD_Gestures_Points
  if L1_2 ~= nil then
    L1_2 = HUD_Gestures_Points
    L2_2 = L1_2
    L1_2 = L1_2.GiveBonus
    L3_2 = 0
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  end
end
ShowPointsReceived = L0_1
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
function L0_1(A0_2)
  local L1_2, L2_2
  if A0_2 < 10 then
    L1_2 = 0
    L2_2 = A0_2
    L1_2 = L1_2 .. L2_2
    return L1_2
  else
    return A0_2
  end
end
Make2DigitString = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GetTimeRemaining
  L1_2 = "Gesture_Timer"
  L0_2 = L0_2(L1_2)
  L1_2 = MaterdorMinigame
  L1_2 = L1_2.TotalGestureTime
  L0_2 = L0_2 / L1_2
  return L0_2
end
GetGestureTime = L0_1
