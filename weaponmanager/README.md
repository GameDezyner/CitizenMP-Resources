##Usage
The two major functions are for giving or taking weapons from the player:
```Lua
exports.weaponmanager:giveWeapon("WEAPONNAME",ammo,equipped,loaded)
exports.weaponmanager:takeWeapon("WEAPONNAME")
```
* **_WEAPONNAME_** can be any name from the list at the end of this document.
* **_ammo_** can be any positive integer under 9999
* **_equipped_** can be true or false. It determines whether the weapon becomes the active weapon for the player.
* **_loaded_** can be true or false. It determines whether the weapon has a clip loaded when received.

There are a few other functions that are accessible as well:
```Lua
exports.weaponmanager:getWeapon("WEAPONNAME") --Returns all our data about the weapon in a table
exports.weaponmanager:getWeaponHash("WEAPONNAME") --Returns the weapon hash of that weapon
exports.weaponmanager:getWeaponType("WEAPONNAME") --Returns the type of weapon (determined by this script, not the game itself)
exports.weaponmanager:getWeaponPickup("WEAPONNAME") --Returns the hash of the weapon's pickup object if it exists/is known
exports.weaponmanager:getAmmoPickup("WEAPONNAME") --Returns the hash of the weapon's ammo pickup object if it exists/is known
exports.weaponmanager:getWeaponByHash(HASH) --Returns the name of the specified weapon hash
````
##Weapon Names
* ADVANCEDRIFLE
* STUNGUN
* SMG
* ASSAULTRIFLE
* FIREEXTINGUISHER
* COMBATPDW
* PISTOL50
* MG
* HEAVYSHOTGUN
* PETROLCAN
* PROXMINE
* MOLOTOV
* SPECIALCARBINE
* SMOKEGRENADE
* NIGHTSTICK
* STICKYBOMB
* HOMINGLAUNCHER
* CARBINERIFLE
* MINIGUN
* ASSAULTSMG
* BULLPUPRIFLE
* SNOWBALL
* GRENADELAUNCHER
* STINGER
* PUMPSHOTGUN
* KNUCKLE
* SAWNOFFSHOTGUN
* HEAVYPISTOL
* PISTOL
* SNSPISTOL
* NIGHTVISION
* HEAVYSNIPER
* MICROSMG
* BAT
* HAMMER
* MARKSMANPISTOL
* APPISTOL
* COMBATMG
* RPG
* BOTTLE
