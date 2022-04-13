local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = {}
L1_1 = getfenv
L2_1 = 0
L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1 = L1_1(L2_1)
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L0_1[14] = L14_1
L0_1[15] = L15_1
L0_1[16] = L16_1
EnvironmentStack = L0_1
L0_1 = 1
EnvironmentDepth = L0_1
L0_1 = EnvironmentStack
L1_1 = EnvironmentDepth
L0_1 = L0_1[L1_1]
CurrentEnvironment = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = EnvironmentStack
  L0_2 = #L0_2
  L1_2 = EnvironmentStack
  L2_2 = L0_2 + 1
  L3_2 = {}
  L1_2[L2_2] = L3_2
  L1_2 = setmetatable
  L2_2 = EnvironmentStack
  L3_2 = L0_2 + 1
  L2_2 = L2_2[L3_2]
  L3_2 = {}
  L4_2 = EnvironmentStack
  L4_2 = L4_2[L0_2]
  L3_2.__index = L4_2
  L1_2(L2_2, L3_2)
  L1_2 = setfenv
  L2_2 = 0
  L3_2 = EnvironmentStack
  L4_2 = L0_2 + 1
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = L0_2 + 1
  EnvironmentDepth = L1_2
  L1_2 = EnvironmentStack
  L2_2 = EnvironmentDepth
  L1_2 = L1_2[L2_2]
  CurrentEnvironment = L1_2
end
NewActivityEnvironment = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = EnvironmentStack
  L0_2 = #L0_2
  L1_2 = DebugPrint
  L2_2 = "Lua diapers: saved "
  L3_2 = GetTableSize
  L4_2 = EnvironmentStack
  L4_2 = L4_2[L0_2]
  L3_2 = L3_2(L4_2)
  L4_2 = " leaks"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = EnvironmentStack
  L1_2[L0_2] = nil
  L1_2 = setfenv
  L2_2 = 0
  L3_2 = EnvironmentStack
  L4_2 = L0_2 - 1
  L3_2 = L3_2[L4_2]
  L1_2(L2_2, L3_2)
  L1_2 = L0_2 - 1
  EnvironmentDepth = L1_2
  L1_2 = EnvironmentStack
  L2_2 = EnvironmentDepth
  L1_2 = L1_2[L2_2]
  CurrentEnvironment = L1_2
end
EndActivityEnvironment = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = 0
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L1_2 = L1_2 + 1
  end
  return L1_2
end
GetTableSize = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  function L0_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3 = L1_3(L2_3)
    for L4_3, L5_3 in L1_3, L2_3, L3_3 do
      L6_3 = DebugPrint
      L7_3 = L4_3
      L6_3(L7_3)
    end
  end
  print_table_contents = L0_2
  L0_2 = DebugPrint
  L1_2 = "EnvironmentStack: "
  L2_2 = GetTableSize
  L3_2 = EnvironmentStack
  L2_2 = L2_2(L3_2)
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = ipairs
  L1_2 = EnvironmentStack
  L0_2, L1_2, L2_2 = L0_2(L1_2)
  for L3_2, L4_2 in L0_2, L1_2, L2_2 do
    L5_2 = DebugPrint
    L6_2 = "-----------------------------Env["
    L7_2 = L3_2
    L8_2 = "]: "
    L9_2 = GetTableSize
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
    L5_2(L6_2)
    L5_2 = print_table_contents
    L6_2 = L4_2
    L5_2(L6_2)
  end
end
PrintGlobals = L0_1
function L0_1(A0_2)
  local L1_2
  A0_2.MenuMode = 1
end
AddOutro = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PlayMenuAnimation
  L2_2 = A0_2.instance
  L3_2 = "outro"
  L1_2(L2_2, L3_2)
  A0_2.MenuMode = 2
end
StartOutro = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2.MenuMode
  if L1_2 == 2 then
    L1_2 = GetMenuAnimationState
    L2_2 = A0_2.instance
    L3_2 = "outro"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 == 0 then
      L1_2 = EndMenu
      L2_2 = A0_2.instance
      L1_2(L2_2)
    end
  end
end
ProcessOutro = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = setfenv
  L1_2 = 1
  L2_2 = EnvironmentStack
  L3_2 = EnvironmentDepth
  L2_2 = L2_2[L3_2]
  L0_2(L1_2, L2_2)
  L0_2 = CurrentHUD
  if L0_2 ~= nil then
    L0_2 = ShowUI
    L1_2 = CurrentHUD
    L0_2(L1_2)
  end
  L0_2 = Countdown
  if L0_2 ~= nil then
    L0_2 = Countdown
    L0_2 = L0_2.instance
    if L0_2 ~= nil then
      L0_2 = ResumeMenuAnimation
      L1_2 = Countdown
      L1_2 = L1_2.instance
      L2_2 = "intro"
      L0_2(L1_2, L2_2)
      L0_2 = SetHideLayer
      L1_2 = Countdown
      L1_2 = L1_2.instance
      L2_2 = 1
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = HUD_DriftMeter
  if L0_2 ~= nil then
    L0_2 = HUD_DriftMeter
    L0_2 = L0_2.instance
    if L0_2 ~= nil then
      L0_2 = SetHideLayer
      L1_2 = HUD_DriftMeter
      L1_2 = L1_2.instance
      L2_2 = 1
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = GetPlatform
  L0_2 = L0_2()
  if L0_2 == "ps2" then
    L0_2 = MiniMap_PS2
    if L0_2 ~= nil then
      L0_2 = MiniMap_PS2
      L0_2 = L0_2.instance
      if L0_2 ~= nil then
        L0_2 = SetHideLayer
        L1_2 = MiniMap_PS2
        L1_2 = L1_2.instance
        L2_2 = 1
        L0_2(L1_2, L2_2)
      end
    end
  else
    L0_2 = MiniMap
    if L0_2 ~= nil then
      L0_2 = MiniMap
      L0_2 = L0_2.instance
      if L0_2 ~= nil then
        L0_2 = SetHideLayer
        L1_2 = MiniMap
        L1_2 = L1_2.instance
        L2_2 = 1
        L0_2(L1_2, L2_2)
      end
    end
  end
end
ShowHUD = L0_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = setfenv
  L1_2 = 1
  L2_2 = EnvironmentStack
  L3_2 = EnvironmentDepth
  L2_2 = L2_2[L3_2]
  L0_2(L1_2, L2_2)
  L0_2 = CurrentHUD
  if L0_2 ~= nil then
    L0_2 = HideUI
    L1_2 = CurrentHUD
    L0_2(L1_2)
  end
  L0_2 = Countdown
  if L0_2 ~= nil then
    L0_2 = Countdown
    L0_2 = L0_2.instance
    if L0_2 ~= nil then
      L0_2 = PauseMenuAnimation
      L1_2 = Countdown
      L1_2 = L1_2.instance
      L2_2 = "intro"
      L0_2(L1_2, L2_2)
      L0_2 = SetHideLayer
      L1_2 = Countdown
      L1_2 = L1_2.instance
      L2_2 = 0
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = HUD_DriftMeter
  if L0_2 ~= nil then
    L0_2 = HUD_DriftMeter
    L0_2 = L0_2.instance
    if L0_2 ~= nil then
      L0_2 = SetHideLayer
      L1_2 = HUD_DriftMeter
      L1_2 = L1_2.instance
      L2_2 = 0
      L0_2(L1_2, L2_2)
    end
  end
  L0_2 = GetPlatform
  L0_2 = L0_2()
  if L0_2 == "ps2" then
    L0_2 = MiniMap_PS2
    if L0_2 ~= nil then
      L0_2 = MiniMap_PS2
      L0_2 = L0_2.instance
      if L0_2 ~= nil then
        L0_2 = SetHideLayer
        L1_2 = MiniMap_PS2
        L1_2 = L1_2.instance
        L2_2 = 0
        L0_2(L1_2, L2_2)
      end
    end
  else
    L0_2 = MiniMap
    if L0_2 ~= nil then
      L0_2 = MiniMap
      L0_2 = L0_2.instance
      if L0_2 ~= nil then
        L0_2 = SetHideLayer
        L1_2 = MiniMap
        L1_2 = L1_2.instance
        L2_2 = 0
        L0_2(L1_2, L2_2)
      end
    end
  end
end
HideHUD = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2.instance
    if L1_2 ~= nil then
      L1_2 = PlayMenuAnimation
      L2_2 = A0_2.instance
      L3_2 = "Intro"
      L1_2(L2_2, L3_2)
    end
  end
end
ShowUI = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = A0_2.instance
    if L1_2 ~= nil then
      L1_2 = PlayMenuAnimation
      L2_2 = A0_2.instance
      L3_2 = "Outro"
      L1_2(L2_2, L3_2)
    end
  end
end
HideUI = L0_1
function L0_1(A0_2)
  local L1_2, L2_2
  L1_2 = engFormatTime
  L2_2 = A0_2
  return L1_2(L2_2)
end
FormatTimeStandardized = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = A0_2 / 60
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = L1_2 / 60
  L2_2 = L2_2(L3_2)
  L3_2 = 60 * L2_2
  L3_2 = L1_2 - L3_2
  L3_2 = L3_2 * 60
  A0_2 = A0_2 - L3_2
  L3_2 = L2_2 * 60
  L1_2 = L1_2 - L3_2
  L3_2 = ""
  if 0 < L2_2 then
    L4_2 = ""
    L5_2 = L2_2
    L6_2 = ":"
    L3_2 = L4_2 .. L5_2 .. L6_2
  end
  if 0 < L1_2 then
    L4_2 = L3_2
    L5_2 = L1_2
    L6_2 = ":"
    L3_2 = L4_2 .. L5_2 .. L6_2
  end
  if 0 < L1_2 and A0_2 < 10 then
    L4_2 = "0"
    L5_2 = A0_2
    A0_2 = L4_2 .. L5_2
  end
  L4_2 = L3_2
  L5_2 = A0_2
  L3_2 = L4_2 .. L5_2
  return L3_2
end
FormatTime = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 == false then
    L2_2 = CAssert
    L3_2 = 0
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
Assert = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = string
  L3_2 = L3_2.find
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 == nil then
    L3_2 = {}
    L4_2 = A0_2
    L3_2[1] = L4_2
    return L3_2
  end
  if A2_2 == nil or A2_2 < 1 then
    A2_2 = 0
  end
  L3_2 = {}
  L4_2 = "(.-)"
  L5_2 = A1_2
  L6_2 = "()"
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = 0
  L6_2 = nil
  L7_2 = string
  L7_2 = L7_2.gfind
  L8_2 = A0_2
  L9_2 = L4_2
  L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L5_2 = L5_2 + 1
    L3_2[L5_2] = L10_2
    L6_2 = L11_2
    if L5_2 == A2_2 then
      break
    end
  end
  if L5_2 ~= A2_2 then
    L7_2 = L5_2 + 1
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = A0_2
    L10_2 = L6_2
    L8_2 = L8_2(L9_2, L10_2)
    L3_2[L7_2] = L8_2
  end
  return L3_2
end
Split = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = 1
  L3_2 = string
  L3_2 = L3_2.len
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = 1
  L6_2 = ""
  L7_2 = 1
  A1_2 = A1_2 * 53
  while L3_2 >= L5_2 do
    L8_2 = string
    L8_2 = L8_2.sub
    L9_2 = A0_2
    L10_2 = L5_2
    L11_2 = L5_2 + 1
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 == "{{" then
      L8_2 = string
      L8_2 = L8_2.sub
      L9_2 = A0_2
      L10_2 = L5_2 + 2
      L11_2 = string
      L11_2 = L11_2.find
      L12_2 = A0_2
      L13_2 = "}}"
      L14_2 = L5_2 + 2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L11_2 = L11_2 - 1
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = Split
      L10_2 = L8_2
      L11_2 = "/"
      L9_2 = L9_2(L10_2, L11_2)
      L8_2 = nil
      L10_2 = GetLocalizedString
      L11_2 = L9_2[1]
      L12_2 = L9_2[2]
      L10_2 = L10_2(L11_2, L12_2)
      L9_2 = nil
      L11_2 = string
      L11_2 = L11_2.len
      L12_2 = L10_2
      L11_2 = L11_2(L12_2)
      L12_2 = 1
      while L11_2 >= L12_2 do
        L13_2 = string
        L13_2 = L13_2.sub
        L14_2 = L10_2
        L15_2 = L12_2
        L16_2 = L12_2
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L14_2 = getCharacterWidth
        L15_2 = L13_2
        L14_2 = L14_2(L15_2)
        L4_2 = L4_2 + L14_2
        L12_2 = L12_2 + 1
      end
      while L3_2 >= L5_2 do
        L13_2 = string
        L13_2 = L13_2.sub
        L14_2 = A0_2
        L15_2 = L5_2
        L16_2 = L5_2 + 1
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        if L13_2 == "}}" then
          break
        end
        L13_2 = L6_2
        L14_2 = string
        L14_2 = L14_2.sub
        L15_2 = A0_2
        L16_2 = L5_2
        L17_2 = L5_2
        L14_2 = L14_2(L15_2, L16_2, L17_2)
        L6_2 = L13_2 .. L14_2
        L5_2 = L5_2 + 1
        L7_2 = L7_2 + 1
      end
    else
      L8_2 = string
      L8_2 = L8_2.sub
      L9_2 = A0_2
      L10_2 = L5_2
      L11_2 = L5_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = L6_2
      L10_2 = L8_2
      L6_2 = L9_2 .. L10_2
      L7_2 = L7_2 + 1
      if L8_2 == "\n" then
        L4_2 = 0
      end
      L9_2 = getCharacterWidth
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      L4_2 = L4_2 + L9_2
      L5_2 = L5_2 + 1
      if A1_2 < L4_2 then
        L4_2 = 0
        while 0 < L5_2 do
          L9_2 = string
          L9_2 = L9_2.sub
          L10_2 = A0_2
          L11_2 = L5_2
          L12_2 = L5_2
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          if L9_2 == " " then
            break
          end
          L5_2 = L5_2 - 1
          L7_2 = L7_2 - 1
        end
        L9_2 = string
        L9_2 = L9_2.sub
        L10_2 = L6_2
        L11_2 = 1
        L12_2 = L7_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L6_2 = L9_2
        L9_2 = L6_2
        L10_2 = "\n"
        L6_2 = L9_2 .. L10_2
        L7_2 = L7_2 + 1
        while L3_2 >= L5_2 do
          L9_2 = string
          L9_2 = L9_2.sub
          L10_2 = A0_2
          L11_2 = L5_2
          L12_2 = L5_2
          L9_2 = L9_2(L10_2, L11_2, L12_2)
          if L9_2 ~= " " then
            break
          end
          L5_2 = L5_2 + 1
        end
      end
    end
  end
  return L6_2
end
Wrap = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_GetStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StoryEventStatus
  L3_2 = "First"
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
FirstInEvent = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_GetStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StoryEventStatus
  L3_2 = "First"
  L2_2 = L2_2(L3_2)
  if L1_2 ~= L2_2 then
    L1_2 = StoryEvent_GetStatus
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = StoryEventStatus
    L3_2 = "Placed"
    L2_2 = L2_2(L3_2)
    if L1_2 ~= L2_2 then
      goto lbl_20
    end
  end
  L1_2 = true
  do return L1_2 end
  goto lbl_22
  ::lbl_20::
  L1_2 = false
  do return L1_2 end
  ::lbl_22::
end
PlacedInEvent = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_GetStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = StoryEventStatus
  L3_2 = "CutsceneFinished"
  L2_2 = L2_2(L3_2)
  if L1_2 == L2_2 then
    L1_2 = true
    return L1_2
  else
    L1_2 = false
    return L1_2
  end
end
CutSceneFinished = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = StoryEvent_UpdateStatus
  L2_2 = A0_2
  L3_2 = "Unlocked"
  L1_2(L2_2, L3_2)
end
UnlockEvent = L0_1
L0_1 = 0
DayTime = L0_1
L0_1 = 1
NightTime = L0_1
L0_1 = 200
NumBoltBanners = L0_1
L0_1 = 0
UIStats_TotalTime = L0_1
L0_1 = 1
UIStats_BestLap = L0_1
L0_1 = 1
UISoundEventMenuIn = L0_1
L0_1 = 2
UISoundEventMenuOut = L0_1
L0_1 = 3
UISoundEventBack = L0_1
L0_1 = 4
UISoundEventSelectContinue = L0_1
L0_1 = 5
UISoundEventLeftRight = L0_1
L0_1 = 6
UISoundEventType_Up_Down = L0_1
L0_1 = 7
UISoundEventAddPoints = L0_1
L0_1 = 8
UISoundEventType_Fail = L0_1
L0_1 = 9
UISoundEventType_Win = L0_1
L0_1 = 10
UISoundEvent321Count = L0_1
L0_1 = 11
UISoundEvent321Go = L0_1
L0_1 = 12
UISoundEventBonusPointPickup = L0_1
L0_1 = 13
UISoundEventLapCompleted = L0_1
L0_1 = 14
UISoundEventBadInputIG = L0_1
L0_1 = 8
UISoundEventBadInput = L0_1
L0_1 = 9
UISoundEventUnlockAsset = L0_1
L0_1 = 10
UISoundEventSignShuffle = L0_1
L0_1 = 11
UISoundEventCheatValid = L0_1
L0_1 = 12
UISoundEventCheatInvalid = L0_1
L0_1 = 13
UISoundEventFE_Ramones_Complete = L0_1
L0_1 = 14
UISoundEventFE_Ramones_NextChar = L0_1
L0_1 = 15
UISoundEventFE_Ramones_Toggle = L0_1
L0_1 = 16
UISoundEventFE_Docs_NextKit = L0_1
L0_1 = 17
UISoundEventFE_Docs_Toggle = L0_1
L0_1 = 18
UISoundEventFE_Docs_Complete = L0_1
L0_1 = 19
UISoundEventFE_Luigis_Toggle = L0_1
L0_1 = 10
UISoundEventFE_Luigis_Complete = L0_1
L0_1 = 15
UISoundEventGoodDrift = L0_1
L0_1 = 16
UISoundEventGreatDrift = L0_1
L0_1 = 17
UISoundEventAwesomeDrift = L0_1
L0_1 = 18
UISoundEventPointsInBucke = L0_1
L0_1 = 19
UISoundEventTIMER = L0_1
L0_1 = 20
UISoundEventEventWin = L0_1
L0_1 = 21
UISoundEventEventLose = L0_1
L0_1 = 22
UISoundEventPenalty2 = L0_1
L0_1 = 23
UISoundEventGestureBeep1 = L0_1
L0_1 = 24
UISoundEventGestureBeep2 = L0_1
L0_1 = 25
UISoundEventComplete_Lap = L0_1
L0_1 = 26
UISoundEventWIN = L0_1
L0_1 = 27
UISoundEventTake2nd3rd = L0_1
L0_1 = 28
UISoundEventLOSE = L0_1
L0_1 = 29
UISoundEventUnlock_Asset = L0_1
L0_1 = 30
UISoundEventUP_DOWN = L0_1
L0_1 = 31
UISoundEventLeft_Right = L0_1
L0_1 = 32
UISoundEventSelect_Continue = L0_1
L0_1 = 33
UISoundEventBack2 = L0_1
L0_1 = 34
UISoundEventMenu_In = L0_1
L0_1 = 35
UISoundEventMenu_Out = L0_1
L0_1 = 36
UISoundEventCheat_Correct = L0_1
L0_1 = 37
UISoundEventCheat_Incorrect = L0_1
L0_1 = 38
UISoundEventDodgeMultiplier = L0_1
L0_1 = -1
State_PreLoad = L0_1
L0_1 = 0
State_PreEvent = L0_1
L0_1 = 1
State_Tutorial = L0_1
L0_1 = 2
State_PreEventUI = L0_1
L0_1 = 3
State_Begin = L0_1
L0_1 = 4
State_Rollup = L0_1
L0_1 = 5
State_Countdown = L0_1
L0_1 = 6
State_Running = L0_1
L0_1 = 7
State_GameOver = L0_1
L0_1 = 8
State_End = L0_1
L0_1 = 9
State_Results = L0_1
L0_1 = 10
State_PostEvent = L0_1
L0_1 = 11
State_SaveProfile = L0_1
L0_1 = 12
State_PostEventUI = L0_1
L0_1 = 13
State_Rewards = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = {}
L5_1 = {}
L6_1 = {}
L7_1 = {}
L8_1 = {}
L9_1 = {}
L10_1 = {}
L11_1 = {}
L12_1 = {}
L13_1 = {}
L14_1 = {}
L15_1 = {}
L16_1 = {}
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L0_1[14] = L14_1
L0_1[15] = L15_1
L0_1[16] = L16_1
QueuedActions = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = DebugPrint
  L3_2 = "Queueing delayed state action for next state: "
  L4_2 = A0_2
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
  L2_2 = table
  L2_2 = L2_2.insert
  L3_2 = _G
  L3_2 = L3_2.QueuedActions
  L4_2 = A0_2 + 1
  L3_2 = L3_2[L4_2]
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
QueueAction = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = DebugPrint
  L2_2 = "Clearing Action queue for state "
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = _G
  L1_2 = L1_2.QueuedActions
  L2_2 = A0_2 + 1
  L1_2[L2_2] = nil
  L1_2 = _G
  L1_2 = L1_2.QueuedActions
  L2_2 = A0_2 + 1
  L3_2 = {}
  L1_2[L2_2] = L3_2
end
ClearActionQueue = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = _G
  L1_2 = L1_2.QueuedActions
  L2_2 = A0_2 + 1
  L1_2 = L1_2[L2_2]
  L1_2 = #L1_2
  L2_2 = DebugPrint
  L3_2 = "Executing "
  L4_2 = L1_2
  L5_2 = " Queued actions for state: "
  L6_2 = A0_2
  L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2
  L2_2(L3_2)
  L2_2 = 1
  L3_2 = L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = DebugPrint
    L7_2 = "Executing queued action #"
    L8_2 = L5_2
    L9_2 = " !"
    L7_2 = L7_2 .. L8_2 .. L9_2
    L6_2(L7_2)
    L6_2 = _G
    L6_2 = L6_2.QueuedActions
    L7_2 = A0_2 + 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2[L5_2]
    L6_2()
  end
  L2_2 = ClearActionQueue
  L3_2 = A0_2
  L2_2(L3_2)
end
ExecuteQueuedActions = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = QueueAction
  L1_2 = State_Running
  L2_2 = Action_ReturnToStoryMenu
  L0_2(L1_2, L2_2)
  L0_2 = SwitchActivity
  L1_2 = "FE_FrontEnd"
  L2_2 = "player1start"
  L0_2(L1_2, L2_2)
end
ReturnToStoryMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = StoryEvent_GetStatus
  L1_2 = "StoryEvent_CR_01_EX"
  L0_2 = L0_2(L1_2)
  L1_2 = StoryEventStatus
  L2_2 = "Locked"
  L1_2 = L1_2(L2_2)
  if L0_2 ~= L1_2 then
    L0_2 = CurrentEnvironment
    L0_2 = L0_2.FE_FrontEnd
    L1_2 = L0_2
    L0_2 = L0_2.EventHandler
    L2_2 = "PressedStart"
    L0_2(L1_2, L2_2)
    L0_2 = DVDMenu_Play
    L1_2 = "FrontEndCamera"
    L2_2 = "Anim\\FECam03"
    L0_2(L1_2, L2_2)
    L0_2 = RaiseMenu
    L1_2 = "FE_SelectLocation"
    L0_2(L1_2)
  else
    L0_2 = CurrentEnvironment
    L0_2 = L0_2.FE_FrontEnd
    L1_2 = L0_2
    L0_2 = L0_2.EventHandler
    L2_2 = "PressedStart"
    L0_2(L1_2, L2_2)
  end
end
Action_ReturnToStoryMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = QueueAction
  L1_2 = State_Running
  L2_2 = Action_ReturnToArcadeMenu
  L0_2(L1_2, L2_2)
  L0_2 = SwitchActivity
  L1_2 = "FE_FrontEnd"
  L2_2 = "player1start"
  L0_2(L1_2, L2_2)
end
ReturnToArcadeMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentEnvironment
  L0_2 = L0_2.FE_FrontEnd
  L1_2 = L0_2
  L0_2 = L0_2.EventHandler
  L2_2 = "PressedStart"
  L0_2(L1_2, L2_2)
  L0_2 = PlayCameraAnimation
  L1_2 = "FrontEndCamera"
  L2_2 = "Anim\\FECam04"
  L0_2(L1_2, L2_2)
  L0_2 = RaiseMenu
  L1_2 = "FE_ArcadeModeMenu"
  L0_2(L1_2)
end
Action_ReturnToArcadeMenu = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = QueueAction
  L1_2 = State_Running
  L2_2 = Action_RollCredits
  L0_2(L1_2, L2_2)
  L0_2 = SwitchActivity
  L1_2 = "FE_FrontEnd"
  L2_2 = "player1start"
  L0_2(L1_2, L2_2)
end
RollCredits = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = CurrentEnvironment
  L0_2 = L0_2.FE_FrontEnd
  L1_2 = L0_2
  L0_2 = L0_2.EventHandler
  L2_2 = "PressedStart"
  L0_2(L1_2, L2_2)
  L0_2 = PlayCameraAnimation
  L1_2 = "FrontEndCamera"
  L2_2 = "Anim\\FECam07"
  L0_2(L1_2, L2_2)
  L0_2 = RaiseMenu
  L1_2 = "FE_Credits"
  L0_2(L1_2)
end
Action_RollCredits = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = SwitchActivity
  L1_2 = "FE_FrontEnd"
  L2_2 = "player1start"
  L0_2(L1_2, L2_2)
end
OnReturnToTitleScreen = L0_1
L0_1 = {}
L1_1 = 0
L2_1 = 0
L0_1[1] = L1_1
L0_1[2] = L2_1
DVDMenu_PlayerInputEnabled = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = DVDMenu_PlayerInputEnabled
  L3_2 = GetPlayerInputEnabled
  L4_2 = 0
  L3_2 = L3_2(L4_2)
  L2_2[1] = L3_2
  L2_2 = DVDMenu_PlayerInputEnabled
  L3_2 = GetPlayerInputEnabled
  L4_2 = 1
  L3_2 = L3_2(L4_2)
  L2_2[2] = L3_2
  L2_2 = DebugPrint
  L3_2 = " *** Disabling player input while playing a locking camera animation *** "
  L2_2(L3_2)
  L2_2 = SetPlayerInputEnabled
  L3_2 = 0
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = SetPlayerInputEnabled
  L3_2 = 1
  L4_2 = 0
  L2_2(L3_2, L4_2)
  L2_2 = PlayCameraAnimationWithCallback
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = "DVDMenu_Unlock"
  L2_2(L3_2, L4_2, L5_2)
end
DVDMenu_Play = L0_1
function L0_1()
  local L0_2, L1_2, L2_2
  L0_2 = DebugPrint
  L1_2 = " *** Restoring previous player input *** "
  L0_2(L1_2)
  L0_2 = SetPlayerInputEnabled
  L1_2 = 0
  L2_2 = DVDMenu_PlayerInputEnabled
  L2_2 = L2_2[1]
  L0_2(L1_2, L2_2)
  L0_2 = SetPlayerInputEnabled
  L1_2 = 1
  L2_2 = DVDMenu_PlayerInputEnabled
  L2_2 = L2_2[2]
  L0_2(L1_2, L2_2)
end
DVDMenu_Unlock = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GetGameMode
  L0_2 = L0_2()
  if L0_2 == "story" then
    L0_2 = IsAmbientActivityTypeRunning
    L0_2 = L0_2()
    if L0_2 == 1 then
      L0_2 = PushMenu
      L1_2 = "PostEventMissions"
      L0_2(L1_2)
    else
      L0_2 = PushMenu
      L1_2 = "PostEvent"
      L0_2(L1_2)
    end
  else
    L0_2 = PushMenu
    L1_2 = "PostEventArcade"
    L0_2(L1_2)
  end
end
PushPostEvent = L0_1
function L0_1()
  local L0_2, L1_2
  L0_2 = GetGameMode
  L0_2 = L0_2()
  if L0_2 == "story" then
    L0_2 = GetCurrentActivityType
    L0_2 = L0_2()
    if L0_2 == "explorer" then
      L0_2 = IsAmbientActivityTypeRunning
      L0_2 = L0_2()
      if L0_2 == 0 then
        L0_2 = "StoryPauseMenu"
        return L0_2
    end
  end
  else
    L0_2 = "PauseMenu"
    return L0_2
  end
end
GetPauseMenu = L0_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlatform
  L1_2 = L1_2()
  if L1_2 == "ps2" then
    L2_2 = "HUD_Gestures_PS2_1"
    return L2_2
  elseif L1_2 == "ps3" then
    L2_2 = SixAxisEnabled
    L3_2 = A0_2 - 1
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = "HUD_Gestures_PS3_2"
      return L2_2
    else
      L2_2 = "HUD_Gestures_PS3_1"
      return L2_2
    end
  elseif L1_2 == "x360" then
    L2_2 = "HUD_Gestures_360_1"
    return L2_2
  elseif L1_2 == "gcn" then
    L2_2 = GetControllerConfig
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = "HUD_Gestures_Wii_"
    L4_2 = L2_2
    L3_2 = L3_2 .. L4_2
    return L3_2
  end
end
GetGestureHUD = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = 0
  L3_2 = ""
  if A1_2 == "LeftStick" then
    L3_2 = "L"
  elseif A1_2 == "RightStick" then
    L3_2 = "R"
  end
  if A0_2 == "FlickLeftStick" then
    L4_2 = L3_2
    L5_2 = "Left"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "FlickRightStick" then
    L4_2 = L3_2
    L5_2 = "Right"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "FlickUpStick" then
    L4_2 = L3_2
    L5_2 = "Up"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "FlickDownStick" then
    L4_2 = L3_2
    L5_2 = "Down"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "RotateClockwiseStick" then
    L4_2 = L3_2
    L5_2 = "Clockwise"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "RotateCounterClockwiseStick" then
    L4_2 = L3_2
    L5_2 = "CounterClockwise"
    L2_2 = L4_2 .. L5_2
  end
  if A0_2 == "FlickLeft" then
    L4_2 = L3_2
    L5_2 = "Left"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "FlickRight" then
    L4_2 = L3_2
    L5_2 = "Right"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "FlickUp" then
    L4_2 = L3_2
    L5_2 = "Up"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "FlickDown" then
    L4_2 = L3_2
    L5_2 = "Down"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "RotateClockwiseStick" then
    L4_2 = L3_2
    L5_2 = "Clockwise"
    L2_2 = L4_2 .. L5_2
  elseif A0_2 == "RotateCounterClockwiseStick" then
    L4_2 = L3_2
    L5_2 = "CounterClockwise"
    L2_2 = L4_2 .. L5_2
  end
  if L2_2 == 0 then
    L2_2 = A0_2
  end
  return L2_2
end
FixGestureNames = L0_1
L0_1 = 1
ACTIVITY_CONTINUE = L0_1
L0_1 = 2
ACTIVITY_RETRY = L0_1
L0_1 = 3
ACTIVITY_QUIT = L0_1
L0_1 = 0
LE_POPUP_FINISHED = L0_1
L0_1 = 1
LE_POPUP_INPUT = L0_1
L0_1 = 2
LE_TRCPOPUP_STARTED = L0_1
L0_1 = 3
LE_TRCPOPUP_FINISHED = L0_1
L0_1 = 4
LE_POSTEVENT_FINISHED = L0_1
L0_1 = 5
LE_PREEVENT_FINISHED = L0_1
L0_1 = 6
LE_FINISHED_ENUMERATING = L0_1
L0_1 = 7
LE_FINISHED_SAVING = L0_1
L0_1 = 8
LE_FINISHED_LOADING = L0_1
L0_1 = 9
LE_FINISHED_DELETING = L0_1
L0_1 = 10
LE_PROFILES_DISABLED = L0_1
L0_1 = 11
LE_PS3_PROFILE_LOADED = L0_1
L0_1 = 0
FCR_SaveSuccess = L0_1
L0_1 = 1
FCR_SaveFail = L0_1
L0_1 = 2
FCR_SaveQuit = L0_1
L0_1 = 3
FCR_LoadSuccess = L0_1
