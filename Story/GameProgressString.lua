function GetGameProgress()
  BoltBannersEarned = getvar("BoltBannersTotal")
  gameProgress = ""
  if CutSceneFinished("StoryEvent_CutScene31") then
    gameProgress = "STR_LOG_BEAT_GAME"
  elseif FirstInEvent("StoryEvent_RelayRace4") then
  elseif FirstInEvent("StoryEvent_StadiumRace3") then
    gameProgress = "STR_LOG_ONE_RACE_LEFT"
  elseif FirstInEvent("StoryEvent_HubRace_TF_C") then
    if FirstInEvent("StoryEvent_RustbucketRace4") then
      if BoltBannersEarned >= getvar("BBUnlock3") then
        gameProgress = "STR_LOG_SR_FINAL"
      else
      end
    else
      gameProgress = "STR_HEAD_TO_RUSTBUCKET"
    end
  elseif PlacedInEvent("StoryEvent_HubRace_TF_B") then
    if PlacedInEvent("StoryEvent_RelayRace3") then
      gameProgress = "STR_LOG_NEXT_TF_RACE2"
    else
      gameProgress = "STR_LOG_OTTO_RELAY"
    end
  elseif PlacedInEvent("StoryEvent_HubRace_TF_A") and not PlacedInEvent("StoryEvent_RelayRace3") then
    gameProgress = "STR_LOG_OTTO_RELAY2"
  elseif PlacedInEvent("StoryEvent_HubRace_TF_A") then
    gameProgress = "STR_LOG_NEXT_RELAY"
  elseif CutSceneFinished("StoryEvent_CutScene15") then
    gameProgress = "STR_LOG_FIRST_TF_RACE"
  elseif PlacedInEvent("StoryEvent_StadiumRace2") then
    gameProgress = "STR_LOG_EXPLORE_TF"
  elseif FirstInEvent("StoryEvent_HubRace_OV_C") then
    if BoltBannersEarned >= getvar("BBUnlock2") then
      gameProgress = "STR_LOG_NEXT_SR"
    else
    end
  elseif PlacedInEvent("StoryEvent_HubRace_OV_B") then
    if PlacedInEvent("StoryEvent_RelayRace2") then
      gameProgress = "STR_LOG_MORE_IN_OV"
    else
      gameProgress = "STR_LOG_SVEN_RELAY"
    end
  elseif PlacedInEvent("StoryEvent_HubRace_OV_A") and not PlacedInEvent("StoryEvent_RelayRace2") then
    gameProgress = "STR_LOG_SVEN_RELAY2"
  elseif PlacedInEvent("StoryEvent_HubRace_OV_A") then
    gameProgress = "STR_LOG_ANOTHER_OV"
  elseif FirstInEvent("StoryEvent_RustbucketRace4") then
    if BoltBannersEarned >= getvar("BBUnlock3") then
      gameProgress = "STR_LOG_SR_FINAL"
    else
    end
  elseif PlacedInEvent("StoryEvent_RustbucketRace3") then
    gameProgress = "STR_LOG_RB_FINAL"
  elseif PlacedInEvent("StoryEvent_RustbucketRace2") then
    gameProgress = "STR_LOG_TWO_RB"
  elseif PlacedInEvent("StoryEvent_RustbucketRace1") then
    if not PlacedInEvent("StoryEvent_HubRace_OV_A") then
      gameProgress = "STR_LOG_FIRST_OV_HUB_RACE"
    else
      gameProgress = "STR_LOG_FOUR_RB"
    end
  elseif CutSceneFinished("StoryEvent_CutScene8") then
    gameProgress = "STR_LOG_RB_EVENTS"
  elseif PlacedInEvent("StoryEvent_StadiumRace1") then
    gameProgress = "STR_LOG_OV_UNLOCKED"
  elseif FirstInEvent("StoryEvent_HubRace_RS_C") then
    if BoltBannersEarned >= getvar("BBUnlock1") then
      gameProgress = "STR_LOG_FIRST_SR"
    else
    end
  elseif PlacedInEvent("StoryEvent_HubRace_RS_B") then
    if PlacedInEvent("StoryEvent_RelayRace1") then
      gameProgress = "STR_LOG_RACE_NEAR_MATERS"
    else
      gameProgress = "STR_LOG_LUIGI_RELAY"
    end
  elseif PlacedInEvent("StoryEvent_HubRace_RS_A") and not PlacedInEvent("StoryEvent_RelayRace1") then
    gameProgress = "STR_LOG_LUIGI_RELAY2"
  elseif PlacedInEvent("StoryEvent_HubRace_RS_A") then
    gameProgress = "STR_LOG_SEE_FLO"
  elseif CutSceneFinished("StoryEvent_CutScene1") then
    gameProgress = "STR_LOG_EXPLORE_MAIN"
  end
  if gameProgress == "" then
    if PlacedInEvent("StoryEvent_GhostingMater_Level5") then
      if not PlacedInEvent("StoryEvent_GhostingMater_Level6") then
        gameProgress = "STR_LOG_BEAT_ALL_GM"
      elseif not PlacedInEvent("StoryEvent_GhostingMater_Level7") then
        gameProgress = "STR_LOG_BEAT_LAST_GM"
      end
    end
  elseif PlacedInEvent("StoryEvent_WaypointRace2") and not FirstInEvent("StoryEvent_WaypointRace3") then
    gameProgress = "STR_LOG_BEAT_WP_FINAL"
  elseif PlacedInEvent("StoryEvent_FuelFrenzyRace_TF_B") and not PlacedInEvent("StoryEvent_FuelFrenzyRace_TF_C") then
    if PlacedInEvent("StoryEvent_HubRace_TF_C") then
      gameProgress = "STR_LOG_ONE_FFF_LEVEL"
    else
      gameProgress = "STR_LOG_UNLOCK_FFF_TF"
    end
  elseif PlacedInEvent("StoryEvent_TractorTipping_Level5") and not PlacedInEvent("StoryEvent_TractorTipping_Level6") then
    gameProgress = "STR_LOG_ONE_TT_LEVEL"
  elseif PlacedInEvent("StoryEvent_RhythmicRumble_Level6") and not PlacedInEvent("StoryEvent_RhythmicRumble_Level7") then
    gameProgress = "STR_LOG_ONE_RRR_LEVEL"
  elseif not PlacedInEvent("StoryEvent_GhostingMater_Level1") then
    if PlacedInEvent("StoryEvent_TractorTipping_Level3") then
      if not PlacedInEvent("StoryEvent_HubRace_OV_B") then
        gameProgress = "STR_LOG_MORE_OV_RACES"
      else
        gameProgress = "STR_LOG_SEE_SHERIFF2"
      end
    elseif CutSceneFinished("StoryEvent_CutScene24") then
      if CutSceneFinished("StoryEvent_CutScene8") then
        gameProgress = "STR_LOG_FIRST_THREE_TT"
      else
        if CutSceneFinished("StoryEvent_CutScene25") then
          gameProgress = "STR_LOG_FINISH_SCAV"
        else
        end
      end
    elseif not CutSceneFinished("StoryEvent_CutScene23") then
      gameProgress = "STR_LOG_START_SCAVHUNT"
    else
      gameProgress = "STR_LOG_TURN_IN_SH1"
    end
  elseif not PlacedInEvent("StoryEvent_TractorTipping_Level1") and not PlacedInEvent("StoryEvent_StadiumRace1") then
    if PlacedInEvent("StoryEvent_HubRace_RS_C") and not PlacedInEvent("StoryEvent_StadiumRace1") then
      gameProgress = "STR_LOG_FIRST_SR2"
    else
      gameProgress = "STR_LOG_MORE_RS_RACING"
    end
  end
  if gameProgress == "" then
    if not PlacedInEvent("StoryEvent_RhythmicRumble_Level7") then
      if PlacedInEvent("StoryEvent_RhythmicRumble_Level6") then
        gameProgress = "STR_LOG_OINE_MORE_RRR"
      elseif PlacedInEvent("StoryEvent_RhythmicRumble_Level5") then
        gameProgress = "STR_LOG_TWO_MORE_RRR"
      elseif PlacedInEvent("StoryEvent_RhythmicRumble_Level1") then
        gameProgress = "STR_LOG_START_RRR"
      else
        gameProgress = "STR_LOG_START_RRR2"
      end
    elseif not PlacedInEvent("StoryEvent_GhostingMater_Level7") then
      if PlacedInEvent("StoryEvent_GhostingMater_Level6") then
        gameProgress = "STR_LOG_OINE_MORE_GM"
      elseif PlacedInEvent("StoryEvent_GhostingMater_Level5") then
        gameProgress = "STR_LOG_TWO_MORE_GM"
      elseif PlacedInEvent("StoryEvent_GhostingMater_Level1") then
        gameProgress = "STR_LOG_START_GM"
      elseif PlacedInEvent("StoryEvent_HubRace_OV_B") then
        gameProgress = "STR_LOG_START_GM2"
      end
    end
    if not PlacedInEvent("StoryEvent_TractorTipping_Level6") then
      if PlacedInEvent("StoryEvent_TractorTipping_Level5") then
        gameProgress = "STR_LOG_OINE_MORE_TT"
      elseif PlacedInEvent("StoryEvent_TractorTipping_Level4") then
        gameProgress = "STR_LOG_TWO_MORE_TT"
      elseif PlacedInEvent("StoryEvent_TractorTipping_Level1") then
        gameProgress = "STR_LOG_MATER_MORE_TT"
      elseif PlacedInEvent("StoryEvent_StadiumRace1") then
        gameProgress = "STR_LOG_SEE_MATER"
      end
    elseif not PlacedInEvent("StoryEvent_FuelFrenzyRace_TF_C") then
      if PlacedInEvent("StoryEvent_FuelFrenzyRace_TF_B") then
        if PlacedInEvent("StoryEvent_HubRace_TF_C") then
          gameProgress = "STR_LOG_ONE_MORE_FFF"
        else
          gameProgress = "STR_LOG_ONE_MORE_TF"
        end
      elseif PlacedInEvent("StoryEvent_FuelFrenzyRace_TF_A") then
        if PlacedInEvent("StoryEvent_HubRace_TF_B") then
          gameProgress = "STR_LOG_TWO_MORE_FFF"
        else
          gameProgress = "STR_LOG_TWO_MORE_TF"
        end
      elseif PlacedInEvent("StoryEvent_FuelFrenzyRace_OV_C") then
        if PlacedInEvent("StoryEvent_HubRace_TF_A") then
          gameProgress = "STR_LOG_LAST_THREE_FFF"
        else
          gameProgress = "STR_LOG_HOT_RODS"
        end
      elseif PlacedInEvent("StoryEvent_FuelFrenzyRace_OV_A") then
        if PlacedInEvent("StoryEvent_HubRace_OV_B") then
          gameProgress = "STR_LOG_TWO_MORE_FFF_OV"
        else
          gameProgress = "STR_LOG_TWO_MORE_OV"
        end
      elseif PlacedInEvent("StoryEvent_FuelFrenzyRace_RS_C") then
        gameProgress = "STR_LOG_MORE_FFF_AND_OV"
      elseif PlacedInEvent("StoryEvent_FuelFrenzyRace_RS_A") then
        if PlacedInEvent("StoryEvent_HubRace_RS_B") then
          gameProgress = "STR_LOG_SEE_FILLMORE"
        else
          gameProgress = "STR_LOG_MORE_RS3"
        end
      elseif PlacedInEvent("StoryEvent_HubRace_RS_A") then
        gameProgress = "STR_LOG_SEE_FILLMORE2"
      end
    elseif not PlacedInEvent("StoryEvent_RaceAndChase_TF_C") then
      if PlacedInEvent("StoryEvent_RaceAndChase_TF_B") then
        if PlacedInEvent("StoryEvent_HubRace_TF_C") then
          gameProgress = "STR_LOG_ONE_MORE_RNC"
        else
          gameProgress = "STR_LOG_ONE_MORE_TF2"
        end
      elseif PlacedInEvent("StoryEvent_RaceAndChase_TF_A") then
        if PlacedInEvent("StoryEvent_HubRace_TF_B") then
          gameProgress = "STR_LOG_TWO_MORE_RNC"
        else
          gameProgress = "STR_LOG_TWO_MORE_TF2"
        end
      elseif PlacedInEvent("StoryEvent_RaceAndChase_OV_C") then
        if PlacedInEvent("StoryEvent_HubRace_TF_A") then
          gameProgress = "STR_LOG_LAST_THREE_RNC"
        else
          gameProgress = "STR_LOG_HOT_RODS2"
        end
      elseif PlacedInEvent("StoryEvent_RaceAndChase_OV_A") then
        if PlacedInEvent("StoryEvent_HubRace_OV_B") then
          gameProgress = "STR_LOG_TWO_MORE_RNC_OV"
        else
          gameProgress = "STR_LOG_TWO_MORE_OV2"
        end
      elseif PlacedInEvent("StoryEvent_RaceAndChase_RS_C") then
        gameProgress = "STR_LOG_MORE_RNC_OV"
      elseif PlacedInEvent("StoryEvent_RaceAndChase_RS_A") then
        if PlacedInEvent("StoryEvent_HubRace_RS_B") then
          gameProgress = "STR_LOG_SEE_SHERIFF_RNC"
        else
          gameProgress = "STR_LOG_MORE_RS2"
        end
      elseif PlacedInEvent("StoryEvent_HubRace_RS_A") then
        gameProgress = "STR_LOG_SEE_SHERIFF3"
      end
    end
  end
  if gameProgress == "" then
    LaughsComplete = 0
    if PlacedInEvent("StoryEvent_LastLaugh1") then
      LaughsComplete = LaughsComplete + 1
    end
    if PlacedInEvent("StoryEvent_LastLaugh2") then
      LaughsComplete = LaughsComplete + 1
    end
    if PlacedInEvent("StoryEvent_LastLaugh3") then
      LaughsComplete = LaughsComplete + 1
    end
    if PlacedInEvent("StoryEvent_LastLaugh4") then
      LaughsComplete = LaughsComplete + 1
    end
    if PlacedInEvent("StoryEvent_LastLaugh5") then
      LaughsComplete = LaughsComplete + 1
    end
    if PlacedInEvent("StoryEvent_LastLaugh6") then
      LaughsComplete = LaughsComplete + 1
    end
    if LaughsComplete == 0 then
      gameProgress = "STR_LOG_START_LL"
    elseif LaughsComplete == 1 then
      gameProgress = "STR_LOG_SEE_SULLY"
    elseif LaughsComplete == 4 then
      gameProgress = "STR_LOG_MORE_LL"
    elseif LaughsComplete == 5 then
      gameProgress = "STR_LOG_ONE_MORE_LL"
    end
  end
  if gameProgress ~= "" then
    setvar("StoryProgressString", gameProgress)
  end
end
