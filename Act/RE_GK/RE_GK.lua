RE_GK = {
  LastSoundEffect = {nil, nil},
  OnPowerUpHit = function(_ARG_0_, _ARG_1_)
    powerUp = PickRandomPowerUp()
    tries = 0
    while GetRacerPosition(_ARG_1_) == 1 and powerUp == "Slow" and tries < 10 do
      powerUp = PickRandomPowerUp()
    end
    tries = 0
    while GetRacerPosition(_ARG_1_) == getvar("NumRacers") and powerUp == "SmokeScreen" and tries < 10 do
      powerUp = PickRandomPowerUp()
    end
    DebugPrint("Racer " .. _ARG_1_ .. " hit PowerUp, activating " .. powerUp)
    if _ARG_1_ < GetNumPlayers() then
      x = HUD_GuidoKart_1 and HUD_GuidoKart_1:OnPowerUpHit(powerUp, _ARG_1_)
      if powerUp ~= "Slow" then
        _ARG_0_:PlayPowerUpSoundEffect(powerUp, _ARG_1_)
      end
    end
    if powerUp == "Slow" then
      for _FORV_5_ = 0, getvar("NumRacers") - 1 do
        if _FORV_5_ ~= _ARG_1_ then
          DeactivatePowerUp(_FORV_5_)
          ActivatePowerUp(_FORV_5_, "Slow")
          if _FORV_5_ < GetNumPlayers() then
            _ARG_0_:PlayPowerUpSoundEffect("Slow", _FORV_5_)
          end
        end
      end
    else
      DeactivatePowerUp(_ARG_1_)
      ActivatePowerUp(_ARG_1_, powerUp)
    end
  end,
  OnPowerUpExpired = function(_ARG_0_, _ARG_1_)
    DebugPrint("Racer " .. _ARG_1_ .. " deactivated powerup")
    DeactivatePowerUp(_ARG_1_)
  end,
  PlayPowerUpSoundEffect = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if _ARG_1_ == "Ghost" then
      sound = "GhostPlayer" .. _ARG_2_ + 1
    elseif _ARG_1_ == "TurboCharge" then
      sound = "TurboPlayer" .. _ARG_2_ + 1
    elseif _ARG_1_ == "Slow" then
      sound = "SlowPlayer" .. _ARG_2_ + 1
    elseif _ARG_1_ == "SpeedBoost" then
      sound = "SpeedBoostPlayer" .. _ARG_2_ + 1
    elseif _ARG_1_ == "SmokeScreen" then
      sound = "SmokeScreenPlayer" .. _ARG_2_ + 1
    end
    if _ARG_0_.LastSoundEffect[_ARG_2_ + 1] ~= nil then
      StopSoundEffect(_ARG_0_.LastSoundEffect[_ARG_2_ + 1])
    end
    PlaySoundEffect(sound)
    _ARG_0_.LastSoundEffect[_ARG_2_ + 1] = sound
  end
}
