g_LastBonusPoints = 0
BonusPoints = {
  CheckThresholds = function()
    if getvar("BonusPointTotal") >= 30000 and 30000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 1!")
      UnlockVehicle("SCA")
      UnlockVehicle("SHA")
      UnlockBonusContentItem("Art1")
    end
    if getvar("BonusPointTotal") >= 60000 and 60000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 2!")
      UnlockVehicle("HUD")
      UnlockPaintjob("hud_b")
    end
    if getvar("BonusPointTotal") >= 90000 and 90000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 3!")
      UnlockVehicle("PCH")
      UnlockVehicle("PCC")
      UnlockBonusContentItem("Art2")
    end
    if getvar("BonusPointTotal") >= 120000 and 120000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 4!")
      UnlockVehicle("FIL")
    end
    if getvar("BonusPointTotal") >= 150000 and 150000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 5!")
      UnlockVehicle("CHI")
      UnlockPaintjob("hud_b1")
      UnlockBonusContentItem("Art3")
    end
    if getvar("BonusPointTotal") >= 180000 and 180000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 6!")
      UnlockVehicle("SCB")
      UnlockVehicle("SHB")
    end
    if getvar("BonusPointTotal") >= 210000 and 210000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 7!")
      UnlockPaintjob("hud_b2")
      UnlockBonusContentItem("Art4")
    end
    if getvar("BonusPointTotal") >= 240000 and 240000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 8!")
      UnlockVehicle("RAM")
      UnlockPaintjob("ram_b")
    end
    if getvar("BonusPointTotal") >= 270000 and 270000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 9!")
      UnlockPaintjob("hud_b3")
      UnlockBonusContentItem("Art5")
    end
    if getvar("BonusPointTotal") >= 300000 and 300000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 10")
      UnlockVehicle("SCC")
      UnlockVehicle("SHC")
    end
    if getvar("BonusPointTotal") >= 330000 and 330000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 11")
      UnlockPaintjob("ram_b1")
      UnlockBonusContentItem("Art6")
    end
    if getvar("BonusPointTotal") >= 360000 and 360000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 12")
      UnlockVehicle("FLO")
      UnlockPaintjob("flo_b")
    end
    if getvar("BonusPointTotal") >= 390000 and 390000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 13")
      UnlockPaintjob("hud_c")
      UnlockBonusContentItem("Art7")
    end
    if getvar("BonusPointTotal") >= 420000 and 420000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 14")
      UnlockVehicle("SCD")
      UnlockVehicle("SHD")
    end
    if getvar("BonusPointTotal") >= 450000 and 450000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 15")
      UnlockPaintjob("ram_b2")
      UnlockBonusContentItem("Art8")
    end
    if getvar("BonusPointTotal") >= 480000 and 480000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 16")
      UnlockVehicle("SAR")
    end
    if getvar("BonusPointTotal") >= 510000 and 510000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 17")
      UnlockPaintjob("flo_b1")
      UnlockBonusContentItem("Art9")
    end
    if getvar("BonusPointTotal") >= 540000 and 540000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 18")
      UnlockPaintjob("lui_a")
    end
    if getvar("BonusPointTotal") >= 570000 and 570000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 19")
      UnlockPaintjob("ram_c")
      UnlockBonusContentItem("Art10")
    end
    if getvar("BonusPointTotal") >= 600000 and 600000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 20")
      UnlockVehicle("SHER")
      UnlockPaintjob("sher_b")
    end
    if getvar("BonusPointTotal") >= 630000 and 630000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 21")
      UnlockPaintjob("flo_b2")
      UnlockBonusContentItem("Art11")
    end
    if getvar("BonusPointTotal") >= 660000 and 660000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 22")
      UnlockPaintjob("sher_c")
    end
    if getvar("BonusPointTotal") >= 690000 and 690000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 23")
      UnlockPaintjob("Hud_d")
      UnlockBonusContentItem("Art12")
    end
    if getvar("BonusPointTotal") >= 720000 and 720000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 24")
      UnlockVehicle("SULM")
    end
    if getvar("BonusPointTotal") >= 750000 and 750000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 25")
      UnlockPaintjob("ram_d")
      UnlockBonusContentItem("Art13")
    end
    if getvar("BonusPointTotal") >= 780000 and 780000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 26")
      UnlockPaintjob("flo_c")
    end
    if getvar("BonusPointTotal") >= 810000 and 810000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 27")
      UnlockPaintjob("sher_d")
      UnlockBonusContentItem("Art14")
    end
    if getvar("BonusPointTotal") >= 840000 and 840000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 28")
      UnlockVehicle("TATR")
      UnlockPaintjob("tatr_b")
    end
    if getvar("BonusPointTotal") >= 870000 and 870000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 29")
      UnlockVehicle("PCM")
      UnlockVehicle("NOC")
      UnlockBonusContentItem("Art15")
    end
    if getvar("BonusPointTotal") >= 900000 and 900000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 30")
      UnlockPaintjob("tatr_c")
    end
    if getvar("BonusPointTotal") >= 930000 and 930000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 31")
      UnlockPaintjob("hud_c1")
      UnlockBonusContentItem("Art16")
    end
    if getvar("BonusPointTotal") >= 960000 and 960000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 32")
      UnlockVehicle("TatJR")
      UnlockPaintjob("tatjr_b")
    end
    if getvar("BonusPointTotal") >= 990000 and 990000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 33")
      UnlockPaintjob("tatr_d")
      UnlockBonusContentItem("Art17")
    end
    if getvar("BonusPointTotal") >= 1020000 and 1020000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 34")
      UnlockPaintjob("tatjr_c")
      UnlockPaintjob("flo_c1")
    end
    if getvar("BonusPointTotal") >= 1050000 and 1050000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 35")
      UnlockPaintjob("tatr_e")
      UnlockBonusContentItem("Art18")
    end
    if getvar("BonusPointTotal") >= 1080000 and 1080000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 36")
      UnlockVehicle("VNN")
      UnlockPaintjob("ram_e")
    end
    if getvar("BonusPointTotal") >= 1110000 and 1110000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 37")
      UnlockPaintjob("tatr_f")
      UnlockBonusContentItem("Art19")
    end
    if getvar("BonusPointTotal") >= 1140000 and 1140000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 38")
      UnlockPaintjob("tatjr_d")
      UnlockPaintjob("sher_e")
    end
    if getvar("BonusPointTotal") >= 1170000 and 1170000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 39")
      UnlockPaintjob("tatr_g")
      UnlockBonusContentItem("Art20")
    end
    if getvar("BonusPointTotal") >= 1200000 and 1200000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 40")
      UnlockPaintjob("tatjr_e")
      UnlockPaintjob("flo_c2")
    end
    if getvar("BonusPointTotal") >= 1230000 and 1230000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 41")
      UnlockPaintjob("tatr_h")
      UnlockBonusContentItem("Art21")
    end
    if getvar("BonusPointTotal") >= 1260000 and 1260000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 42")
      UnlockPaintjob("tatjr_f")
      UnlockPaintjob("ram_f")
    end
    if getvar("BonusPointTotal") >= 1290000 and 1290000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 43")
      UnlockPaintjob("tatr_i")
      UnlockBonusContentItem("Art22")
    end
    if getvar("BonusPointTotal") >= 1320000 and 1320000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 44")
      UnlockPaintjob("tatjr_g")
      UnlockPaintjob("sher_f")
    end
    if getvar("BonusPointTotal") >= 1350000 and 1350000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 45")
      UnlockPaintjob("sher_g")
      UnlockBonusContentItem("Art23")
    end
    if getvar("BonusPointTotal") >= 1380000 and 1380000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 46")
      UnlockPaintjob("tatjr_h")
      UnlockPaintjob("flo_d")
    end
    if getvar("BonusPointTotal") >= 1410000 and 1410000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 47")
      UnlockPaintjob("sher_h")
      UnlockBonusContentItem("Art24")
    end
    if getvar("BonusPointTotal") >= 1440000 and 1440000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 48")
      UnlockPaintjob("tatjr_i")
      UnlockPaintjob("ram_g")
    end
    if getvar("BonusPointTotal") >= 1470000 and 1470000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 49")
      UnlockPaintjob("flo_d1")
      UnlockBonusContentItem("Art25")
    end
    if getvar("BonusPointTotal") >= 1500000 and 1500000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 50")
      UnlockPaintjob("sher_i")
    end
    if getvar("BonusPointTotal") >= 1530000 and 1530000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 51")
      UnlockPaintjob("flo_d2")
    end
    if getvar("BonusPointTotal") >= 1560000 and 1560000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 52")
      UnlockPaintjob("ram_h")
    end
    if getvar("BonusPointTotal") >= 1590000 and 1590000 > g_LastBonusPoints then
      DebugPrint("gained bonus points threshold level 53")
      UnlockPaintjob("sher_j")
    end
    g_LastBonusPoints = getvar("BonusPointTotal")
  end
}
BoltBanners = {
  onCollected = function()
    if getvar("BoltBannersTotal") >= 25 then
      if CutSceneFinished("StoryEvent_CutScene5") then
        UnlockEvent("StoryEvent_CutScene6")
      end
    elseif getvar("BoltBannersTotal") >= 75 then
      if CutSceneFinished("StoryEvent_CutScene10") then
        UnlockEvent("StoryEvent_StadiumRace2")
      end
    elseif getvar("BoltBannersTotal") >= 160 then
      if CutSceneFinished("StoryEvent_CutScene14") and CutSceneFinished("StoryEvent_CutScene18") then
        UnlockEvent("StoryEvent_CutScene19")
      end
    elseif getvar("BoltBannersTotal") >= getvar("TotalNumberOfBoltBanners") then
      UnlockEvent("StoryEvent_CutScene31")
    end
  end
}
