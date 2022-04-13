local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.CurrentWaitEvents = nil
L0_1.ActivityCoroutine = nil
L1_1 = "_BEFT_PSWIN"
L2_1 = math
L2_1 = L2_1.random
L3_1 = 5
L2_1 = L2_1(L3_1)
L1_1 = L1_1 .. L2_1
L0_1.MiaTiaPlayerWinAnimSuffix = L1_1
L1_1 = "_BEFT_PSLOSE"
L2_1 = math
L2_1 = L2_1.random
L3_1 = 4
L2_1 = L2_1(L3_1)
L1_1 = L1_1 .. L2_1
L0_1.MiaTiaPlayerLoseAnimSuffix = L1_1
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
  L3_2 = PlayToyDialogueMotion
  L4_2 = characterName
  L5_2 = A2_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.PlayDialogue = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2
  L3_2 = "_BEF_BREATH_B"
  L2_2 = L2_2 .. L3_2
  animName = L2_2
  L2_2 = false
  stopCurrent = L2_2
  L2_2 = SetCharacterAnimation
  L3_2 = A1_2
  L4_2 = animName
  L5_2 = animName
  L6_2 = stopCurrent
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1.MiaOrTiaBreath = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.MiaOrTiaBreath
  L3_2 = "MIA"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.MiaOrTiaBreath
  L3_2 = "TIA"
  L1_2(L2_2, L3_2)
end
L0_1.MiaTiaInit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = setvar
  L2_2 = "PauseMenuAllowed"
  L3_2 = 0
  L1_2(L2_2, L3_2)
  L1_2 = FadeInScreen
  L2_2 = 0
  L1_2(L2_2)
  L1_2 = "MiaTiaCam01"
  cameraName = L1_2
  L1_2 = "Anim\\MiaTiaCam01"
  animName = L1_2
  L1_2 = PlayCameraAnimationWithCallback
  L2_2 = cameraName
  L3_2 = animName
  L4_2 = animName
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = animName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2.MiaTiaPlayerWinAnimSuffix
  animSuffix = L1_2
  L1_2 = getvar
  L2_2 = "PlayerSucceeded"
  L1_2 = L1_2(L2_2)
  bPlayerSucceeded = L1_2
  L1_2 = DebugPrint
  L2_2 = "PlayerSucceded "
  L3_2 = bPlayerSucceeded
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = bPlayerSucceeded
  if L1_2 == 0 then
    L1_2 = A0_2.MiaTiaPlayerLoseAnimSuffix
    animSuffix = L1_2
  end
  L1_2 = "MIA"
  characterName = L1_2
  L1_2 = characterName
  L2_2 = animSuffix
  L1_2 = L1_2 .. L2_2
  animName = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.PlayDialogue
  L3_2 = characterName
  L4_2 = animName
  L5_2 = animName
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = animName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.MiaOrTiaBreath
  L3_2 = "MIA"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.Wait
  L3_2 = 0.5
  L1_2(L2_2, L3_2)
  L1_2 = "TIA"
  characterName = L1_2
  L1_2 = characterName
  L2_2 = animSuffix
  L1_2 = L1_2 .. L2_2
  animName = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.PlayDialogue
  L3_2 = characterName
  L4_2 = animName
  L5_2 = animName
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = animName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.MiaOrTiaBreath
  L3_2 = "TIA"
  L1_2(L2_2, L3_2)
  L1_2 = FadeOutScreen
  L2_2 = 1
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.Wait
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = setvar
  L2_2 = "MiaTiaReactionFinished"
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L1_2 = setvar
  L2_2 = "PauseMenuAllowed"
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1.MiaTiaReaction = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = DebugPrint
  L3_2 = "Photo Shoot event received: "
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  if A1_2 == "StylishSlowMotion" then
    L2_2 = HideHUD
    L2_2()
  elseif A1_2 == "CameraMovingToNext" then
    L2_2 = DebugPrint
    L3_2 = "Show buttons allowing player to switch to previous camera"
    L2_2(L3_2)
    L2_2 = CurrentHUD
    L3_2 = L2_2
    L2_2 = L2_2.EventHandler
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif A1_2 == "CameraMovingToPrev" then
    L2_2 = CurrentHUD
    L3_2 = L2_2
    L2_2 = L2_2.EventHandler
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif A1_2 == "CameraStopped" then
    L2_2 = CurrentHUD
    L3_2 = L2_2
    L2_2 = L2_2.EventHandler
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  elseif A1_2 == "MiaTiaReaction" then
    L2_2 = SetHUD
    L3_2 = "ExploreHUD"
    L2_2(L3_2)
    L2_2 = coroutine
    L2_2 = L2_2.create
    L3_2 = A0_2.MiaTiaReaction
    L2_2 = L2_2(L3_2)
    A0_2.ActivityCoroutine = L2_2
    L2_2 = coroutine
    L2_2 = L2_2.resume
    L3_2 = A0_2.ActivityCoroutine
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  else
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
end
L0_1.EventHandler = L1_1
PhotoShootMiniGame = L0_1
