RegisterNetEvent('giveWeapon')
AddEventHandler('giveWeapon',function(weapon,ammo,equip,loaded)
    giveWeapon(weapon,ammo,equip,loaded)
end)
function giveWeapon(weapon,ammo,equip,loaded)
    GiveWeaponToPed(GetPlayerPed(-1),getWeaponHash(weapon),ammo,equip,loaded)
end
RegisterNetEvent('takeWeapon')
AddEventHandler('takeWeapon',function(weapon)
    takeWeapon(weapon,ammo)
end)
function takeWeapon(weapon)
    RemoveWeaponFromPed(GetPlayerPed(-1),getWeaponHash(weapon))
end
function getWeapon(name)
    return weapon[name]
end
function getWeaponHash(name)
    return weapon[name]["HASH"]
end
function getWeaponType(name)
    return weapon[name]["TYPE"]
end
function getWeaponPickup(name)
    return weapon[name]["WEAPONPICKUP"]
end
function getAmmoPickup(name)
    return weapon[name]["AMMOPICKUP"]
end
function getWeaponByHash(hash)
    for key,value in pairs(weapons) do
        if value["HASH"] == hash then
            return key
        end
    end
end

weapons = {
    ["UNARMED"] = {
        ["HASH"] = 0xA2719263,
        ["TYPE"] = "UNARMED",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },    
    ["PISTOL"] = {
        ["HASH"] = 0x1B06D571,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0xF9AFB48F --0xA54AE7B7
    },
    ["COMBATPISTOL"] = {
        ["HASH"] = 0x5EF9FEC4,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0x8967B4F3 --0xD0AACEF7
    },
    ["APPISTOL"] = {
        ["HASH"] = 0x22D8FE39,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0x3B662889 --0xCC8B3905
    },
    ["PISTOL50"] = {
        ["HASH"] = 0x99AEEB3B,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0x6C5B941A
    },
    ["HEAVYPISTOL"] = {
        ["HASH"] = 0xD205520E,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0x9CF13918
    },
    ["SNSPISTOL"] = {
        ["HASH"] = 0xBFD21232,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0xC5B72713
    },
    ["VINTAGEPISTOL"] = {
        ["HASH"] = 0x083839C4,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = 0xEBF89D5F
    },
    ["MARKSMANPISTOL"] = {
        ["HASH"] = 0xDC4DB296,
        ["TYPE"] = "PISTOL",
        ["AMMOPICKUP"] = 0x20796A82,
        ["WEAPONPICKUP"] = nil
    },
    ["MICROSMG"] = {
        ["HASH"] = 0x13532244,
        ["TYPE"] = "SMG",
        ["AMMOPICKUP"] = 0x116FC4E6,
        ["WEAPONPICKUP"] = 0x1D9588D3 --0xB86AEE5B
    },
    ["SMG"] = {
        ["HASH"] = 0x2BE6766B,
        ["TYPE"] = "SMG",
        ["AMMOPICKUP"] = 0x116FC4E6,
        ["WEAPONPICKUP"] = 0x3A4C2AD2 --0xCC7CCD1B
    },
    ["ASSAULTSMG"] = {
        ["HASH"] = 0xEFE7E2DF,
        ["TYPE"] = "SMG",
        ["AMMOPICKUP"] = 0x116FC4E6,
        ["WEAPONPICKUP"] = 0x741C684A --0x68605A36
    },
    ["MG"] = {
        ["HASH"] = 0x9D07F764,
        ["TYPE"] = "MG",
        ["AMMOPICKUP"] = 0xDE58E0B3,
        ["WEAPONPICKUP"] = 0x85CAA9B1
    },
    ["COMBATMG"] = {
        ["HASH"] = 0x7FD62962,
        ["TYPE"] = "MG",
        ["AMMOPICKUP"] = 0xDE58E0B3,
        ["WEAPONPICKUP"] = 0xB2930A14
    },
    ["GUSENBERG"] = {
        ["HASH"] = 0x61012683,
        ["TYPE"] = "MG",
        ["AMMOPICKUP"] = 0xDE58E0B3,
        ["WEAPONPICKUP"] = 0x5307A4EC
    },
    ["ASSAULTRIFLE"] = {
        ["HASH"] = 0xBFEFFF6D,
        ["TYPE"] = "RIFLE",
        ["AMMOPICKUP"] = 0xE4BD2FC6,
        ["WEAPONPICKUP"] = 0xF33C83B0
    },
    ["CARBINERIFLE"] = {
        ["HASH"] = 0x83BF0278,
        ["TYPE"] = "RIFLE",
        ["AMMOPICKUP"] = 0xE4BD2FC6,
        ["WEAPONPICKUP"] = 0xDF711959
    },
    ["ADVANCEDRIFLE"] = {
        ["HASH"] = 0xAF113F99,
        ["TYPE"] = "RIFLE",
        ["AMMOPICKUP"] = 0xE4BD2FC6,
        ["WEAPONPICKUP"] = 0xB2B5325E

    },
    ["SPECIALCARBINE"] = {
        ["HASH"] = 0xC0A3098D,
        ["TYPE"] = "RIFLE",
        ["AMMOPICKUP"] = 0xE4BD2FC6,
        ["WEAPONPICKUP"] = 0x0968339D

    },
    ["BULLPUPRIFLE"] = {
        ["HASH"] = 0x7F229F94,
        ["TYPE"] = "RIFLE",
        ["AMMOPICKUP"] = 0xE4BD2FC6,
        ["WEAPONPICKUP"] = 0x815D66E8
    },
    ["SNIPERRIFLE"] = {
        ["HASH"] = 0x05FC3C11,
        ["TYPE"] = "SNIPER",
        ["AMMOPICKUP"] = 0xC02CF125,
        ["WEAPONPICKUP"] = 0xFE2A352C
    },
    ["HEAVYSNIPER"] = {
        ["HASH"] = 0x0C472FE2,
        ["TYPE"] = "SNIPER",
        ["AMMOPICKUP"] = 0xC02CF125,
        ["WEAPONPICKUP"] = 0x693583AD
    },
    ["MARKSMANRIFLE"] = {
        ["HASH"] = 0xC734385A,
        ["TYPE"] = "SNIPER",
        ["AMMOPICKUP"] = 0xC02CF125,
        ["WEAPONPICKUP"] = 0x079284A9
    },
    ["KNIFE"] = {
        ["HASH"] = 0x99B507EA,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0x278D8734,
        ["WEAPONPICKUP"] = 0x278D8734
    },
    ["NIGHTSTICK"] = {
        ["HASH"] = 0x678B81B1,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0x5EA16D74,
        ["WEAPONPICKUP"] = 0x5EA16D74
    },
    ["HAMMER"] = {
        ["HASH"] = 0x4E875F73,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0x295691A9,
        ["WEAPONPICKUP"] = 0x295691A9
    },
    ["BAT"] = {
        ["HASH"] = 0x958A4A8F,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0x81EE601E,
        ["WEAPONPICKUP"] = 0x81EE601E
    },
    ["GOLFCLUB"] = {
        ["HASH"] = 0x440E4788,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0x88EAACA7,
        ["WEAPONPICKUP"] = 0x88EAACA7
    },
    ["CROWBAR"] = {
        ["HASH"] = 0x84BD7BFD,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0x872DC888,
        ["WEAPONPICKUP"] = 0x872DC888
    },
    ["BOTTLE"] = {
        ["HASH"] = 0xF9E6AA4B,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0xFA51ABF5,
        ["WEAPONPICKUP"] = 0xFA51ABF5
    },
    ["DAGGER"] = {
        ["HASH"] = 0x92A27487,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = 0xBFEE6C3B,
        ["WEAPONPICKUP"] = 0xBFEE6C3B
    },
    ["KNUCKLE"] = {
        ["HASH"] = 0xD8DF3C3C,
        ["TYPE"] = "MELEE",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },
    ["PUMPSHOTGUN"] = {
        ["HASH"] = 0x1D073A89,
        ["TYPE"] = "SHOTGUN",
        ["AMMOPICKUP"] = 0x77F3F2DD,
        ["WEAPONPICKUP"] = 0xA9355DCD
    },
    ["SAWNOFFSHOTGUN"] = {
        ["HASH"] = 0x7846A318,
        ["TYPE"] = "SHOTGUN",
        ["AMMOPICKUP"] = 0x77F3F2DD,
        ["WEAPONPICKUP"] = 0x96B412A3 --0x2E071B5A
    },
    ["ASSAULTSHOTGUN"] = {
        ["HASH"] = 0xE284C527,
        ["TYPE"] = "SHOTGUN",
        ["AMMOPICKUP"] = 0x77F3F2DD,
        ["WEAPONPICKUP"] = 0x9299C95B
    },
    ["BULLPUPSHOTGUN"] = {
        ["HASH"] = 0x9D61E50F,
        ["TYPE"] = "SHOTGUN",
        ["AMMOPICKUP"] = 0x77F3F2DD,
        ["WEAPONPICKUP"] = 0x6E4E65C2
    },
    ["MUSKET"] = {
        ["HASH"] = 0xA89CB99E,
        ["TYPE"] = "SHOTGUN",
        ["AMMOPICKUP"] = 0x77F3F2DD,
        ["WEAPONPICKUP"] = 0x763F7121
    },
    ["HEAVYSHOTGUN"] = {
        ["HASH"] = 0x3AABBBAA,
        ["TYPE"] = "SHOTGUN",
        ["AMMOPICKUP"] = 0x77F3F2DD,
        ["WEAPONPICKUP"] = 0xBED46EC5
    },
    ["GRENADELAUNCHER"] = {
        ["HASH"] = 0xA284510B,
        ["TYPE"] = "HEAVY",
        ["AMMOPICKUP"] = 0x881AB0A8,
        ["WEAPONPICKUP"] = 0x2E764125
    },
    ["RPG"] = {
        ["HASH"] = 0xB1CA77B1,
        ["TYPE"] = "HEAVY",
        ["AMMOPICKUP"] = 0x84837FD7,
        ["WEAPONPICKUP"] = 0x4D36C349
    },
    ["MINIGUN"] = {
        ["HASH"] = 0x42BF8A85,
        ["TYPE"] = "HEAVY",
        ["AMMOPICKUP"] = 0xF25A01B9,
        ["WEAPONPICKUP"] = 0x2F36B434
    },
    ["HOMINGLAUNCHER"] = {
        ["HASH"] = 0x63AB0442,
        ["TYPE"] = "HEAVY",
        ["AMMOPICKUP"] = 0x5C517D97,
        ["WEAPONPICKUP"] = 0xC01EB678
    },
    ["GRENADE"] = {
        ["HASH"] = -1813897027,
        ["TYPE"] = "GRENADE",
        ["AMMOPICKUP"] = 0x5E0683A1,
        ["WEAPONPICKUP"] = 0x5E0683A1 --0xA717F898
    },
    ["STICKYBOMB"] = {
        ["HASH"] = 0x2C3731D9,
        ["TYPE"] = "GRENADE",
        ["AMMOPICKUP"] = 0x7C119D58,
        ["WEAPONPICKUP"] = 0x7C119D58 --0x2C804FE3
    },
    ["SMOKEGRENADE"] = {
        ["HASH"] = 0xFDBC8A50,
        ["TYPE"] = "GRENADE",
        ["AMMOPICKUP"] = 0x1CD604C7,
        ["WEAPONPICKUP"] = 0x1CD604C7 --0x65A7D8E9
    },
    ["MOLOTOV"] = {
        ["HASH"] = 0x24B17070,
        ["TYPE"] = "GRENADE",
        ["AMMOPICKUP"] = 0x2DD30479,
        ["WEAPONPICKUP"] = 0x2DD30479 --0x84D676D4
    },
    ["PROXMINE"] = {
        ["HASH"] = 0xAB564B93,
        ["TYPE"] = "GRENADE",
        ["AMMOPICKUP"] = 0x624F7213,
        ["WEAPONPICKUP"] = 0x624F7213
    },
    ["PETROLCAN"] = {
        ["HASH"] = 0x34A67B97,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = 0xC69DE3FF,
        ["WEAPONPICKUP"] = 0xC69DE3FF
    },
    ["FLARE"] = {
        ["HASH"] = 0x497FACC3,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },
    ["COMBATPDW"] = {
        ["HASH"] = 0x0A3D4D34,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },
    ["GRENADELAUNCHER_SMOKE"] = {
        ["HASH"] = 0x4DD2DC56,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },
    ["FIREWORK"] = {
        ["HASH"] = 0x7F7497E5,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = 0xF92F486C, --0x602941D0
        ["WEAPONPICKUP"] = 0x22B15640
    },
    ["FIREEXTINGUISHER"] = {
        ["HASH"] = 0x060EC506,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = 0xCB13D282,
        ["WEAPONPICKUP"] = 0xCB13D282
    },
    ["STUNGUN"] = {
        ["HASH"] = 0x3656C8C1,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = 0xFD16169E,
        ["WEAPONPICKUP"] = 0xFD16169E
    },
    ["STINGER"] = {
        ["HASH"] = 0x687652CE,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },
    ["SNOWBALL"] = {
        ["HASH"] = 0x787F0BB,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    },
    ["FLAREGUN"] = {
        ["HASH"] = 0x47757124,
        ["TYPE"] = "SPECIAL",
        ["AMMOPICKUP"] = 0xE013E01C,
        ["WEAPONPICKUP"] = 0xBD4DE242
    },
    ["HEALTH_SNACK"] = {
        ["HASH"] = nil,
        ["TYPE"] = "EQUIPMENT",
        ["AMMOPICKUP"] = 0x1CD2CF66,
        ["WEAPONPICKUP"] = 0x1CD2CF66
    },
    ["ARMOUR_STANDARD"] = {
        ["HASH"] = nil,
        ["TYPE"] = "EQUIPMENT",
        ["AMMOPICKUP"] = 0x4BFB42D1,
        ["WEAPONPICKUP"] = 0x4BFB42D1
    },
    ["HEALTH_STANDARD"] = {
        ["HASH"] = nil,
        ["TYPE"] = "EQUIPMENT",
        ["AMMOPICKUP"] = 0x8F707C18,
        ["WEAPONPICKUP"] = 0x8F707C18
    },
    ["PARACHUTE"] = {
        ["HASH"] = 4222310262,
        ["TYPE"] = "EQUIPMENT",
        ["AMMOPICKUP"] = 0x6773257D,
        ["WEAPONPICKUP"] = 0x6773257D
    },
    ["NIGHTVISION"] = {
        ["HASH"] = 2803906140,
        ["TYPE"] = "EQUIPMENT",
        ["AMMOPICKUP"] = nil,
        ["WEAPONPICKUP"] = nil
    }
}
