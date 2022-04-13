local L0_1, L1_1
L0_1 = 0
g_LastBonusPoints = L0_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = getvar
  L1_2 = "BonusPointTotal"
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L1_2 = 30000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 1!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SCA"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SHA"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art1"
      L2_2(L3_2)
    end
  end
  L1_2 = 60000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 2!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "HUD"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "hud_b"
      L2_2(L3_2)
    end
  end
  L1_2 = 90000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 3!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "PCH"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "PCC"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art2"
      L2_2(L3_2)
    end
  end
  L1_2 = 120000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 4!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "FIL"
      L2_2(L3_2)
    end
  end
  L1_2 = 150000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 5!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "CHI"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "hud_b1"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art3"
      L2_2(L3_2)
    end
  end
  L1_2 = 180000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 6!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SCB"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SHB"
      L2_2(L3_2)
    end
  end
  L1_2 = 210000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 7!"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "hud_b2"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art4"
      L2_2(L3_2)
    end
  end
  L1_2 = 240000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 8!"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "RAM"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_b"
      L2_2(L3_2)
    end
  end
  L1_2 = 270000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 9!"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "hud_b3"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art5"
      L2_2(L3_2)
    end
  end
  L1_2 = 300000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 10"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SCC"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SHC"
      L2_2(L3_2)
    end
  end
  L1_2 = 330000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 11"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_b1"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art6"
      L2_2(L3_2)
    end
  end
  L1_2 = 360000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 12"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "FLO"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_b"
      L2_2(L3_2)
    end
  end
  L1_2 = 390000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 13"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "hud_c"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art7"
      L2_2(L3_2)
    end
  end
  L1_2 = 420000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 14"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SCD"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SHD"
      L2_2(L3_2)
    end
  end
  L1_2 = 450000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 15"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_b2"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art8"
      L2_2(L3_2)
    end
  end
  L1_2 = 480000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 16"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SAR"
      L2_2(L3_2)
    end
  end
  L1_2 = 510000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 17"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_b1"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art9"
      L2_2(L3_2)
    end
  end
  L1_2 = 540000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 18"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "lui_a"
      L2_2(L3_2)
    end
  end
  L1_2 = 570000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 19"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_c"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art10"
      L2_2(L3_2)
    end
  end
  L1_2 = 600000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 20"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SHER"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_b"
      L2_2(L3_2)
    end
  end
  L1_2 = 630000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 21"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_b2"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art11"
      L2_2(L3_2)
    end
  end
  L1_2 = 660000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 22"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_c"
      L2_2(L3_2)
    end
  end
  L1_2 = 690000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 23"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "Hud_d"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art12"
      L2_2(L3_2)
    end
  end
  L1_2 = 720000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 24"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "SULM"
      L2_2(L3_2)
    end
  end
  L1_2 = 750000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 25"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_d"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art13"
      L2_2(L3_2)
    end
  end
  L1_2 = 780000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 26"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_c"
      L2_2(L3_2)
    end
  end
  L1_2 = 810000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 27"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_d"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art14"
      L2_2(L3_2)
    end
  end
  L1_2 = 840000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 28"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "TATR"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_b"
      L2_2(L3_2)
    end
  end
  L1_2 = 870000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 29"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "PCM"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "NOC"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art15"
      L2_2(L3_2)
    end
  end
  L1_2 = 900000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 30"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_c"
      L2_2(L3_2)
    end
  end
  L1_2 = 930000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 31"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "hud_c1"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art16"
      L2_2(L3_2)
    end
  end
  L1_2 = 960000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 32"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "TatJR"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_b"
      L2_2(L3_2)
    end
  end
  L1_2 = 990000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 33"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_d"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art17"
      L2_2(L3_2)
    end
  end
  L1_2 = 1020000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 34"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_c"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_c1"
      L2_2(L3_2)
    end
  end
  L1_2 = 1050000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 35"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_e"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art18"
      L2_2(L3_2)
    end
  end
  L1_2 = 1080000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 36"
      L2_2(L3_2)
      L2_2 = UnlockVehicle
      L3_2 = "VNN"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_e"
      L2_2(L3_2)
    end
  end
  L1_2 = 1110000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 37"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_f"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art19"
      L2_2(L3_2)
    end
  end
  L1_2 = 1140000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 38"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_d"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_e"
      L2_2(L3_2)
    end
  end
  L1_2 = 1170000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 39"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_g"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art20"
      L2_2(L3_2)
    end
  end
  L1_2 = 1200000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 40"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_e"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_c2"
      L2_2(L3_2)
    end
  end
  L1_2 = 1230000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 41"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_h"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art21"
      L2_2(L3_2)
    end
  end
  L1_2 = 1260000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 42"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_f"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_f"
      L2_2(L3_2)
    end
  end
  L1_2 = 1290000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 43"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatr_i"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art22"
      L2_2(L3_2)
    end
  end
  L1_2 = 1320000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 44"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_g"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_f"
      L2_2(L3_2)
    end
  end
  L1_2 = 1350000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 45"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_g"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art23"
      L2_2(L3_2)
    end
  end
  L1_2 = 1380000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 46"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_h"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_d"
      L2_2(L3_2)
    end
  end
  L1_2 = 1410000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 47"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_h"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art24"
      L2_2(L3_2)
    end
  end
  L1_2 = 1440000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 48"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "tatjr_i"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_g"
      L2_2(L3_2)
    end
  end
  L1_2 = 1470000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 49"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_d1"
      L2_2(L3_2)
      L2_2 = UnlockBonusContentItem
      L3_2 = "Art25"
      L2_2(L3_2)
    end
  end
  L1_2 = 1500000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 50"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_i"
      L2_2(L3_2)
    end
  end
  L1_2 = 1530000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 51"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "flo_d2"
      L2_2(L3_2)
    end
  end
  L1_2 = 1560000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 52"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "ram_h"
      L2_2(L3_2)
    end
  end
  L1_2 = 1590000
  if L0_2 >= L1_2 then
    L2_2 = g_LastBonusPoints
    if L1_2 > L2_2 then
      L2_2 = DebugPrint
      L3_2 = "gained bonus points threshold level 53"
      L2_2(L3_2)
      L2_2 = UnlockPaintjob
      L3_2 = "sher_j"
      L2_2(L3_2)
    end
  end
  g_LastBonusPoints = L0_2
end
L0_1.CheckThresholds = L1_1
BonusPoints = L0_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2
  L0_2 = getvar
  L1_2 = "BoltBannersTotal"
  L0_2 = L0_2(L1_2)
  if 25 <= L0_2 then
    L1_2 = CutSceneFinished
    L2_2 = "StoryEvent_CutScene5"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = UnlockEvent
      L2_2 = "StoryEvent_CutScene6"
      L1_2(L2_2)
    end
  elseif 75 <= L0_2 then
    L1_2 = CutSceneFinished
    L2_2 = "StoryEvent_CutScene10"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = UnlockEvent
      L2_2 = "StoryEvent_StadiumRace2"
      L1_2(L2_2)
    end
  elseif 160 <= L0_2 then
    L1_2 = CutSceneFinished
    L2_2 = "StoryEvent_CutScene14"
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = CutSceneFinished
      L2_2 = "StoryEvent_CutScene18"
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = UnlockEvent
        L2_2 = "StoryEvent_CutScene19"
        L1_2(L2_2)
      end
    end
  else
    L1_2 = getvar
    L2_2 = "TotalNumberOfBoltBanners"
    L1_2 = L1_2(L2_2)
    if L0_2 >= L1_2 then
      L1_2 = UnlockEvent
      L2_2 = "StoryEvent_CutScene31"
      L1_2(L2_2)
    end
  end
end
L0_1.onCollected = L1_1
BoltBanners = L0_1
