PhotoShootMiniGame = {
  CurrentWaitEvents = nil,
  ActivityCoroutine = nil,
  MiaTiaPlayerWinAnimSuffix = "_BEFT_PSWIN" .. math.random(5),
  MiaTiaPlayerLoseAnimSuffix = "_BEFT_PSLOSE" .. math.random(4),
  WaitForEvent = function(_ARG_0_, _ARG_1_)
    _ARG_0_.CurrentWaitEvents = {_ARG_1_}
    coroutine.yield()
    _ARG_0_.CurrentWaitEvents = nil
  end,
  Wait = function(_ARG_0_, _ARG_1_)
    SetEventTimer("Wait" .. _ARG_1_, _ARG_1_)
    _ARG_0_:WaitForEvent("Wait" .. _ARG_1_)
  end,
  PlayDialogue = function(_ARG_0_, _ARG_1_, _ARG_2_)
    PlayToyDialogueMotion(characterName, _ARG_2_, _ARG_2_)
  end,
  MiaOrTiaBreath = function(_ARG_0_, _ARG_1_)
    animName = _ARG_1_ .. "_BEF_BREATH_B"
    stopCurrent = false
    SetCharacterAnimation(_ARG_1_, animName, animName, stopCurrent)
  end,
  MiaTiaInit = function(_ARG_0_)
    _ARG_0_:MiaOrTiaBreath("MIA")
    _ARG_0_:MiaOrTiaBreath("TIA")
  end,
  MiaTiaReaction = function(_ARG_0_)
    setvar("PauseMenuAllowed", 0)
    FadeInScreen(0)
    cameraName = "MiaTiaCam01"
    animName = "Anim\\MiaTiaCam01"
    PlayCameraAnimationWithCallback(cameraName, animName, animName)
    _ARG_0_:WaitForEvent(animName)
    animSuffix = _ARG_0_.MiaTiaPlayerWinAnimSuffix
    bPlayerSucceeded = getvar("PlayerSucceeded")
    DebugPrint("PlayerSucceded " .. bPlayerSucceeded)
    if bPlayerSucceeded == 0 then
      animSuffix = _ARG_0_.MiaTiaPlayerLoseAnimSuffix
    end
    characterName = "MIA"
    animName = characterName .. animSuffix
    _ARG_0_:PlayDialogue(characterName, animName, animName)
    _ARG_0_:WaitForEvent(animName)
    _ARG_0_:MiaOrTiaBreath("MIA")
    _ARG_0_:Wait(0.5)
    characterName = "TIA"
    animName = characterName .. animSuffix
    _ARG_0_:PlayDialogue(characterName, animName, animName)
    _ARG_0_:WaitForEvent(animName)
    _ARG_0_:MiaOrTiaBreath("TIA")
    FadeOutScreen(1)
    _ARG_0_:Wait(1)
    setvar("MiaTiaReactionFinished", 1)
    setvar("PauseMenuAllowed", 1)
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    DebugPrint("Photo Shoot event received: " .. _ARG_1_)
    if _ARG_1_ == "StylishSlowMotion" then
      HideHUD()
    elseif _ARG_1_ == "CameraMovingToNext" then
      DebugPrint("Show buttons allowing player to switch to previous camera")
      CurrentHUD:EventHandler(_ARG_1_)
    elseif _ARG_1_ == "CameraMovingToPrev" then
      CurrentHUD:EventHandler(_ARG_1_)
    elseif _ARG_1_ == "CameraStopped" then
      CurrentHUD:EventHandler(_ARG_1_)
    elseif _ARG_1_ == "MiaTiaReaction" then
      SetHUD("ExploreHUD")
      _ARG_0_.ActivityCoroutine = coroutine.create(_ARG_0_.MiaTiaReaction)
      coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_0_)
    elseif _ARG_0_.CurrentWaitEvents ~= nil then
      for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_.CurrentWaitEvents) do
        if _ARG_0_.CurrentWaitEvents[_FORV_5_] == _ARG_1_ then
          coroutine.resume(_ARG_0_.ActivityCoroutine, _ARG_1_)
        end
      end
    end
  end
}
