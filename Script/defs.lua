EnvironmentStack = {
  getfenv(0)
}
EnvironmentDepth = 1
CurrentEnvironment = EnvironmentStack[EnvironmentDepth]
function NewActivityEnvironment()
  EnvironmentStack[#EnvironmentStack + 1] = {}
  setmetatable(EnvironmentStack[#EnvironmentStack + 1], {
    __index = EnvironmentStack[#EnvironmentStack]
  })
  setfenv(0, EnvironmentStack[#EnvironmentStack + 1])
  EnvironmentDepth = #EnvironmentStack + 1
  CurrentEnvironment = EnvironmentStack[EnvironmentDepth]
end
function EndActivityEnvironment()
  DebugPrint("Lua diapers: saved " .. GetTableSize(EnvironmentStack[#EnvironmentStack]) .. " leaks")
  EnvironmentStack[#EnvironmentStack] = nil
  setfenv(0, EnvironmentStack[#EnvironmentStack - 1])
  EnvironmentDepth = #EnvironmentStack - 1
  CurrentEnvironment = EnvironmentStack[EnvironmentDepth]
end
function GetTableSize(_ARG_0_)
  for _FORV_5_, _FORV_6_ in pairs(_ARG_0_) do
  end
  return 0 + 1
end
function PrintGlobals()
  function print_table_contents(_ARG_0_)
    for _FORV_4_, _FORV_5_ in pairs(_ARG_0_) do
      DebugPrint(_FORV_4_)
    end
  end
  DebugPrint("EnvironmentStack: " .. GetTableSize(EnvironmentStack))
  for _FORV_3_, _FORV_4_ in ipairs(EnvironmentStack) do
    DebugPrint("-----------------------------Env[" .. _FORV_3_ .. "]: " .. GetTableSize(_FORV_4_))
    print_table_contents(_FORV_4_)
  end
end
function AddOutro(_ARG_0_)
  _ARG_0_.MenuMode = 1
end
function StartOutro(_ARG_0_)
  PlayMenuAnimation(_ARG_0_.instance, "outro")
  _ARG_0_.MenuMode = 2
end
function ProcessOutro(_ARG_0_)
  if _ARG_0_.MenuMode == 2 and GetMenuAnimationState(_ARG_0_.instance, "outro") == 0 then
    EndMenu(_ARG_0_.instance)
  end
end
function ShowHUD()
  setfenv(1, EnvironmentStack[EnvironmentDepth])
  if CurrentHUD ~= nil then
    ShowUI(CurrentHUD)
  end
  if Countdown ~= nil and Countdown.instance ~= nil then
    ResumeMenuAnimation(Countdown.instance, "intro")
    SetHideLayer(Countdown.instance, 1)
  end
  if HUD_DriftMeter ~= nil and HUD_DriftMeter.instance ~= nil then
    SetHideLayer(HUD_DriftMeter.instance, 1)
  end
  if GetPlatform() == "ps2" then
    if MiniMap_PS2 ~= nil and MiniMap_PS2.instance ~= nil then
      SetHideLayer(MiniMap_PS2.instance, 1)
    end
  elseif MiniMap ~= nil and MiniMap.instance ~= nil then
    SetHideLayer(MiniMap.instance, 1)
  end
end
function HideHUD()
  setfenv(1, EnvironmentStack[EnvironmentDepth])
  if CurrentHUD ~= nil then
    HideUI(CurrentHUD)
  end
  if Countdown ~= nil and Countdown.instance ~= nil then
    PauseMenuAnimation(Countdown.instance, "intro")
    SetHideLayer(Countdown.instance, 0)
  end
  if HUD_DriftMeter ~= nil and HUD_DriftMeter.instance ~= nil then
    SetHideLayer(HUD_DriftMeter.instance, 0)
  end
  if GetPlatform() == "ps2" then
    if MiniMap_PS2 ~= nil and MiniMap_PS2.instance ~= nil then
      SetHideLayer(MiniMap_PS2.instance, 0)
    end
  elseif MiniMap ~= nil and MiniMap.instance ~= nil then
    SetHideLayer(MiniMap.instance, 0)
  end
end
function ShowUI(_ARG_0_)
  if _ARG_0_ ~= nil and _ARG_0_.instance ~= nil then
    PlayMenuAnimation(_ARG_0_.instance, "Intro")
  end
end
function HideUI(_ARG_0_)
  if _ARG_0_ ~= nil and _ARG_0_.instance ~= nil then
    PlayMenuAnimation(_ARG_0_.instance, "Outro")
  end
end
function FormatTimeStandardized(_ARG_0_)
  return engFormatTime(_ARG_0_)
end
function FormatTime(_ARG_0_)
  _ARG_0_ = _ARG_0_ - (math.floor(_ARG_0_ / 60) - 60 * math.floor(math.floor(_ARG_0_ / 60) / 60)) * 60
  if math.floor(math.floor(_ARG_0_ / 60) / 60) > 0 then
  end
  if math.floor(_ARG_0_ / 60) - math.floor(math.floor(_ARG_0_ / 60) / 60) * 60 > 0 then
  end
  if math.floor(_ARG_0_ / 60) - math.floor(math.floor(_ARG_0_ / 60) / 60) * 60 > 0 and _ARG_0_ < 10 then
    _ARG_0_ = "0" .. _ARG_0_
  end
  return (("" .. math.floor(math.floor(_ARG_0_ / 60) / 60) .. ":") .. math.floor(_ARG_0_ / 60) - math.floor(math.floor(_ARG_0_ / 60) / 60) * 60 .. ":") .. _ARG_0_
end
function Assert(_ARG_0_, _ARG_1_)
  if _ARG_0_ == false then
    CAssert(0, _ARG_1_)
  end
end
function Split(_ARG_0_, _ARG_1_, _ARG_2_)
  if string.find(_ARG_0_, _ARG_1_) == nil then
    return {_ARG_0_}
  end
  if _ARG_2_ == nil or _ARG_2_ < 1 then
    _ARG_2_ = 0
  end
  for _FORV_10_, _FORV_11_ in string.gfind(_ARG_0_, "(.-)" .. _ARG_1_ .. "()") do
    if 0 + 1 == _ARG_2_ then
      break
    end
  end
  if 0 + 1 ~= _ARG_2_ then
  end
  return {
    [0 + 1] = _FORV_10_,
    [0 + 1 + 1] = string.sub(_ARG_0_, _FORV_11_)
  }
end
function Wrap(_ARG_0_, _ARG_1_)
  _ARG_1_ = _ARG_1_ * 53
  repeat
    repeat
      while string.len(_ARG_0_) >= 1 do
        if string.sub(_ARG_0_, 1, 1 + 1) == "{{" then
          while true do
            if string.len((GetLocalizedString(Split(string.sub(_ARG_0_, 1 + 2, string.find(_ARG_0_, "}}", 1 + 2) - 1), "/")[1], Split(string.sub(_ARG_0_, 1 + 2, string.find(_ARG_0_, "}}", 1 + 2) - 1), "/")[2]))) >= 1 then
            end
          end
          while true do
          end
        elseif _ARG_1_ < 0 + getCharacterWidth((string.sub(_ARG_0_, 1 + 1, 1 + 1))) then
          while true do
            if 1 + 1 + 1 > 0 and string.sub(_ARG_0_, 1 + 1 + 1, 1 + 1 + 1) ~= " " then
            end
          end
          while true do
          end
        end
      end
    until string.len(_ARG_0_) >= 1 and string.sub(_ARG_0_, 1, 1 + 1) ~= "}}"
  until string.len(_ARG_0_) >= 1 + 1 + 1 - 1 and string.sub(_ARG_0_, 1 + 1 + 1 - 1, 1 + 1 + 1 - 1) == " "
  return string.sub(("" .. string.sub(_ARG_0_, 1, 1)) .. string.sub(_ARG_0_, 1 + 1, 1 + 1), 1, 1 + 1 + 1 - 1) .. "\n"
end
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
UIStats_TotalTime = 0
UIStats_BestLap = 1
UISoundEventMenuIn = 1
UISoundEventMenuOut = 2
UISoundEventBack = 3
UISoundEventSelectContinue = 4
UISoundEventLeftRight = 5
UISoundEventType_Up_Down = 6
UISoundEventAddPoints = 7
UISoundEventType_Fail = 8
UISoundEventType_Win = 9
UISoundEvent321Count = 10
UISoundEvent321Go = 11
UISoundEventBonusPointPickup = 12
UISoundEventLapCompleted = 13
UISoundEventBadInputIG = 14
UISoundEventBadInput = 8
UISoundEventUnlockAsset = 9
UISoundEventSignShuffle = 10
UISoundEventCheatValid = 11
UISoundEventCheatInvalid = 12
UISoundEventFE_Ramones_Complete = 13
UISoundEventFE_Ramones_NextChar = 14
UISoundEventFE_Ramones_Toggle = 15
UISoundEventFE_Docs_NextKit = 16
UISoundEventFE_Docs_Toggle = 17
UISoundEventFE_Docs_Complete = 18
UISoundEventFE_Luigis_Toggle = 19
UISoundEventFE_Luigis_Complete = 10
UISoundEventGoodDrift = 15
UISoundEventGreatDrift = 16
UISoundEventAwesomeDrift = 17
UISoundEventPointsInBucke = 18
UISoundEventTIMER = 19
UISoundEventEventWin = 20
UISoundEventEventLose = 21
UISoundEventPenalty2 = 22
UISoundEventGestureBeep1 = 23
UISoundEventGestureBeep2 = 24
UISoundEventComplete_Lap = 25
UISoundEventWIN = 26
UISoundEventTake2nd3rd = 27
UISoundEventLOSE = 28
UISoundEventUnlock_Asset = 29
UISoundEventUP_DOWN = 30
UISoundEventLeft_Right = 31
UISoundEventSelect_Continue = 32
UISoundEventBack2 = 33
UISoundEventMenu_In = 34
UISoundEventMenu_Out = 35
UISoundEventCheat_Correct = 36
UISoundEventCheat_Incorrect = 37
UISoundEventDodgeMultiplier = 38
State_PreLoad = -1
State_PreEvent = 0
State_Tutorial = 1
State_PreEventUI = 2
State_Begin = 3
State_Rollup = 4
State_Countdown = 5
State_Running = 6
State_GameOver = 7
State_End = 8
State_Results = 9
State_PostEvent = 10
State_SaveProfile = 11
State_PostEventUI = 12
State_Rewards = 13
QueuedActions = {
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
}
function QueueAction(_ARG_0_, _ARG_1_)
  DebugPrint("Queueing delayed state action for next state: " .. _ARG_0_)
  table.insert(_G.QueuedActions[_ARG_0_ + 1], _ARG_1_)
end
function ClearActionQueue(_ARG_0_)
  DebugPrint("Clearing Action queue for state " .. _ARG_0_)
  _G.QueuedActions[_ARG_0_ + 1] = nil
  _G.QueuedActions[_ARG_0_ + 1] = {}
end
function ExecuteQueuedActions(_ARG_0_)
  DebugPrint("Executing " .. #_G.QueuedActions[_ARG_0_ + 1] .. " Queued actions for state: " .. _ARG_0_)
  for _FORV_5_ = 1, #_G.QueuedActions[_ARG_0_ + 1] do
    DebugPrint("Executing queued action #" .. _FORV_5_ .. " !")
    _G.QueuedActions[_ARG_0_ + 1][_FORV_5_]()
  end
  ClearActionQueue(_ARG_0_)
end
function ReturnToStoryMenu()
  QueueAction(State_Running, Action_ReturnToStoryMenu)
  SwitchActivity("FE_FrontEnd", "player1start")
end
function Action_ReturnToStoryMenu()
  if StoryEvent_GetStatus("StoryEvent_CR_01_EX") ~= StoryEventStatus("Locked") then
    CurrentEnvironment.FE_FrontEnd:EventHandler("PressedStart")
    DVDMenu_Play("FrontEndCamera", "Anim\\FECam03")
    RaiseMenu("FE_SelectLocation")
  else
    CurrentEnvironment.FE_FrontEnd:EventHandler("PressedStart")
  end
end
function ReturnToArcadeMenu()
  QueueAction(State_Running, Action_ReturnToArcadeMenu)
  SwitchActivity("FE_FrontEnd", "player1start")
end
function Action_ReturnToArcadeMenu()
  CurrentEnvironment.FE_FrontEnd:EventHandler("PressedStart")
  PlayCameraAnimation("FrontEndCamera", "Anim\\FECam04")
  RaiseMenu("FE_ArcadeModeMenu")
end
function RollCredits()
  QueueAction(State_Running, Action_RollCredits)
  SwitchActivity("FE_FrontEnd", "player1start")
end
function Action_RollCredits()
  CurrentEnvironment.FE_FrontEnd:EventHandler("PressedStart")
  PlayCameraAnimation("FrontEndCamera", "Anim\\FECam07")
  RaiseMenu("FE_Credits")
end
function OnReturnToTitleScreen()
  SwitchActivity("FE_FrontEnd", "player1start")
end
DVDMenu_PlayerInputEnabled = {0, 0}
function DVDMenu_Play(_ARG_0_, _ARG_1_)
  DVDMenu_PlayerInputEnabled[1] = GetPlayerInputEnabled(0)
  DVDMenu_PlayerInputEnabled[2] = GetPlayerInputEnabled(1)
  DebugPrint(" *** Disabling player input while playing a locking camera animation *** ")
  SetPlayerInputEnabled(0, 0)
  SetPlayerInputEnabled(1, 0)
  PlayCameraAnimationWithCallback(_ARG_0_, _ARG_1_, "DVDMenu_Unlock")
end
function DVDMenu_Unlock()
  DebugPrint(" *** Restoring previous player input *** ")
  SetPlayerInputEnabled(0, DVDMenu_PlayerInputEnabled[1])
  SetPlayerInputEnabled(1, DVDMenu_PlayerInputEnabled[2])
end
function PushPostEvent()
  if GetGameMode() == "story" then
    if IsAmbientActivityTypeRunning() == 1 then
      PushMenu("PostEventMissions")
    else
      PushMenu("PostEvent")
    end
  else
    PushMenu("PostEventArcade")
  end
end
function GetPauseMenu()
  if GetGameMode() == "story" and GetCurrentActivityType() == "explorer" and IsAmbientActivityTypeRunning() == 0 then
    return "StoryPauseMenu"
  else
    return "PauseMenu"
  end
end
function GetGestureHUD(_ARG_0_)
  if GetPlatform() == "ps2" then
    return "HUD_Gestures_PS2_1"
  elseif GetPlatform() == "ps3" then
    if SixAxisEnabled(_ARG_0_ - 1) then
      return "HUD_Gestures_PS3_2"
    else
      return "HUD_Gestures_PS3_1"
    end
  elseif GetPlatform() == "x360" then
    return "HUD_Gestures_360_1"
  elseif GetPlatform() == "gcn" then
    return "HUD_Gestures_Wii_" .. GetControllerConfig(_ARG_0_)
  end
end
function FixGestureNames(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "LeftStick" then
  else
  end
  if _ARG_0_ == "FlickLeftStick" then
  elseif _ARG_0_ == "FlickRightStick" then
  elseif _ARG_0_ == "FlickUpStick" then
  elseif _ARG_0_ == "FlickDownStick" then
  elseif _ARG_0_ == "RotateClockwiseStick" then
  elseif _ARG_0_ == "RotateCounterClockwiseStick" then
  end
  if _ARG_0_ == "FlickLeft" then
  elseif _ARG_0_ == "FlickRight" then
  elseif _ARG_0_ == "FlickUp" then
  elseif _ARG_0_ == "FlickDown" then
  elseif _ARG_0_ == "RotateClockwiseStick" then
  elseif _ARG_0_ == "RotateCounterClockwiseStick" then
  end
  return _ARG_0_
end
ACTIVITY_CONTINUE = 1
ACTIVITY_RETRY = 2
ACTIVITY_QUIT = 3
LE_POPUP_FINISHED = 0
LE_POPUP_INPUT = 1
LE_TRCPOPUP_STARTED = 2
LE_TRCPOPUP_FINISHED = 3
LE_POSTEVENT_FINISHED = 4
LE_PREEVENT_FINISHED = 5
LE_FINISHED_ENUMERATING = 6
LE_FINISHED_SAVING = 7
LE_FINISHED_LOADING = 8
LE_FINISHED_DELETING = 9
LE_PROFILES_DISABLED = 10
LE_PS3_PROFILE_LOADED = 11
FCR_SaveSuccess = 0
FCR_SaveFail = 1
FCR_SaveQuit = 2
FCR_LoadSuccess = 3
