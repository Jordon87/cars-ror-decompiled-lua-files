local L0_1, L1_1
L0_1 = {}
L0_1.EnemyAIName = "MachAI2"
L1_1 = {}
L0_1.CurrentWaitEvents = L1_1
L0_1.ActivityCoroutine = nil
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = DebugPrint
  L3_2 = A1_2
  L2_2(L3_2)
  if A1_2 == "begin" then
    A0_2.CurrentWaitEvents = nil
    L2_2 = coroutine
    L2_2 = L2_2.create
    L3_2 = A0_2.TokyoDriftScript
    L2_2 = L2_2(L3_2)
    A0_2.ActivityCoroutine = L2_2
    L2_2 = coroutine
    L2_2 = L2_2.resume
    L3_2 = A0_2.ActivityCoroutine
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
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
MG_CT_TD = L0_1
L0_1 = MG_CT_TD
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = "TokyoIntroVO"
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.Wait
  L3_2 = 1.5
  L1_2(L2_2, L3_2)
  L1_2 = GetNumPlayers
  L1_2 = L1_2()
  if L1_2 == 1 then
    L1_2 = "MIAT"
    L2_2 = "MIAT_BEFT_CTTDMATST"
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = 2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2.Wait
    L5_2 = 0.5
    L3_2(L4_2, L5_2)
    L1_2 = "TIAT"
    L3_2 = "TIAT_BEFT_CTTDMATST"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 2
    L4_2 = L4_2(L5_2)
    L2_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = PlayQueuedDialogue
    L4_2 = "MATT"
    L5_2 = "Announcement"
    L6_2 = "CT_TDstart"
    L7_2 = 10
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = "MIAT"
    L2_2 = "MIAT_BEFT_CTTDMCQST"
    L3_2 = math
    L3_2 = L3_2.random
    L4_2 = 2
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2.Wait
    L5_2 = 0.5
    L3_2(L4_2, L5_2)
    L1_2 = "TIAT"
    L3_2 = "TIAT_BEFT_CTTDMCQST"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 2
    L4_2 = L4_2(L5_2)
    L2_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = PlayQueuedDialogue
    L4_2 = "MATT"
    L5_2 = "Announcement"
    L6_2 = "CT_TDstart"
    L7_2 = 10
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L3_2 = PlayQueuedDialogue
    L4_2 = "MCQT"
    L5_2 = "Announcement"
    L6_2 = "CT_TDstart"
    L7_2 = 10
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.WaitForEvent
  L3_2 = "EndRaceCutscene"
  L1_2(L2_2, L3_2)
  L1_2 = DebugPrint
  L2_2 = "DoEndRaceCutscene"
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.Wait
  L3_2 = 5
  L1_2(L2_2, L3_2)
  L1_2 = GetNumPlayers
  L1_2 = L1_2()
  if L1_2 == 1 then
    L1_2 = EnableToy
    L2_2 = "MCQT_end"
    L3_2 = 0
    L1_2(L2_2, L3_2)
  end
  L1_2 = HideHUD
  L1_2()
  L1_2 = PlayCameraAnimation
  L2_2 = "EndLevelCam"
  L3_2 = "Anim\\Endlevel"
  L1_2(L2_2, L3_2)
  L1_2 = GetNumPlayers
  L1_2 = L1_2()
  if L1_2 == 1 then
    L1_2 = "MATT_end"
    L2_2 = "MATT_BF_PROMPT1"
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L1_2 = "MIAT_end"
    L3_2 = "MIAT_BEFT_CTTDMATFN"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 2
    L4_2 = L4_2(L5_2)
    L2_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = A0_2
    L3_2 = A0_2.Wait
    L5_2 = 0.5
    L3_2(L4_2, L5_2)
    L1_2 = "TIAT_end"
    L3_2 = "TIAT_BEFT_CTTDMATFN"
    L4_2 = math
    L4_2 = L4_2.random
    L5_2 = 2
    L4_2 = L4_2(L5_2)
    L2_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L3_2 = A0_2.PlayDialogueAndWait
    L5_2 = L1_2
    L6_2 = L2_2
    L7_2 = L2_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L1_2 = GetPlayerScore
    L2_2 = 1
    L3_2 = 6
    L1_2 = L1_2(L2_2, L3_2)
    L2_2 = GetPlayerScore
    L3_2 = 2
    L4_2 = 6
    L2_2 = L2_2(L3_2, L4_2)
    if L1_2 >= L2_2 then
      L3_2 = PlayQueuedDialogue
      L4_2 = "MATT_end"
      L5_2 = "Announcement"
      L6_2 = "CT_TDend"
      L7_2 = 10
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = A0_2
      L3_2 = A0_2.PlayCharacterAnimationAndWait
      L5_2 = "MATT_end"
      L6_2 = "MATT_BF_PROMPT1"
      L7_2 = ""
      L8_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = "MIAT_end"
      L4_2 = "MIAT_BEFT_CTTDMATFN"
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 2
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2 .. L5_2
      L6_2 = A0_2
      L5_2 = A0_2.PlayDialogueAndWait
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L6_2 = A0_2
      L5_2 = A0_2.Wait
      L7_2 = 0.5
      L5_2(L6_2, L7_2)
      L3_2 = "TIAT_end"
      L5_2 = "TIAT_BEFT_CTTDMATFN"
      L6_2 = math
      L6_2 = L6_2.random
      L7_2 = 2
      L6_2 = L6_2(L7_2)
      L4_2 = L5_2 .. L6_2
      L6_2 = A0_2
      L5_2 = A0_2.PlayDialogueAndWait
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    else
      L3_2 = PlayQueuedDialogue
      L4_2 = "MCQT_end"
      L5_2 = "Announcement"
      L6_2 = "CT_TDend"
      L7_2 = 10
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = A0_2
      L3_2 = A0_2.PlayCharacterAnimationAndWait
      L5_2 = "MCQT_end"
      L6_2 = "MCQT_BEF_WON2"
      L7_2 = ""
      L8_2 = false
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L3_2 = "MIAT_end"
      L4_2 = "MIAT_BEFT_CTTDMCQFN"
      L5_2 = math
      L5_2 = L5_2.random
      L6_2 = 2
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2 .. L5_2
      L6_2 = A0_2
      L5_2 = A0_2.PlayDialogueAndWait
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
      L6_2 = A0_2
      L5_2 = A0_2.Wait
      L7_2 = 0.5
      L5_2(L6_2, L7_2)
      L3_2 = "TIAT_end"
      L5_2 = "TIAT_BEFT_CTTDMCQFN"
      L6_2 = math
      L6_2 = L6_2.random
      L7_2 = 2
      L6_2 = L6_2(L7_2)
      L4_2 = L5_2 .. L6_2
      L6_2 = A0_2
      L5_2 = A0_2.PlayDialogueAndWait
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = L4_2
      L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
  L1_2 = FinishEndRaceCutscene
  L1_2()
end
L0_1.TokyoDriftScript = L1_1
L0_1 = MG_CT_TD
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
L0_1 = MG_CT_TD
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
L0_1 = MG_CT_TD
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2.CurrentWaitEvents = A1_2
  while true do
    L2_2 = A0_2.CurrentWaitEvents
    L2_2 = #L2_2
    if not (0 < L2_2) then
      break
    end
    L2_2 = coroutine
    L2_2 = L2_2.yield
    L2_2 = L2_2()
    L3_2 = A0_2.CurrentWaitEvents
    L4_2 = nil
    L5_2 = nil
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      if L7_2 == L2_2 then
        L8_2 = table
        L8_2 = L8_2.remove
        L9_2 = A0_2.CurrentWaitEvents
        L10_2 = L6_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  A0_2.CurrentWaitEvents = nil
  L2_2 = event
  return L2_2
end
L0_1.WaitForAllEvents = L1_1
L0_1 = MG_CT_TD
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
L0_1 = MG_CT_TD
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = PlayToyDialogueMotion
  L5_2 = A1_2
  L6_2 = A3_2
  L7_2 = A3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2.WaitForEvent
  L6_2 = A3_2
  L4_2(L5_2, L6_2)
end
L0_1.PlayDialogueAndWait = L1_1
L0_1 = MG_CT_TD
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
