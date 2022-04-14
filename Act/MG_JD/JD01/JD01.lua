IncludeScript("C\\Act\\MG_JD\\MG_JD")
IncludeScript("C\\Act\\GlobalSettings")
JD01 = {
  Settings = {
    easy = {
      GesturePoints = {
        100,
        200,
        300
      },
      TimeScalePerDriftPoint = 0.008,
      MinStuntTimeScale = 4,
      MaxStuntTimeScale = 10
    },
    medium = {
      GesturePoints = {
        150,
        300,
        450
      },
      TimeScalePerDriftPoint = 0.004,
      MinStuntTimeScale = 4,
      MaxStuntTimeScale = 10
    },
    hard = {
      GesturePoints = {
        200,
        400,
        600
      },
      TimeScalePerDriftPoint = 0.002,
      MinStuntTimeScale = 4,
      MaxStuntTimeScale = 10
    }
  },
  ApplyDifficulty = function(_ARG_0_)
    if MG_JD.Settings == nil then
      if GetDifficulty() == "easy" then
        MG_JD.Settings = _ARG_0_.Settings.easy
      elseif GetDifficulty() == "normal" then
        MG_JD.Settings = _ARG_0_.Settings.medium
      else
        MG_JD.Settings = _ARG_0_.Settings.hard
      end
    end
  end,
  ChangedState = function(_ARG_0_, _ARG_1_)
    if _ARG_1_ == State_PreEvent then
      _ARG_0_:ApplyDifficulty()
      SetLocalizedString("EventInfo", "STR_DYN_JD_GATE_THRESH_MSG", GetLocalizedString("EventInfo", "STR_JD_GATE_MSG1") .. math.ceil(MG_JD.Settings.MinStuntTimeScale / MG_JD.Settings.TimeScalePerDriftPoint) .. " " .. GetLocalizedString("EventInfo", "STR_JD_GATE_MSG2"))
      PushMenu("PreEvent")
    elseif _ARG_1_ == State_PreEventUI then
    elseif _ARG_1_ == State_Begin then
    elseif _ARG_1_ == State_Rollup then
    elseif _ARG_1_ == State_Countdown then
    elseif _ARG_1_ == State_Running then
      SetHUD("HUD_DriftJump_1")
      SetJumpOpen(0)
    elseif _ARG_1_ == State_Results then
      PushMenu("Results")
    elseif _ARG_1_ == State_End then
    elseif _ARG_1_ == State_PostEvent then
      PushPostEvent()
    elseif _ARG_1_ == State_PostEventUI then
    end
  end,
  EventHandler = function(_ARG_0_, _ARG_1_)
    DebugPrint("JumpDrift event received: " .. _ARG_1_)
    _ARG_0_:ApplyDifficulty()
    MG_JD:EventHandler(_ARG_1_)
  end
}
