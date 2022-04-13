local L0_1, L1_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = getvar
  L1_2 = "BoltBannersTotal"
  L0_2 = L0_2(L1_2)
  BoltBannersEarned = L0_2
  L0_2 = ""
  gameProgress = L0_2
  L0_2 = CutSceneFinished
  L1_2 = "StoryEvent_CutScene31"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    L0_2 = "STR_LOG_BEAT_GAME"
    gameProgress = L0_2
  else
    L0_2 = FirstInEvent
    L1_2 = "StoryEvent_RelayRace4"
    L0_2 = L0_2(L1_2)
    if L0_2 then
    else
      L0_2 = FirstInEvent
      L1_2 = "StoryEvent_StadiumRace3"
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = "STR_LOG_ONE_RACE_LEFT"
        gameProgress = L0_2
      else
        L0_2 = FirstInEvent
        L1_2 = "StoryEvent_HubRace_TF_C"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = FirstInEvent
          L1_2 = "StoryEvent_RustbucketRace4"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = BoltBannersEarned
            L1_2 = getvar
            L2_2 = "BBUnlock3"
            L1_2 = L1_2(L2_2)
            if L0_2 >= L1_2 then
              L0_2 = "STR_LOG_SR_FINAL"
              gameProgress = L0_2
            else
            end
          else
            L0_2 = "STR_HEAD_TO_RUSTBUCKET"
            gameProgress = L0_2
          end
        else
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_HubRace_TF_B"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_RelayRace3"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = "STR_LOG_NEXT_TF_RACE2"
              gameProgress = L0_2
            else
              L0_2 = "STR_LOG_OTTO_RELAY"
              gameProgress = L0_2
            end
          else
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_HubRace_TF_A"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_RelayRace3"
              L0_2 = L0_2(L1_2)
              if not L0_2 then
                L0_2 = "STR_LOG_OTTO_RELAY2"
                gameProgress = L0_2
            end
            else
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_HubRace_TF_A"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = "STR_LOG_NEXT_RELAY"
                gameProgress = L0_2
              else
                L0_2 = CutSceneFinished
                L1_2 = "StoryEvent_CutScene15"
                L0_2 = L0_2(L1_2)
                if L0_2 then
                  L0_2 = "STR_LOG_FIRST_TF_RACE"
                  gameProgress = L0_2
                else
                  L0_2 = PlacedInEvent
                  L1_2 = "StoryEvent_StadiumRace2"
                  L0_2 = L0_2(L1_2)
                  if L0_2 then
                    L0_2 = "STR_LOG_EXPLORE_TF"
                    gameProgress = L0_2
                  else
                    L0_2 = FirstInEvent
                    L1_2 = "StoryEvent_HubRace_OV_C"
                    L0_2 = L0_2(L1_2)
                    if L0_2 then
                      L0_2 = BoltBannersEarned
                      L1_2 = getvar
                      L2_2 = "BBUnlock2"
                      L1_2 = L1_2(L2_2)
                      if L0_2 >= L1_2 then
                        L0_2 = "STR_LOG_NEXT_SR"
                        gameProgress = L0_2
                      else
                      end
                    else
                      L0_2 = PlacedInEvent
                      L1_2 = "StoryEvent_HubRace_OV_B"
                      L0_2 = L0_2(L1_2)
                      if L0_2 then
                        L0_2 = PlacedInEvent
                        L1_2 = "StoryEvent_RelayRace2"
                        L0_2 = L0_2(L1_2)
                        if L0_2 then
                          L0_2 = "STR_LOG_MORE_IN_OV"
                          gameProgress = L0_2
                        else
                          L0_2 = "STR_LOG_SVEN_RELAY"
                          gameProgress = L0_2
                        end
                      else
                        L0_2 = PlacedInEvent
                        L1_2 = "StoryEvent_HubRace_OV_A"
                        L0_2 = L0_2(L1_2)
                        if L0_2 then
                          L0_2 = PlacedInEvent
                          L1_2 = "StoryEvent_RelayRace2"
                          L0_2 = L0_2(L1_2)
                          if not L0_2 then
                            L0_2 = "STR_LOG_SVEN_RELAY2"
                            gameProgress = L0_2
                        end
                        else
                          L0_2 = PlacedInEvent
                          L1_2 = "StoryEvent_HubRace_OV_A"
                          L0_2 = L0_2(L1_2)
                          if L0_2 then
                            L0_2 = "STR_LOG_ANOTHER_OV"
                            gameProgress = L0_2
                          else
                            L0_2 = FirstInEvent
                            L1_2 = "StoryEvent_RustbucketRace4"
                            L0_2 = L0_2(L1_2)
                            if L0_2 then
                              L0_2 = BoltBannersEarned
                              L1_2 = getvar
                              L2_2 = "BBUnlock3"
                              L1_2 = L1_2(L2_2)
                              if L0_2 >= L1_2 then
                                L0_2 = "STR_LOG_SR_FINAL"
                                gameProgress = L0_2
                              else
                              end
                            else
                              L0_2 = PlacedInEvent
                              L1_2 = "StoryEvent_RustbucketRace3"
                              L0_2 = L0_2(L1_2)
                              if L0_2 then
                                L0_2 = "STR_LOG_RB_FINAL"
                                gameProgress = L0_2
                              else
                                L0_2 = PlacedInEvent
                                L1_2 = "StoryEvent_RustbucketRace2"
                                L0_2 = L0_2(L1_2)
                                if L0_2 then
                                  L0_2 = "STR_LOG_TWO_RB"
                                  gameProgress = L0_2
                                else
                                  L0_2 = PlacedInEvent
                                  L1_2 = "StoryEvent_RustbucketRace1"
                                  L0_2 = L0_2(L1_2)
                                  if L0_2 then
                                    L0_2 = PlacedInEvent
                                    L1_2 = "StoryEvent_HubRace_OV_A"
                                    L0_2 = L0_2(L1_2)
                                    if not L0_2 then
                                      L0_2 = "STR_LOG_FIRST_OV_HUB_RACE"
                                      gameProgress = L0_2
                                    else
                                      L0_2 = "STR_LOG_FOUR_RB"
                                      gameProgress = L0_2
                                    end
                                  else
                                    L0_2 = CutSceneFinished
                                    L1_2 = "StoryEvent_CutScene8"
                                    L0_2 = L0_2(L1_2)
                                    if L0_2 then
                                      L0_2 = "STR_LOG_RB_EVENTS"
                                      gameProgress = L0_2
                                    else
                                      L0_2 = PlacedInEvent
                                      L1_2 = "StoryEvent_StadiumRace1"
                                      L0_2 = L0_2(L1_2)
                                      if L0_2 then
                                        L0_2 = "STR_LOG_OV_UNLOCKED"
                                        gameProgress = L0_2
                                      else
                                        L0_2 = FirstInEvent
                                        L1_2 = "StoryEvent_HubRace_RS_C"
                                        L0_2 = L0_2(L1_2)
                                        if L0_2 then
                                          L0_2 = BoltBannersEarned
                                          L1_2 = getvar
                                          L2_2 = "BBUnlock1"
                                          L1_2 = L1_2(L2_2)
                                          if L0_2 >= L1_2 then
                                            L0_2 = "STR_LOG_FIRST_SR"
                                            gameProgress = L0_2
                                          else
                                          end
                                        else
                                          L0_2 = PlacedInEvent
                                          L1_2 = "StoryEvent_HubRace_RS_B"
                                          L0_2 = L0_2(L1_2)
                                          if L0_2 then
                                            L0_2 = PlacedInEvent
                                            L1_2 = "StoryEvent_RelayRace1"
                                            L0_2 = L0_2(L1_2)
                                            if L0_2 then
                                              L0_2 = "STR_LOG_RACE_NEAR_MATERS"
                                              gameProgress = L0_2
                                            else
                                              L0_2 = "STR_LOG_LUIGI_RELAY"
                                              gameProgress = L0_2
                                            end
                                          else
                                            L0_2 = PlacedInEvent
                                            L1_2 = "StoryEvent_HubRace_RS_A"
                                            L0_2 = L0_2(L1_2)
                                            if L0_2 then
                                              L0_2 = PlacedInEvent
                                              L1_2 = "StoryEvent_RelayRace1"
                                              L0_2 = L0_2(L1_2)
                                              if not L0_2 then
                                                L0_2 = "STR_LOG_LUIGI_RELAY2"
                                                gameProgress = L0_2
                                            end
                                            else
                                              L0_2 = PlacedInEvent
                                              L1_2 = "StoryEvent_HubRace_RS_A"
                                              L0_2 = L0_2(L1_2)
                                              if L0_2 then
                                                L0_2 = "STR_LOG_SEE_FLO"
                                                gameProgress = L0_2
                                              else
                                                L0_2 = CutSceneFinished
                                                L1_2 = "StoryEvent_CutScene1"
                                                L0_2 = L0_2(L1_2)
                                                if L0_2 then
                                                  L0_2 = "STR_LOG_EXPLORE_MAIN"
                                                  gameProgress = L0_2
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L0_2 = gameProgress
  if L0_2 == "" then
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_GhostingMater_Level5"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = PlacedInEvent
      L1_2 = "StoryEvent_GhostingMater_Level6"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = "STR_LOG_BEAT_ALL_GM"
        gameProgress = L0_2
      else
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_GhostingMater_Level7"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = "STR_LOG_BEAT_LAST_GM"
          gameProgress = L0_2
        end
      end
    end
  else
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_WaypointRace2"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = FirstInEvent
      L1_2 = "StoryEvent_WaypointRace3"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = "STR_LOG_BEAT_WP_FINAL"
        gameProgress = L0_2
    end
    else
      L0_2 = PlacedInEvent
      L1_2 = "StoryEvent_FuelFrenzyRace_TF_B"
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_FuelFrenzyRace_TF_C"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_HubRace_TF_C"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = "STR_LOG_ONE_FFF_LEVEL"
            gameProgress = L0_2
          else
            L0_2 = "STR_LOG_UNLOCK_FFF_TF"
            gameProgress = L0_2
          end
      end
      else
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_TractorTipping_Level5"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_TractorTipping_Level6"
          L0_2 = L0_2(L1_2)
          if not L0_2 then
            L0_2 = "STR_LOG_ONE_TT_LEVEL"
            gameProgress = L0_2
        end
        else
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_RhythmicRumble_Level6"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_RhythmicRumble_Level7"
            L0_2 = L0_2(L1_2)
            if not L0_2 then
              L0_2 = "STR_LOG_ONE_RRR_LEVEL"
              gameProgress = L0_2
          end
          else
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_GhostingMater_Level1"
            L0_2 = L0_2(L1_2)
            if not L0_2 then
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_TractorTipping_Level3"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = PlacedInEvent
                L1_2 = "StoryEvent_HubRace_OV_B"
                L0_2 = L0_2(L1_2)
                if not L0_2 then
                  L0_2 = "STR_LOG_MORE_OV_RACES"
                  gameProgress = L0_2
                else
                  L0_2 = "STR_LOG_SEE_SHERIFF2"
                  gameProgress = L0_2
                end
              else
                L0_2 = CutSceneFinished
                L1_2 = "StoryEvent_CutScene24"
                L0_2 = L0_2(L1_2)
                if L0_2 then
                  L0_2 = CutSceneFinished
                  L1_2 = "StoryEvent_CutScene8"
                  L0_2 = L0_2(L1_2)
                  if L0_2 then
                    L0_2 = "STR_LOG_FIRST_THREE_TT"
                    gameProgress = L0_2
                  else
                    L0_2 = CutSceneFinished
                    L1_2 = "StoryEvent_CutScene25"
                    L0_2 = L0_2(L1_2)
                    if L0_2 then
                      L0_2 = "STR_LOG_FINISH_SCAV"
                      gameProgress = L0_2
                    else
                    end
                  end
                else
                  L0_2 = CutSceneFinished
                  L1_2 = "StoryEvent_CutScene23"
                  L0_2 = L0_2(L1_2)
                  if not L0_2 then
                    L0_2 = "STR_LOG_START_SCAVHUNT"
                    gameProgress = L0_2
                  else
                    L0_2 = "STR_LOG_TURN_IN_SH1"
                    gameProgress = L0_2
                  end
                end
              end
            else
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_TractorTipping_Level1"
              L0_2 = L0_2(L1_2)
              if not L0_2 then
                L0_2 = PlacedInEvent
                L1_2 = "StoryEvent_StadiumRace1"
                L0_2 = L0_2(L1_2)
                if not L0_2 then
                  L0_2 = PlacedInEvent
                  L1_2 = "StoryEvent_HubRace_RS_C"
                  L0_2 = L0_2(L1_2)
                  if L0_2 then
                    L0_2 = PlacedInEvent
                    L1_2 = "StoryEvent_StadiumRace1"
                    L0_2 = L0_2(L1_2)
                    if not L0_2 then
                      L0_2 = "STR_LOG_FIRST_SR2"
                      gameProgress = L0_2
                  end
                  else
                    L0_2 = "STR_LOG_MORE_RS_RACING"
                    gameProgress = L0_2
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L0_2 = gameProgress
  if L0_2 == "" then
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_RhythmicRumble_Level7"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = PlacedInEvent
      L1_2 = "StoryEvent_RhythmicRumble_Level6"
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = "STR_LOG_OINE_MORE_RRR"
        gameProgress = L0_2
      else
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_RhythmicRumble_Level5"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = "STR_LOG_TWO_MORE_RRR"
          gameProgress = L0_2
        else
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_RhythmicRumble_Level1"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = "STR_LOG_START_RRR"
            gameProgress = L0_2
          else
            L0_2 = "STR_LOG_START_RRR2"
            gameProgress = L0_2
          end
        end
      end
    else
      L0_2 = PlacedInEvent
      L1_2 = "StoryEvent_GhostingMater_Level7"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_GhostingMater_Level6"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = "STR_LOG_OINE_MORE_GM"
          gameProgress = L0_2
        else
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_GhostingMater_Level5"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = "STR_LOG_TWO_MORE_GM"
            gameProgress = L0_2
          else
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_GhostingMater_Level1"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = "STR_LOG_START_GM"
              gameProgress = L0_2
            else
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_HubRace_OV_B"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = "STR_LOG_START_GM2"
                gameProgress = L0_2
              end
            end
          end
        end
      end
    end
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_TractorTipping_Level6"
    L0_2 = L0_2(L1_2)
    if not L0_2 then
      L0_2 = PlacedInEvent
      L1_2 = "StoryEvent_TractorTipping_Level5"
      L0_2 = L0_2(L1_2)
      if L0_2 then
        L0_2 = "STR_LOG_OINE_MORE_TT"
        gameProgress = L0_2
      else
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_TractorTipping_Level4"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = "STR_LOG_TWO_MORE_TT"
          gameProgress = L0_2
        else
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_TractorTipping_Level1"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = "STR_LOG_MATER_MORE_TT"
            gameProgress = L0_2
          else
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_StadiumRace1"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = "STR_LOG_SEE_MATER"
              gameProgress = L0_2
            end
          end
        end
      end
    else
      L0_2 = PlacedInEvent
      L1_2 = "StoryEvent_FuelFrenzyRace_TF_C"
      L0_2 = L0_2(L1_2)
      if not L0_2 then
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_FuelFrenzyRace_TF_B"
        L0_2 = L0_2(L1_2)
        if L0_2 then
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_HubRace_TF_C"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = "STR_LOG_ONE_MORE_FFF"
            gameProgress = L0_2
          else
            L0_2 = "STR_LOG_ONE_MORE_TF"
            gameProgress = L0_2
          end
        else
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_FuelFrenzyRace_TF_A"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_HubRace_TF_B"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = "STR_LOG_TWO_MORE_FFF"
              gameProgress = L0_2
            else
              L0_2 = "STR_LOG_TWO_MORE_TF"
              gameProgress = L0_2
            end
          else
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_FuelFrenzyRace_OV_C"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_HubRace_TF_A"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = "STR_LOG_LAST_THREE_FFF"
                gameProgress = L0_2
              else
                L0_2 = "STR_LOG_HOT_RODS"
                gameProgress = L0_2
              end
            else
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_FuelFrenzyRace_OV_A"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = PlacedInEvent
                L1_2 = "StoryEvent_HubRace_OV_B"
                L0_2 = L0_2(L1_2)
                if L0_2 then
                  L0_2 = "STR_LOG_TWO_MORE_FFF_OV"
                  gameProgress = L0_2
                else
                  L0_2 = "STR_LOG_TWO_MORE_OV"
                  gameProgress = L0_2
                end
              else
                L0_2 = PlacedInEvent
                L1_2 = "StoryEvent_FuelFrenzyRace_RS_C"
                L0_2 = L0_2(L1_2)
                if L0_2 then
                  L0_2 = "STR_LOG_MORE_FFF_AND_OV"
                  gameProgress = L0_2
                else
                  L0_2 = PlacedInEvent
                  L1_2 = "StoryEvent_FuelFrenzyRace_RS_A"
                  L0_2 = L0_2(L1_2)
                  if L0_2 then
                    L0_2 = PlacedInEvent
                    L1_2 = "StoryEvent_HubRace_RS_B"
                    L0_2 = L0_2(L1_2)
                    if L0_2 then
                      L0_2 = "STR_LOG_SEE_FILLMORE"
                      gameProgress = L0_2
                    else
                      L0_2 = "STR_LOG_MORE_RS3"
                      gameProgress = L0_2
                    end
                  else
                    L0_2 = PlacedInEvent
                    L1_2 = "StoryEvent_HubRace_RS_A"
                    L0_2 = L0_2(L1_2)
                    if L0_2 then
                      L0_2 = "STR_LOG_SEE_FILLMORE2"
                      gameProgress = L0_2
                    end
                  end
                end
              end
            end
          end
        end
      else
        L0_2 = PlacedInEvent
        L1_2 = "StoryEvent_RaceAndChase_TF_C"
        L0_2 = L0_2(L1_2)
        if not L0_2 then
          L0_2 = PlacedInEvent
          L1_2 = "StoryEvent_RaceAndChase_TF_B"
          L0_2 = L0_2(L1_2)
          if L0_2 then
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_HubRace_TF_C"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = "STR_LOG_ONE_MORE_RNC"
              gameProgress = L0_2
            else
              L0_2 = "STR_LOG_ONE_MORE_TF2"
              gameProgress = L0_2
            end
          else
            L0_2 = PlacedInEvent
            L1_2 = "StoryEvent_RaceAndChase_TF_A"
            L0_2 = L0_2(L1_2)
            if L0_2 then
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_HubRace_TF_B"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = "STR_LOG_TWO_MORE_RNC"
                gameProgress = L0_2
              else
                L0_2 = "STR_LOG_TWO_MORE_TF2"
                gameProgress = L0_2
              end
            else
              L0_2 = PlacedInEvent
              L1_2 = "StoryEvent_RaceAndChase_OV_C"
              L0_2 = L0_2(L1_2)
              if L0_2 then
                L0_2 = PlacedInEvent
                L1_2 = "StoryEvent_HubRace_TF_A"
                L0_2 = L0_2(L1_2)
                if L0_2 then
                  L0_2 = "STR_LOG_LAST_THREE_RNC"
                  gameProgress = L0_2
                else
                  L0_2 = "STR_LOG_HOT_RODS2"
                  gameProgress = L0_2
                end
              else
                L0_2 = PlacedInEvent
                L1_2 = "StoryEvent_RaceAndChase_OV_A"
                L0_2 = L0_2(L1_2)
                if L0_2 then
                  L0_2 = PlacedInEvent
                  L1_2 = "StoryEvent_HubRace_OV_B"
                  L0_2 = L0_2(L1_2)
                  if L0_2 then
                    L0_2 = "STR_LOG_TWO_MORE_RNC_OV"
                    gameProgress = L0_2
                  else
                    L0_2 = "STR_LOG_TWO_MORE_OV2"
                    gameProgress = L0_2
                  end
                else
                  L0_2 = PlacedInEvent
                  L1_2 = "StoryEvent_RaceAndChase_RS_C"
                  L0_2 = L0_2(L1_2)
                  if L0_2 then
                    L0_2 = "STR_LOG_MORE_RNC_OV"
                    gameProgress = L0_2
                  else
                    L0_2 = PlacedInEvent
                    L1_2 = "StoryEvent_RaceAndChase_RS_A"
                    L0_2 = L0_2(L1_2)
                    if L0_2 then
                      L0_2 = PlacedInEvent
                      L1_2 = "StoryEvent_HubRace_RS_B"
                      L0_2 = L0_2(L1_2)
                      if L0_2 then
                        L0_2 = "STR_LOG_SEE_SHERIFF_RNC"
                        gameProgress = L0_2
                      else
                        L0_2 = "STR_LOG_MORE_RS2"
                        gameProgress = L0_2
                      end
                    else
                      L0_2 = PlacedInEvent
                      L1_2 = "StoryEvent_HubRace_RS_A"
                      L0_2 = L0_2(L1_2)
                      if L0_2 then
                        L0_2 = "STR_LOG_SEE_SHERIFF3"
                        gameProgress = L0_2
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  L0_2 = gameProgress
  if L0_2 == "" then
    L0_2 = 0
    LaughsComplete = L0_2
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_LastLaugh1"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LaughsComplete
      L0_2 = L0_2 + 1
      LaughsComplete = L0_2
    end
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_LastLaugh2"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LaughsComplete
      L0_2 = L0_2 + 1
      LaughsComplete = L0_2
    end
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_LastLaugh3"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LaughsComplete
      L0_2 = L0_2 + 1
      LaughsComplete = L0_2
    end
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_LastLaugh4"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LaughsComplete
      L0_2 = L0_2 + 1
      LaughsComplete = L0_2
    end
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_LastLaugh5"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LaughsComplete
      L0_2 = L0_2 + 1
      LaughsComplete = L0_2
    end
    L0_2 = PlacedInEvent
    L1_2 = "StoryEvent_LastLaugh6"
    L0_2 = L0_2(L1_2)
    if L0_2 then
      L0_2 = LaughsComplete
      L0_2 = L0_2 + 1
      LaughsComplete = L0_2
    end
    L0_2 = LaughsComplete
    if L0_2 == 0 then
      L0_2 = "STR_LOG_START_LL"
      gameProgress = L0_2
    else
      L0_2 = LaughsComplete
      if L0_2 == 1 then
        L0_2 = "STR_LOG_SEE_SULLY"
        gameProgress = L0_2
      else
        L0_2 = LaughsComplete
        if L0_2 == 4 then
          L0_2 = "STR_LOG_MORE_LL"
          gameProgress = L0_2
        else
          L0_2 = LaughsComplete
          if L0_2 == 5 then
            L0_2 = "STR_LOG_ONE_MORE_LL"
            gameProgress = L0_2
          end
        end
      end
    end
  end
  L0_2 = gameProgress
  if L0_2 ~= "" then
    L0_2 = setvar
    L1_2 = "StoryProgressString"
    L2_2 = gameProgress
    L0_2(L1_2, L2_2)
  end
end
GetGameProgress = L0_1
