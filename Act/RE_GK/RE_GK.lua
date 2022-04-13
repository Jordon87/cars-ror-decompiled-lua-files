local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L1_1 = {}
L2_1 = nil
L3_1 = nil
L1_1[1] = L2_1
L1_1[2] = L3_1
L0_1.LastSoundEffect = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = PickRandomPowerUp
  L2_2 = L2_2()
  powerUp = L2_2
  L2_2 = 0
  tries = L2_2
  while true do
    L2_2 = GetRacerPosition
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= 1 then
      break
    end
    L2_2 = powerUp
    if L2_2 ~= "Slow" then
      break
    end
    L2_2 = tries
    if not (L2_2 < 10) then
      break
    end
    L2_2 = PickRandomPowerUp
    L2_2 = L2_2()
    powerUp = L2_2
  end
  L2_2 = 0
  tries = L2_2
  while true do
    L2_2 = GetRacerPosition
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    L3_2 = getvar
    L4_2 = "NumRacers"
    L3_2 = L3_2(L4_2)
    if L2_2 ~= L3_2 then
      break
    end
    L2_2 = powerUp
    if L2_2 ~= "SmokeScreen" then
      break
    end
    L2_2 = tries
    if not (L2_2 < 10) then
      break
    end
    L2_2 = PickRandomPowerUp
    L2_2 = L2_2()
    powerUp = L2_2
  end
  L2_2 = DebugPrint
  L3_2 = "Racer "
  L4_2 = A1_2
  L5_2 = " hit PowerUp, activating "
  L6_2 = powerUp
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = GetNumPlayers
  L2_2 = L2_2()
  if A1_2 < L2_2 then
    L2_2 = HUD_GuidoKart_1
    if L2_2 then
      L2_2 = HUD_GuidoKart_1
      L3_2 = L2_2
      L2_2 = L2_2.OnPowerUpHit
      L4_2 = powerUp
      L5_2 = A1_2
      L2_2 = L2_2(L3_2, L4_2, L5_2)
    end
    x = L2_2
    L2_2 = powerUp
    if L2_2 ~= "Slow" then
      L3_2 = A0_2
      L2_2 = A0_2.PlayPowerUpSoundEffect
      L4_2 = powerUp
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = powerUp
  if L2_2 == "Slow" then
    L2_2 = 0
    L3_2 = getvar
    L4_2 = "NumRacers"
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2 - 1
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      if L5_2 ~= A1_2 then
        L6_2 = DeactivatePowerUp
        L7_2 = L5_2
        L6_2(L7_2)
        L6_2 = ActivatePowerUp
        L7_2 = L5_2
        L8_2 = "Slow"
        L6_2(L7_2, L8_2)
        L6_2 = GetNumPlayers
        L6_2 = L6_2()
        if L5_2 < L6_2 then
          L7_2 = A0_2
          L6_2 = A0_2.PlayPowerUpSoundEffect
          L8_2 = "Slow"
          L9_2 = L5_2
          L6_2(L7_2, L8_2, L9_2)
        end
      end
    end
  else
    L2_2 = DeactivatePowerUp
    L3_2 = A1_2
    L2_2(L3_2)
    L2_2 = ActivatePowerUp
    L3_2 = A1_2
    L4_2 = powerUp
    L2_2(L3_2, L4_2)
  end
end
L0_1.OnPowerUpHit = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DebugPrint
  L3_2 = "Racer "
  L4_2 = A1_2
  L5_2 = " deactivated powerup"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = DeactivatePowerUp
  L3_2 = A1_2
  L2_2(L3_2)
end
L0_1.OnPowerUpExpired = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == "Ghost" then
    L3_2 = "GhostPlayer"
    L4_2 = A2_2 + 1
    L3_2 = L3_2 .. L4_2
    sound = L3_2
  elseif A1_2 == "TurboCharge" then
    L3_2 = "TurboPlayer"
    L4_2 = A2_2 + 1
    L3_2 = L3_2 .. L4_2
    sound = L3_2
  elseif A1_2 == "Slow" then
    L3_2 = "SlowPlayer"
    L4_2 = A2_2 + 1
    L3_2 = L3_2 .. L4_2
    sound = L3_2
  elseif A1_2 == "SpeedBoost" then
    L3_2 = "SpeedBoostPlayer"
    L4_2 = A2_2 + 1
    L3_2 = L3_2 .. L4_2
    sound = L3_2
  elseif A1_2 == "SmokeScreen" then
    L3_2 = "SmokeScreenPlayer"
    L4_2 = A2_2 + 1
    L3_2 = L3_2 .. L4_2
    sound = L3_2
  end
  L3_2 = A0_2.LastSoundEffect
  L4_2 = A2_2 + 1
  L3_2 = L3_2[L4_2]
  if L3_2 ~= nil then
    L3_2 = StopSoundEffect
    L4_2 = A0_2.LastSoundEffect
    L5_2 = A2_2 + 1
    L4_2 = L4_2[L5_2]
    L3_2(L4_2)
  end
  L3_2 = PlaySoundEffect
  L4_2 = sound
  L3_2(L4_2)
  L3_2 = A0_2.LastSoundEffect
  L4_2 = A2_2 + 1
  L5_2 = sound
  L3_2[L4_2] = L5_2
end
L0_1.PlayPowerUpSoundEffect = L1_1
RE_GK = L0_1
