function FirstInEvent(_ARG_0_)
  if StoryEvent_GetStatus(_ARG_0_) == StoryEventStatus("First") then
    return true
  else
    return false
  end
end
function PlacedInEvent(_ARG_0_)
  if StoryEvent_GetStatus(_ARG_0_) == StoryEventStatus("First") or StoryEvent_GetStatus(_ARG_0_) == StoryEventStatus("Placed") then
    return true
  else
    return false
  end
end
function CutSceneFinished(_ARG_0_)
  if StoryEvent_GetStatus(_ARG_0_) == StoryEventStatus("CutsceneFinished") then
    return true
  else
    return false
  end
end
function UnlockEvent(_ARG_0_)
  StoryEvent_UpdateStatus(_ARG_0_, "Unlocked")
end
DayTime = 0
NightTime = 1
NumBoltBanners = 200
