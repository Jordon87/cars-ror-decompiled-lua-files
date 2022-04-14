EventDatabase = {
  onUnlockedEvent = function(_ARG_0_)
    setfenv(1, EnvironmentStack[EnvironmentDepth])
    PlayUISound(UISoundEventUnlock_Asset)
    PushMenu("UnlockedPopup")
    if IsEventOnCriticalPath("StoryEvent_" .. _ARG_0_) == 1 then
      UnlockedPopup:UnlockedItem("GoldEvent", "" .. GetLocalizedString("ingameui", "STR_UNLOCK_GOLDEVENT") .. " " .. GetLocalizedString("EventInfo", "STR_" .. _ARG_0_ .. "_TITLE"))
    else
      UnlockedPopup:UnlockedItem("NormalEvent", "" .. GetLocalizedString("ingameui", "STR_GLOBAL_UNLOCKS_3") .. " " .. GetLocalizedString("EventInfo", "STR_" .. _ARG_0_ .. "_TITLE"))
    end
    RaiseMenu("UnlockedPopup")
  end
}
CustomParts = {
  onUnlockedPart = function(_ARG_0_)
    setfenv(1, EnvironmentStack[EnvironmentDepth])
    PlayUISound(UISoundEventUnlock_Asset)
    PushMenu("UnlockedPopup")
    UnlockedPopup:UnlockedItem("Parts", "" .. GetLocalizedString("ingameui", "STR_GLOBAL_UNLOCKS_5") .. " " .. GetLocalizedString("CommonUI", "STR_MCQ_NAME"))
    RaiseMenu("UnlockedPopup")
  end
}
PaintJobs = {
  onCollected = function(_ARG_0_)
    setfenv(1, EnvironmentStack[EnvironmentDepth])
    PlayUISound(UISoundEventUnlock_Asset)
    PushMenu("UnlockedPopup")
    UnlockedPopup:UnlockedItem("PaintJobs", "" .. GetLocalizedString("ingameui", "STR_GLOBAL_UNLOCKS_2") .. " " .. GetLocalizedString("CommonUI", _ARG_0_))
    RaiseMenu("UnlockedPopup")
  end
}
WheelSets = {
  onCollected = function(_ARG_0_)
    setfenv(1, EnvironmentStack[EnvironmentDepth])
    PlayUISound(UISoundEventUnlock_Asset)
    PushMenu("UnlockedPopup")
    UnlockedPopup:UnlockedItem("WheelSets", "" .. GetLocalizedString("ingameui", "STR_GLOBAL_UNLOCKS_1"))
    RaiseMenu("UnlockedPopup")
  end
}
VehicleDatabase = {
  onUnlockedVehicle = function(_ARG_0_)
    setfenv(1, EnvironmentStack[EnvironmentDepth])
    PlayUISound(UISoundEventUnlock_Asset)
    PushMenu("UnlockedPopup")
    UnlockedPopup:UnlockedItem("Characters", "" .. GetLocalizedString("ingameui", "STR_GLOBAL_UNLOCKS_4") .. " " .. GetLocalizedString("CommonUI", "STR_" .. _ARG_0_ .. "_NAME"))
    RaiseMenu("UnlockedPopup")
  end
}
ConceptArt = {
  onUnlockedConceptArt = function(_ARG_0_)
    setfenv(1, EnvironmentStack[EnvironmentDepth])
    PlayUISound(UISoundEventUnlock_Asset)
    PushMenu("UnlockedPopup")
    UnlockedPopup:UnlockedItem("ConceptArt", "" .. GetLocalizedString("ingameui", "STR_GLOBAL_UNLOCKS_6"))
    RaiseMenu("UnlockedPopup")
  end
}
