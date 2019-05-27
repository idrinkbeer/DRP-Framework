-- Do not edit this unless you know what you are doing!
DRPCoreConfig = {}
DRPCoreConfig.StaffRanks = {}
DRPCoreConfig.Locations = {}
-------------------------------------------------------

-- Edit these to your needs
DRPCoreConfig.Whitelisted = true -- true or false if you want to add the whitelist system
DRPCoreConfig.Debug = false -- Developer Mode, this will be seen by all the players in game (not recommended)
DRPCoreConfig.CommunityName = "DarkRP"
-------------------------------------------------------

-- Do not edit this unless you know what you are doing!
DRPCoreConfig.StaffRanks.ranks = {"User", "Moderator", "Administrator", "Developer", "Founder"}
DRPCoreConfig.StaffRanks.perms = {
    ["User"] = {},
    ["Moderator"] = {"heal"},
    ["Administrator"] = {"time", "weather", "adminaddcop", "heal"},
    ["Developer"] = {"time", "weather", "adminaddcop", "heal"},
    ["Founder"] = {"time", "weather", "adminaddcop", "heal"}
}
-- Edit these to your needs
DRPCoreConfig.Locations = {
	{name = "Mission Row Police Station", id = 60, blipSize = 1.0, colour = 4, x = 428.21, y = -981.13, z = 30.71},
	{name = "Sandy Shores Sheriff Department", id = 60, blipSize = 1.0, colour = 4, x = 1857.0, y = 3680.51, z = 33.9},
	{name = "Paleto Bay Sheriff Department", id = 60, blipSize = 1.0, colour = 4, x = -443.37, y = 6016.27, z = 31.71},
	{name = "State Police Department", id = 60, blipSize = 1.0, colour = 4, x = 2521.95, y = -384.09, z = 92.99},
	{name = "Davis Medical Center", id = 61, blipSize = 1.0, colour = 4, x = 303.78, y = -1443.58, z = 29.79},
	{name = "Pillbox Medical Center", id = 61, blipSize = 1.0, colour = 4, x = 325.97, y = -580.67, z = 44.35},
	{name = "Mt. Zonah Medical Center", id = 61, blipSize = 1.0, colour = 4, x = -473.48, y = -339.86, z = 35.2},
	{name = "Capital Blvd Medical Center", id = 61, blipSize = 1.0, colour = 4, x = 1149.5, y = -1495.27, z = 34.69},
	{name = "Sandy Shore Medical Center", id = 61, blipSize = 1.0, colour = 4, x = 1840.4, y = 3670.41, z = 33.77},
	{name = "Paleto Bay Medical Center", id = 61, blipSize = 1.0, colour = 4, x = -232.73, y = 6316.16, z = 31.48},
	{name = "Yellow Jack", id = 93, colour = 50, blipSize = 1.0, x = 1985.68, y = 3052.05, z = 47.22},
}

-- Edit if you know what you are doing
-- 'bone' use bonetag https://pastebin.com/D7JMnX1g
DRPCoreConfig.RealWeapons = {
	--{name = 'WEAPON_NIGHTSTICK', hash = "", 			bone = 58271, x = -0.20, y = 0.1,  z = -0.10, xRot = -55.0,  yRot = 90.00, zRot = 5.0, category = 'melee', 		model = 'w_me_nightstick'},
	{name = 'WEAPON_HAMMER', hash = "", 				bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 265.0, zRot = 0.0, category = 'melee', 		model = 'prop_tool_hammer'},
	{name = 'WEAPON_BAT', hash = "", 				bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 265.0, zRot = 0.0, 		category = 'melee', 		model = 'w_me_bat'},
	{name = 'WEAPON_GOLFCLUB', hash = "", 			bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 265.0, zRot = 0.0, category = 'melee', 		model = 'w_me_gclub'},
	{name = 'WEAPON_HATCHET', hash = "", 				bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 265.0, zRot = 0.0, category = 'melee', 		model = 'w_me_hatchet'},
	{name = 'WEAPON_MACHETE', hash = "", 				bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 265.0, zRot = 0.0, category = 'melee', 		model = 'prop_ld_w_me_machette'},
	{name = 'WEAPON_SMG_MK2', hash = "", 			bone = 24818, x = 0.10,    y = -0.15, 	z = 0.0,     xRot = 10.0, yRot = 50.0, zRot = 0.0, category = 'machine', 	model = 'w_sb_smgmk2'},
	{name = 'WEAPON_SMG', hash = "", 				bone = 24818, x = 0.10,    y = -0.15, 	z = 0.0,     xRot = 10.0, yRot = 50.0, zRot = 0.0, category = 'machine', 	model = 'w_sb_smg'},
	{name = 'WEAPON_MG', hash = "", 				bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'machine', 	model = 'w_mg_mg'},
	{name = 'WEAPON_COMBATMG', hash = "", 			bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'machine', 	model = 'w_mg_combatmg'},
	{name = 'WEAPON_GUSENBERG', hash = "", 		bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'machine', 	model = 'w_sb_gusenberg'},
	{name = 'WEAPON_COMBATPDW', hash = "", 		bone = 24818, x = 0.10,    y = -0.15, 	z = 0.0,     xRot = 10.0, yRot = 50.0, zRot = 0.0, category = 'machine', 	model = 'w_sb_pdw'},
	{name = 'WEAPON_ASSAULTSMG', hash = "", 		bone = 24818, x = 0.10,    y = -0.15, 	z = 0.0,     xRot = 10.0, yRot = 50.0, zRot = 0.0, category = 'machine', 	model = 'w_sb_assaultsmg'},
	{name = 'WEAPON_MINISMG', hash = "", 			bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'machine', 	model = 'wb_sb_minismg'},
	{name = 'WEAPON_ASSAULTRIFLE', hash = "", 		bone = 24818, x = 0.10,    y = -0.15, 	z = 0.0,     xRot = 10.0, yRot = 50.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_assaultrifle'},
	{name = 'WEAPON_CARBINERIFLE', hash = "", 		bone = 24818, x = 0.1,    y = -0.15, 	z = 0.0,     xRot = 0.0, yRot = 135.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_carbinerifle'},
	{name = 'WEAPON_CARBINERIFLE_Mk2', hash = "", 	bone = 24818, x = 0.1,    y = -0.15, 	z = 0.0,     xRot = 0.0, yRot = 135.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_carbineriflemk2'},
	{name = 'WEAPON_ADVANCEDRIFLE', hash = "", 	bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_advancedrifle'},
	{name = 'WEAPON_SPECIALCARBINE', hash = "", 	bone = 24818, x = 0.10, y = -0.15,     z = 0.0,     xRot = 0.0, yRot = 50.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_specialcarbine'},
	{name = 'WEAPON_BULLPUPRIFLE', hash = "", 		bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_bullpuprifle'},
	{name = 'WEAPON_COMPACTRIFLE', hash = "", 		bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'assault', 	model = 'wr_ar_compact'},
	{name = 'WEAPON_SPECIALCARBINE_Mk2', hash = "", bone = 24818, x = 0.10, y = -0.15,     z = 0.0,     xRot = 0.0, yRot = 50.0, zRot = 0.0, category = 'assault', 	model = 'w_ar_specialcarbinemk2'},
	{name = 'WEAPON_PUMPSHOTGUN', hash = "", 		bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 135.0, zRot = 0.0, category = 'shotgun', 	model = 'w_sg_pumpshotgun'},
	{name = 'WEAPON_BULLPUPSHOTGUN', hash = "", 	bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 135.0, zRot = 0.0, category = 'shotgun', 	model = 'w_sg_bullpupshotgun'},
	{name = 'WEAPON_ASSAULTSHOTGUN', hash = "", 	bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'shotgun', 	model = 'w_sg_assaultshotgun'},
	{name = 'WEAPON_MUSKET', hash = "", 			bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'shotgun', 	model = 'w_ar_musket'},
	{name = 'WEAPON_HEAVYSHOTGUN', hash = "", 		bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 225.0, zRot = 0.0, category = 'shotgun', 	model = 'w_sg_heavyshotgun'},
	{name = 'WEAPON_SNIPERRIFLE', hash = "", 		bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'sniper', 	model = 'w_sr_sniperrifle'},
	{name = 'WEAPON_HEAVYSNIPER', hash = "", 		bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 135.0, zRot = 0.0, category = 'sniper', 	model = 'w_sr_heavysniper'},
	{name = 'WEAPON_MARKSMANRIFLE', hash = "", 	bone = 24818, x = 0.1, y = -0.15, z = 0.0, xRot = 0.0, yRot = 135.0, zRot = 0.0, category = 'sniper', 	model = 'w_sr_marksmanrifle'},
	{name = 'WEAPON_FIREEXTINGUISHER', hash = "", bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'thrown', 	model = 'w_am_fire_exting'},
	{name = 'WEAPON_PETROLCAN', hash = "", 		bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'thrown', 	model = 'w_am_jerrycan'},
	{name = 'WEAPON_HANDCUFFS', hash = "", 		bone = 24818, x = 65536.0, y = 65536.0, z = 65536.0, xRot = 0.0, yRot = 0.0, zRot = 0.0, category = 'others', 	model = ''}
}

DRPWeatherConfig = {

    -- Least time for the weather to change
    leastTime = 10,

    -- Max time for the weather to change
    maxTime = 25,

    -- Would you like the weather to be snowing???
    isWinter = false,

    -- Regular Weather Types
    regularWeatherTypes = {
        "CLEAR",
        "EXTRASUNNY",
        "CLOUDS",
        "OVERCAST",
        "RAIN",
        "CLEARING",
        "THUNDER",
        "SMOG",
        "FOGGY"
    },

    -- Winter Weather Types
    winterWeatherTypes = {"XMAS"}
}

DRPTimeConfig = {
    -- Time it takes for one minute to pass
    SecPerMin = 10,

    -- If true it doesn't allow the time to change
    FreezeTime = false,
}
---------------------------------------------------------------------------
function getRealWeapons()
	local weapons = {}
	for i=1, #DRPCoreConfig.RealWeapons do
		table.insert(weapons, DRPCoreConfig.RealWeapons[i].name)
	end
	return weapons
end
---------------------------------------------------------------------------
Citizen.CreateThread(function()
	for i=1, #DRPCoreConfig.RealWeapons do
		DRPCoreConfig.RealWeapons[i].hash = GetHashKey(DRPCoreConfig.RealWeapons[i].name)
	end
end)