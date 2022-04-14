ScavengerHunt = {
  OnMcqueenFinished = function()
    StoryEvent_UpdateStatus("StoryEvent_CutScene24", "Unlocked")
    EnableToy("LuigiGarage", 1)
    AwardBumperSticker("MonsterMcqueenScavenger")
  end,
  OnMaterFinished = function()
    StoryEvent_UpdateStatus("StoryEvent_CutScene32", "Unlocked")
    EnableToy("ScavengerHunt_2", 1)
    AwardBumperSticker("MonsterMaterScavenger")
  end
}
