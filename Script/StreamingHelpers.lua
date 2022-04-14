IncludeScript("C\\Global\\Chars\\VehicleStreamSectionMap." .. GetPlatform())
CharSelectHelpers = {
  LoadProfileMenuVehicleStreamSections = function(_ARG_0_)
    if GetProfilePaintJob("mcq") == nil or GetProfilePaintJob("mcq") == "" then
    end
    _ARG_0_:LoadAnimations("mcq")
    _ARG_0_:LoadPaintJobTextures("mcq", "mcq" .. "_a")
    ApplyPaintJob("ProfileChar_Mcq", "mcq" .. "_a")
    if WheelSetNeedsPaintJob("mcq", (GetProfileWheelSet("mcq"))) then
      _ARG_0_:LoadWheelSetTextures("mcq", GetProfileWheelSet("mcq"), "mcq" .. "_a")
    else
      _ARG_0_:LoadWheelSetTextures("mcq", GetProfileWheelSet("mcq"), nil)
    end
    ApplyWheelSet("ProfileChar_Mcq", GetProfileWheelSet("mcq"), "mcq" .. "_a")
    for _FORV_7_, _FORV_8_ in ipairs({
      "hood",
      "bumper",
      "side",
      "spoiler"
    }) do
      _ARG_0_:LoadKitPieceTextures("mcq", _FORV_8_, GetProfileKitPiece("mcq", _FORV_8_), "mcq" .. "_a")
      ApplyKitPiece("ProfileChar_Mcq", _FORV_8_, GetProfileKitPiece("mcq", _FORV_8_), "mcq" .. "_a")
    end
  end,
  LoadPaintJobTextures = function(_ARG_0_, _ARG_1_, _ARG_2_)
    LoadCharacterDataFromStream(VehicleStreamSectionMap[string.lower(_ARG_1_)][string.lower(_ARG_2_)])
  end,
  LoadAnimations = function(_ARG_0_, _ARG_1_)
    LoadAnimationDataFromStream(_ARG_1_ .. "_1")
  end,
  LoadWheelSetTextures = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
    if _ARG_3_ ~= nil then
    end
    if VehicleStreamSectionMap[string.lower(_ARG_1_)][string.lower(_ARG_2_ .. string.sub(_ARG_3_, string.find(_ARG_3_, "_") + 1))] ~= nil and VehicleStreamSectionMap[string.lower(_ARG_1_)][string.lower(_ARG_2_ .. string.sub(_ARG_3_, string.find(_ARG_3_, "_") + 1))] ~= "" then
      LoadKitPieceDataFromStream("wheel", VehicleStreamSectionMap[string.lower(_ARG_1_)][string.lower(_ARG_2_ .. string.sub(_ARG_3_, string.find(_ARG_3_, "_") + 1))])
    end
  end,
  LoadKitPieceTextures = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
    function Make2DigitString(_ARG_0_)
      if _ARG_0_ < 10 then
        return 0 .. _ARG_0_
      else
        return _ARG_0_
      end
    end
    sectionName = VehicleStreamSectionMap[string.lower(_ARG_1_)][string.lower(_ARG_3_ .. string.sub(string.lower(_ARG_4_), (string.find(string.lower(_ARG_4_), "_"))))]
    LoadKitPieceDataFromStream(_ARG_2_, sectionName)
  end,
  InitializeVehicleSettings = function(_ARG_0_, _ARG_1_)
    if GetWorkingPaintJob(_ARG_1_) == nil and #{
      GetUnlockedPaintJobList(_ARG_1_)
    } > 0 then
      if GetGameMode() == "story" then
        if GetProfilePaintJob(_ARG_1_) ~= nil then
          SetWorkingPaintJob(_ARG_1_, (GetProfilePaintJob(_ARG_1_)))
        else
          SetWorkingPaintJob(_ARG_1_, {
            GetUnlockedPaintJobList(_ARG_1_)
          }[1])
        end
      else
        SetWorkingPaintJob(_ARG_1_, {
          GetUnlockedPaintJobList(_ARG_1_)
        }[1])
      end
    end
    if GetWorkingWheelSet(_ARG_1_) == nil and 0 < #{
      GetUnlockedWheelSetList(_ARG_1_)
    } then
      if GetGameMode() == "story" then
        if GetProfileWheelSet(_ARG_1_) ~= nil then
          SetWorkingWheelSet(_ARG_1_, (GetProfileWheelSet(_ARG_1_)))
        else
          SetWorkingWheelSet(_ARG_1_, {
            GetUnlockedWheelSetList(_ARG_1_)
          }[1])
        end
      else
        SetWorkingWheelSet(_ARG_1_, {
          GetUnlockedWheelSetList(_ARG_1_)
        }[1])
      end
    end
    for _FORV_5_, _FORV_6_ in ipairs({
      "hood",
      "bumper",
      "side",
      "spoiler"
    }) do
      if GetWorkingKitPiece(_ARG_1_, _FORV_6_) == nil and 0 < #{
        GetUnlockedKitPieceList(_ARG_1_, _FORV_6_)
      } then
        if GetGameMode() == "story" then
          if GetProfileKitPiece(_ARG_1_, _FORV_6_) ~= nil then
            SetWorkingKitPiece(_ARG_1_, _FORV_6_, (GetProfileKitPiece(_ARG_1_, _FORV_6_)))
          else
            SetWorkingKitPiece(_ARG_1_, _FORV_6_, {
              GetUnlockedKitPieceList(_ARG_1_, _FORV_6_)
            }[1])
          end
        else
          SetWorkingKitPiece(_ARG_1_, _FORV_6_, {
            GetUnlockedKitPieceList(_ARG_1_, _FORV_6_)
          }[1])
        end
      end
    end
  end,
  ApplyCurrentVehicleSettings = function(_ARG_0_, _ARG_1_)
    if GetWorkingPaintJob(_ARG_1_) ~= nil then
      ApplyPaintJob(_ARG_1_, (GetWorkingPaintJob(_ARG_1_)))
    end
    if GetWorkingWheelSet(_ARG_1_) ~= nil then
      ApplyWheelSet(_ARG_1_, GetWorkingWheelSet(_ARG_1_), (GetWorkingPaintJob(_ARG_1_)))
    end
    for _FORV_7_, _FORV_8_ in ipairs({
      "hood",
      "bumper",
      "side",
      "spoiler"
    }) do
      if GetWorkingKitPiece(_ARG_1_, _FORV_8_) ~= nil then
        ApplyKitPiece(_ARG_1_, _FORV_8_, GetWorkingKitPiece(_ARG_1_, _FORV_8_), (GetWorkingPaintJob(_ARG_1_)))
      end
    end
  end,
  LoadRequiredStreamingSections = function(_ARG_0_, _ARG_1_)
    _ARG_0_:LoadAnimations(_ARG_1_)
    if GetWorkingPaintJob(_ARG_1_) ~= nil then
      _ARG_0_:LoadPaintJobTextures(_ARG_1_, (GetWorkingPaintJob(_ARG_1_)))
    else
      _ARG_0_:LoadPaintJobTextures(_ARG_1_, _ARG_1_ .. "_a")
    end
    if GetWorkingWheelSet(_ARG_1_) ~= nil then
      if WheelSetNeedsPaintJob(_ARG_1_, (GetWorkingWheelSet(_ARG_1_))) == true then
        _ARG_0_:LoadWheelSetTextures(_ARG_1_, GetWorkingWheelSet(_ARG_1_), (GetWorkingPaintJob(_ARG_1_)))
      else
        _ARG_0_:LoadWheelSetTextures(_ARG_1_, GetWorkingWheelSet(_ARG_1_), nil)
      end
    end
    for _FORV_7_, _FORV_8_ in ipairs({
      "hood",
      "bumper",
      "side",
      "spoiler"
    }) do
      if GetWorkingKitPiece(_ARG_1_, _FORV_8_) ~= nil then
        _ARG_0_:LoadKitPieceTextures(_ARG_1_, _FORV_8_, GetWorkingKitPiece(_ARG_1_, _FORV_8_), (GetWorkingPaintJob(_ARG_1_)))
      end
    end
  end,
  GetKitTypeName = function(_ARG_0_, _ARG_1_)
    return {
      "hood",
      "side",
      "bumper",
      "spoiler"
    }[_ARG_1_]
  end,
  GetProfileVehicleIndex = function(_ARG_0_, _ARG_1_)
    for _FORV_6_, _FORV_7_ in ipairs(_ARG_1_) do
      if string.lower((GetProfileVehicle())) == string.lower(_FORV_7_) then
        return _FORV_6_
      end
    end
    return 1
  end,
  GeteVehicleIndex = function(_ARG_0_, _ARG_1_, _ARG_2_)
    for _FORV_6_, _FORV_7_ in ipairs(_ARG_2_) do
      if string.lower(_ARG_1_) == string.lower(_FORV_7_) then
        return _FORV_6_
      end
    end
    return 1
  end
}
