local L0_1, L1_1, L2_1
L0_1 = IncludeScript
L1_1 = "C\\Global\\Chars\\VehicleStreamSectionMap."
L2_1 = GetPlatform
L2_1 = L2_1()
L1_1 = L1_1 .. L2_1
L0_1(L1_1)
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = "mcq"
  L2_2 = GetProfilePaintJob
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil or L2_2 == "" then
    L3_2 = L1_2
    L4_2 = "_a"
    L2_2 = L3_2 .. L4_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.LoadAnimations
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.LoadPaintJobTextures
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = ApplyPaintJob
  L4_2 = "ProfileChar_Mcq"
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = GetProfileWheelSet
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = WheelSetNeedsPaintJob
  L5_2 = L1_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2.LoadWheelSetTextures
    L6_2 = L1_2
    L7_2 = L3_2
    L8_2 = L2_2
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2.LoadWheelSetTextures
    L6_2 = L1_2
    L7_2 = L3_2
    L8_2 = nil
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L4_2 = ApplyWheelSet
  L5_2 = "ProfileChar_Mcq"
  L6_2 = L3_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = ipairs
  L5_2 = {}
  L6_2 = "hood"
  L7_2 = "bumper"
  L8_2 = "side"
  L9_2 = "spoiler"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = GetProfileKitPiece
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    L11_2 = A0_2
    L10_2 = A0_2.LoadKitPieceTextures
    L12_2 = L1_2
    L13_2 = L8_2
    L14_2 = L9_2
    L15_2 = L2_2
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    L10_2 = ApplyKitPiece
    L11_2 = "ProfileChar_Mcq"
    L12_2 = L8_2
    L13_2 = L9_2
    L14_2 = L2_2
    L10_2(L11_2, L12_2, L13_2, L14_2)
  end
end
L0_1.LoadProfileMenuVehicleStreamSections = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadCharacterDataFromStream
  L4_2 = VehicleStreamSectionMap
  L5_2 = string
  L5_2 = L5_2.lower
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2[L5_2]
  L5_2 = string
  L5_2 = L5_2.lower
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2[L5_2]
  L3_2(L4_2)
end
L0_1.LoadPaintJobTextures = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = LoadAnimationDataFromStream
  L3_2 = A1_2
  L4_2 = "_1"
  L3_2 = L3_2 .. L4_2
  L2_2(L3_2)
end
L0_1.LoadAnimations = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = ""
  L5_2 = 0
  if A3_2 ~= nil then
    L6_2 = string
    L6_2 = L6_2.find
    L7_2 = A3_2
    L8_2 = "_"
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
    L6_2 = string
    L6_2 = L6_2.sub
    L7_2 = A3_2
    L8_2 = L5_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    L4_2 = L6_2
  end
  L6_2 = VehicleStreamSectionMap
  L7_2 = string
  L7_2 = L7_2.lower
  L8_2 = A1_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2[L7_2]
  L7_2 = string
  L7_2 = L7_2.lower
  L8_2 = A2_2
  L9_2 = L4_2
  L8_2 = L8_2 .. L9_2
  L7_2 = L7_2(L8_2)
  L6_2 = L6_2[L7_2]
  if L6_2 ~= nil and L6_2 ~= "" then
    L7_2 = LoadKitPieceDataFromStream
    L8_2 = "wheel"
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
end
L0_1.LoadWheelSetTextures = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  function L5_2(A0_3)
    local L1_3, L2_3
    if A0_3 < 10 then
      L1_3 = 0
      L2_3 = A0_3
      L1_3 = L1_3 .. L2_3
      return L1_3
    else
      return A0_3
    end
  end
  Make2DigitString = L5_2
  L5_2 = string
  L5_2 = L5_2.lower
  L6_2 = A4_2
  L5_2 = L5_2(L6_2)
  L6_2 = string
  L6_2 = L6_2.find
  L7_2 = L5_2
  L8_2 = "_"
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = string
  L7_2 = L7_2.sub
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = VehicleStreamSectionMap
  L9_2 = string
  L9_2 = L9_2.lower
  L10_2 = A1_2
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2[L9_2]
  L9_2 = string
  L9_2 = L9_2.lower
  L10_2 = A3_2
  L11_2 = L7_2
  L10_2 = L10_2 .. L11_2
  L9_2 = L9_2(L10_2)
  L8_2 = L8_2[L9_2]
  sectionName = L8_2
  L8_2 = LoadKitPieceDataFromStream
  L9_2 = A2_2
  L10_2 = sectionName
  L8_2(L9_2, L10_2)
end
L0_1.LoadKitPieceTextures = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = GetWorkingPaintJob
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L2_2 = {}
    L3_2 = GetUnlockedPaintJobList
    L4_2 = A1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
    L2_2[7] = L9_2
    L2_2[8] = L10_2
    L2_2[9] = L11_2
    L2_2[10] = L12_2
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = GetGameMode
      L3_2 = L3_2()
      if L3_2 == "story" then
        L3_2 = GetProfilePaintJob
        L4_2 = A1_2
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L4_2 = SetWorkingPaintJob
          L5_2 = A1_2
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
        else
          L4_2 = SetWorkingPaintJob
          L5_2 = A1_2
          L6_2 = L2_2[1]
          L4_2(L5_2, L6_2)
        end
      else
        L3_2 = SetWorkingPaintJob
        L4_2 = A1_2
        L5_2 = L2_2[1]
        L3_2(L4_2, L5_2)
      end
    end
  end
  L2_2 = GetWorkingWheelSet
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L2_2 = {}
    L3_2 = GetUnlockedWheelSetList
    L4_2 = A1_2
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L3_2(L4_2)
    L2_2[1] = L3_2
    L2_2[2] = L4_2
    L2_2[3] = L5_2
    L2_2[4] = L6_2
    L2_2[5] = L7_2
    L2_2[6] = L8_2
    L2_2[7] = L9_2
    L2_2[8] = L10_2
    L2_2[9] = L11_2
    L2_2[10] = L12_2
    L3_2 = #L2_2
    if 0 < L3_2 then
      L3_2 = GetGameMode
      L3_2 = L3_2()
      if L3_2 == "story" then
        L3_2 = GetProfileWheelSet
        L4_2 = A1_2
        L3_2 = L3_2(L4_2)
        if L3_2 ~= nil then
          L4_2 = SetWorkingWheelSet
          L5_2 = A1_2
          L6_2 = L3_2
          L4_2(L5_2, L6_2)
        else
          L4_2 = SetWorkingWheelSet
          L5_2 = A1_2
          L6_2 = L2_2[1]
          L4_2(L5_2, L6_2)
        end
      else
        L3_2 = SetWorkingWheelSet
        L4_2 = A1_2
        L5_2 = L2_2[1]
        L3_2(L4_2, L5_2)
      end
    end
  end
  L2_2 = ipairs
  L3_2 = {}
  L4_2 = "hood"
  L5_2 = "bumper"
  L6_2 = "side"
  L7_2 = "spoiler"
  L3_2[1] = L4_2
  L3_2[2] = L5_2
  L3_2[3] = L6_2
  L3_2[4] = L7_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = GetWorkingKitPiece
    L8_2 = A1_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 == nil then
      L7_2 = {}
      L8_2 = GetUnlockedKitPieceList
      L9_2 = A1_2
      L10_2 = L6_2
      L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2)
      L7_2[1] = L8_2
      L7_2[2] = L9_2
      L7_2[3] = L10_2
      L7_2[4] = L11_2
      L7_2[5] = L12_2
      L8_2 = #L7_2
      if 0 < L8_2 then
        L8_2 = GetGameMode
        L8_2 = L8_2()
        if L8_2 == "story" then
          L8_2 = GetProfileKitPiece
          L9_2 = A1_2
          L10_2 = L6_2
          L8_2 = L8_2(L9_2, L10_2)
          if L8_2 ~= nil then
            L9_2 = SetWorkingKitPiece
            L10_2 = A1_2
            L11_2 = L6_2
            L12_2 = L8_2
            L9_2(L10_2, L11_2, L12_2)
          else
            L9_2 = SetWorkingKitPiece
            L10_2 = A1_2
            L11_2 = L6_2
            L12_2 = L7_2[1]
            L9_2(L10_2, L11_2, L12_2)
          end
        else
          L8_2 = SetWorkingKitPiece
          L9_2 = A1_2
          L10_2 = L6_2
          L11_2 = L7_2[1]
          L8_2(L9_2, L10_2, L11_2)
        end
      end
    end
  end
end
L0_1.InitializeVehicleSettings = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = GetWorkingPaintJob
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = ApplyPaintJob
    L4_2 = A1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = GetWorkingWheelSet
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = ApplyWheelSet
    L5_2 = A1_2
    L6_2 = L3_2
    L7_2 = L2_2
    L4_2(L5_2, L6_2, L7_2)
  end
  L4_2 = ipairs
  L5_2 = {}
  L6_2 = "hood"
  L7_2 = "bumper"
  L8_2 = "side"
  L9_2 = "spoiler"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = GetWorkingKitPiece
    L10_2 = A1_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L10_2 = ApplyKitPiece
      L11_2 = A1_2
      L12_2 = L8_2
      L13_2 = L9_2
      L14_2 = L2_2
      L10_2(L11_2, L12_2, L13_2, L14_2)
    end
  end
end
L0_1.ApplyCurrentVehicleSettings = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = A0_2
  L2_2 = A0_2.LoadAnimations
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = GetWorkingPaintJob
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L4_2 = A0_2
    L3_2 = A0_2.LoadPaintJobTextures
    L5_2 = A1_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.LoadPaintJobTextures
    L5_2 = A1_2
    L6_2 = A1_2
    L7_2 = "_a"
    L6_2 = L6_2 .. L7_2
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = GetWorkingWheelSet
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = WheelSetNeedsPaintJob
    L5_2 = A1_2
    L6_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2)
    if L4_2 == true then
      L5_2 = A0_2
      L4_2 = A0_2.LoadWheelSetTextures
      L6_2 = A1_2
      L7_2 = L3_2
      L8_2 = L2_2
      L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L5_2 = A0_2
      L4_2 = A0_2.LoadWheelSetTextures
      L6_2 = A1_2
      L7_2 = L3_2
      L8_2 = nil
      L4_2(L5_2, L6_2, L7_2, L8_2)
    end
  end
  L4_2 = ipairs
  L5_2 = {}
  L6_2 = "hood"
  L7_2 = "bumper"
  L8_2 = "side"
  L9_2 = "spoiler"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  L5_2[3] = L8_2
  L5_2[4] = L9_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = GetWorkingKitPiece
    L10_2 = A1_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 ~= nil then
      L11_2 = A0_2
      L10_2 = A0_2.LoadKitPieceTextures
      L12_2 = A1_2
      L13_2 = L8_2
      L14_2 = L9_2
      L15_2 = L2_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
    end
  end
end
L0_1.LoadRequiredStreamingSections = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = {}
  L3_2 = "hood"
  L4_2 = "side"
  L5_2 = "bumper"
  L6_2 = "spoiler"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L2_2[4] = L6_2
  L3_2 = L2_2[A1_2]
  return L3_2
end
L0_1.GetKitTypeName = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = GetProfileVehicle
  L2_2 = L2_2()
  L3_2 = ipairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.lower
    L9_2 = L2_2
    L8_2 = L8_2(L9_2)
    L9_2 = string
    L9_2 = L9_2.lower
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      return L6_2
    end
  end
  L3_2 = 1
  return L3_2
end
L0_1.GetProfileVehicleIndex = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = ipairs
  L4_2 = A2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = string
    L8_2 = L8_2.lower
    L9_2 = A1_2
    L8_2 = L8_2(L9_2)
    L9_2 = string
    L9_2 = L9_2.lower
    L10_2 = L7_2
    L9_2 = L9_2(L10_2)
    if L8_2 == L9_2 then
      return L6_2
    end
  end
  L3_2 = 1
  return L3_2
end
L0_1.GeteVehicleIndex = L1_1
CharSelectHelpers = L0_1
