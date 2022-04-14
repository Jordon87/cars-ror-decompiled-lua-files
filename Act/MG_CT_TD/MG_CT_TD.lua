MG_CT_TD = {
  EnemyAIName = "MachAI2",
  CurrentWaitEvents = {},
  ActivityCoroutine = nil,
  EventHandler = function(_ARG_0_, _ARG_1_)
    DebugPrint(_ARG_1_)
    if _ARG_1_ == "begin" then
      _ARG_0_.CurrentWaitEvents = nil
      _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.TokyoDriftScript)
      coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
    end
    if _ARG_0_.CurrentWaitEvents ~= nil then
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_.CurrentWaitEvents) do
        if _ARG_0_.CurrentWaitEvents[_FORV_5_] == _ARG_1_ then
          coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_1_)
        end
      end
    end
  end
}
function MG_CT_TD.TokyoDriftScript(_ARG_0_)
  _ARG_0_:WaitForEvent("TokyoIntroVO")
  _ARG_0_:Wait(1.5)
  if GetNumPlayers() == 1 then
    _ARG_0_:PlayDialogueAndWait("MIAT", "MIAT_BEFT_CTTDMATST" .. math.random(2), "MIAT_BEFT_CTTDMATST" .. math.random(2))
    _ARG_0_:Wait(0.5)
    _ARG_0_:PlayDialogueAndWait("TIAT", "TIAT_BEFT_CTTDMATST" .. math.random(2), "TIAT_BEFT_CTTDMATST" .. math.random(2))
    PlayQueuedDialogue("MATT", "Announcement", "CT_TDstart", 10)
  else
    _ARG_0_:PlayDialogueAndWait("MIAT", "MIAT_BEFT_CTTDMCQST" .. math.random(2), "MIAT_BEFT_CTTDMCQST" .. math.random(2))
    _ARG_0_:Wait(0.5)
    _ARG_0_:PlayDialogueAndWait("TIAT", "TIAT_BEFT_CTTDMCQST" .. math.random(2), "TIAT_BEFT_CTTDMCQST" .. math.random(2))
    PlayQueuedDialogue("MATT", "Announcement", "CT_TDstart", 10)
    PlayQueuedDialogue("MCQT", "Announcement", "CT_TDstart", 10)
  end
  _ARG_0_:WaitForEvent("EndRaceCutscene")
  DebugPrint("DoEndRaceCutscene")
  _ARG_0_:Wait(5)
  if GetNumPlayers() == 1 then
    EnableToy("MCQT_end", 0)
  end
  HideHUD()
  PlayCameraAnimation("EndLevelCam", "Anim\\Endlevel")
  if GetNumPlayers() == 1 then
    _ARG_0_:PlayDialogueAndWait("MATT_end", "MATT_BF_PROMPT1", "MATT_BF_PROMPT1")
    _ARG_0_:PlayDialogueAndWait("MIAT_end", "MIAT_BEFT_CTTDMATFN" .. math.random(2), "MIAT_BEFT_CTTDMATFN" .. math.random(2))
    _ARG_0_:Wait(0.5)
    _ARG_0_:PlayDialogueAndWait("TIAT_end", "TIAT_BEFT_CTTDMATFN" .. math.random(2), "TIAT_BEFT_CTTDMATFN" .. math.random(2))
  elseif GetPlayerScore(1, 6) >= GetPlayerScore(2, 6) then
    PlayQueuedDialogue("MATT_end", "Announcement", "CT_TDend", 10)
    _ARG_0_:PlayCharacterAnimationAndWait("MATT_end", "MATT_BF_PROMPT1", "", false)
    _ARG_0_:PlayDialogueAndWait("MIAT_end", "MIAT_BEFT_CTTDMATFN" .. math.random(2), "MIAT_BEFT_CTTDMATFN" .. math.random(2))
    _ARG_0_:Wait(0.5)
    _ARG_0_:PlayDialogueAndWait("TIAT_end", "TIAT_BEFT_CTTDMATFN" .. math.random(2), "TIAT_BEFT_CTTDMATFN" .. math.random(2))
  else
    PlayQueuedDialogue("MCQT_end", "Announcement", "CT_TDend", 10)
    _ARG_0_:PlayCharacterAnimationAndWait("MCQT_end", "MCQT_BEF_WON2", "", false)
    _ARG_0_:PlayDialogueAndWait("MIAT_end", "MIAT_BEFT_CTTDMCQFN" .. math.random(2), "MIAT_BEFT_CTTDMCQFN" .. math.random(2))
    _ARG_0_:Wait(0.5)
    _ARG_0_:PlayDialogueAndWait("TIAT_end", "TIAT_BEFT_CTTDMCQFN" .. math.random(2), "TIAT_BEFT_CTTDMCQFN" .. math.random(2))
  end
  FinishEndRaceCutscene()
end
function MG_CT_TD.WaitForEvent(_ARG_0_, _ARG_1_)
  _ARG_0_.CurrentWaitEvents = {_ARG_1_}
  coroutine.yield()
  _ARG_0_.CurrentWaitEvents = nil
end
function MG_CT_TD.WaitForMultipleEvents(_ARG_0_, _ARG_1_)
  _ARG_0_.CurrentWaitEvents = _ARG_1_
  _ARG_0_.CurrentWaitEvents = nil
  return (coroutine.yield())
end
function MG_CT_TD.WaitForAllEvents(_ARG_0_, _ARG_1_)
  _ARG_0_.CurrentWaitEvents = _ARG_1_
  while #_ARG_0_.CurrentWaitEvents > 0 do
    for _FORV_6_, _FORV_7_ in _ARG_0_.CurrentWaitEvents, nil, nil do
      if _FORV_7_ == coroutine.yield() then
        table.remove(_ARG_0_.CurrentWaitEvents, _FORV_6_)
      end
    end
  end
  _ARG_0_.CurrentWaitEvents = nil
  return event
end
function MG_CT_TD.Wait(_ARG_0_, _ARG_1_)
  SetEventTimer("Wait" .. _ARG_1_, _ARG_1_)
  _ARG_0_:WaitForEvent("Wait" .. _ARG_1_)
end
function MG_CT_TD.PlayDialogueAndWait(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  PlayToyDialogueMotion(_ARG_1_, _ARG_3_, _ARG_3_)
  _ARG_0_:WaitForEvent(_ARG_3_)
end
function MG_CT_TD.PlayCharacterAnimationAndWait(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  SetCharacterAnimation(_ARG_1_, _ARG_2_, _ARG_2_, _ARG_3_)
  _ARG_0_:WaitForEvent(_ARG_2_)
end
