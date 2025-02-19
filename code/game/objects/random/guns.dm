/obj/random/gun_cheap
	name = "random cheap gun"
	icon_state = "gun-grey"
	spawn_nothing_percentage = 10

/obj/random/gun_cheap/item_to_spawn()
	return pickweight(list(
				/obj/item/part/gun/frame/boltgun = 0.5,
				/obj/item/part/gun/frame/colt = 0.5,
				/obj/item/part/gun/frame/liberty = 0.5,
				/obj/item/part/gun/frame/doublebarrel = 0.5,
				/obj/item/part/gun/frame/kalash = 0.5,
				/obj/item/part/gun/frame/detective = 0.5,
				/obj/item/part/gun/frame/trench = 0.5,
				/obj/random/gun_parts/frames = 3,

				/obj/item/gun/projectile/revolver/detective = 3,\
				/obj/item/gun/energy/shrapnel = 3,\
				/obj/item/gun/energy/lasersmg = 0.5,\
				/obj/item/ammo_kit = 3,\
				/obj/item/gun/projectile/clarissa = 1,\
				/obj/item/gun/projectile/boltgun = 2,\
				/obj/item/gun/projectile/shotgun/pump = 0.1,\
				/obj/item/gun/projectile/shotgun/pump/sawn = 0.5,\
				/obj/item/gun/projectile/boltgun/sawn/true = 0.5,\
				/obj/item/gun/projectile/automatic/federalist = 0.1, \
				/obj/item/gun/projectile/automatic/nationale = 0.1, \
				/obj/item/gun_upgrade/barrel/forged = 1))

/obj/random/gun_cheap/low_chance
	name = "low chance random cheap gun"
	icon_state = "gun-grey-low"
	spawn_nothing_percentage = 80


/obj/random/gun_normal
	name = "random normal gun"
	icon_state = "gun-green"
	spawn_nothing_percentage = 10

/obj/random/gun_normal/always_spawn
	name = "random always spawn normal gun"
	spawn_nothing_percentage = 0

/obj/random/gun_normal/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/doublebarrel = 0.5,
				/obj/item/part/gun/frame/trench = 0.5,
				/obj/item/part/gun/frame/colt = 0.5,
				/obj/item/part/gun/frame/liberty = 0.5,
				/obj/item/part/gun/frame/nationale = 0.5,
				/obj/item/part/gun/frame/frontier = 0.5,
				/obj/item/part/gun/frame/umbani = 0.5,
				/obj/item/part/gun/frame/western = 0.5,
				/obj/item/part/gun/frame/ak47 = 0.5,

				/obj/item/gun/projectile/martian = 0.1,\
				/obj/item/gun/projectile/automatic/specialist = 0.5,\
				/obj/item/gun/projectile/revolver/frontier = 0.5,\
				/obj/item/gun/projectile/revolver/ranger = 0.3,\
				/obj/item/gun/projectile/automatic/duty = 1,\
				/obj/item/gun/projectile/automatic/operator_rifle = 0.1,\
				/obj/item/gun/projectile/colt = 2,\
				/obj/item/gun/projectile/boltgun = 1,\
				/obj/item/gun/projectile/boltgun/rosefield = 2,\
				/obj/item/ammo_kit = 2,
				/obj/item/gun_upgrade/trigger/dangerzone = 1,
				/obj/item/gun_upgrade/mechanism/overshooter = 1))

/obj/random/gun_normal/low_chance
	name = "low chance random normal gun"
	icon_state = "gun-green-low"
	spawn_nothing_percentage = 80


/obj/random/gun_combat
	name = "random assault weapon"
	icon_state = "gun-green"
	spawn_nothing_percentage = 10

/obj/random/gun_combat/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/specialist = 0.5,
				/obj/item/part/gun/frame/makarov = 0.5,
				/obj/item/part/gun/frame/stinger = 0.5,
				/obj/item/part/gun/frame/sweeper = 0.5,
				/obj/item/part/gun/frame/duty = 0.5,
				/obj/item/part/gun/frame/umbani = 0.5,
				/obj/item/part/gun/frame/ak47 = 0.5,
				/obj/item/part/gun/frame/nationale = 0.5,
				/obj/item/part/gun/frame/federalist = 0.5,
				/obj/random/gun_parts/frames = 1,

				/obj/item/gun/projectile/automatic/specialist = 1,\
				/obj/item/gun/projectile/automatic/duty = 1,\
				/obj/item/ammo_kit = 0.8,
				/obj/item/gun/projectile/automatic/nationale = 1,\
				/obj/item/gun/projectile/automatic/federalist = 1,\
				/obj/item/gun/projectile/automatic/tactical = 0.5,
				/obj/item/gun/projectile/automatic/ak47/sa = 1,\
				/obj/item/gun/projectile/makarov = 1,\
				/obj/item/gun/projectile/shotgun/sweeper = 0.5,
				/obj/item/gun/projectile/shotgun/judge = 0.5,
				/obj/item/gun/projectile/revolver/ranger = 0.5))

/obj/random/gun_combat/low_chance
	name = "low chance assault weapon"
	icon_state = "gun-green-low"
	spawn_nothing_percentage = 80

/obj/random/gun_fancy
	name = "random fancy gun"
	icon_state = "gun-blue"
	spawn_nothing_percentage = 30

/obj/random/gun_fancy/alawys_spawn
	name = "random always spawn fancy gun"

/obj/random/gun_fancy/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/makarov = 0.5,
				/obj/item/part/gun/frame/federalist = 0.5,
				/obj/item/part/gun/frame/martian = 0.5,
				/obj/item/part/gun/frame/ranger = 0.5,
				/obj/item/part/gun/frame/frontier = 0.5,
				/obj/item/part/gun/frame/breaker = 0.5,
				///obj/item/part/gun/frame/contractor = 0.5,
				/obj/item/part/gun/frame/duty = 0.5,
				/obj/item/part/gun/frame/nationale = 0.5,
				/obj/random/gun_parts/frames = 2,

				/obj/item/gun/projectile/revolver/frontier = 1,\
				/obj/item/gun/projectile/colt/freedom = 1,\
				/obj/item/gun/projectile/revolver/ranger= 2,\
				/obj/item/gun/projectile/martian = 2,\
				/obj/item/gun/projectile/revolver/wristbreaker= 1,\
				/obj/item/gun/projectile/automatic/duty = 0.3, \
				/obj/item/gun/projectile/boltgun/lever/shotgun = 1, \
				/obj/item/gun/projectile/boltgun/gamer = 1, \
				/obj/item/gun/projectile/makarov = 1.5,\
				/obj/item/gun/energy/lasercannon = 0.5,\
				/obj/item/gun/projectile/automatic/nationale/dragon = 0.5,
				/obj/item/gun/projectile/automatic/federalist/homemaker = 0.5))

/obj/random/gun_fancy/low_chance
	name = "low chance fancy gun"
	icon_state = "gun-blue-low"
	spawn_nothing_percentage = 80

/obj/random/gun_energy_cheap
	name = "random cheap energy weapon"
	icon_state = "gun-blue"
	spawn_nothing_percentage = 30

/obj/random/gun_energy_cheap/item_to_spawn()
	return pickweight(list(/obj/item/gun/energy/ntpistol = 2,\
				/obj/item/gun/energy/gun = 2,\
				/obj/item/gun/energy/cog = 1,\
				/obj/item/gun/energy/firestorm = 0.5))

/obj/random/gun_energy_cheap/low_chance
	name = "low chance random cheap energy weapon"
	icon_state = "gun-blue-low"
	spawn_nothing_percentage = 80


/obj/random/gun_handmade
	name = "random handmade gun weapon"
	icon_state = "gun-black"
	spawn_nothing_percentage = 30

/obj/random/gun_handmade/item_to_spawn()
	return pickweight(list(
				/obj/item/gun/projectile/revolver/handmade = 1,\
				/obj/item/gun/projectile/boltgun/handmade = 1,\
				/obj/item/gun/projectile/shotgun/slidebarrel = 1,\
				/obj/item/gun/energy/laser/makeshift = 1,\
				/obj/item/gun/energy/lasersmg = 1,\
				/obj/item/gun/projectile/automatic/ak47/makeshift = 1,\
				/obj/item/gun/projectile/automatic/luty = 1))

/obj/random/gun_handmade/willspawn
	name = "will spawn random handmade gun weapon"
	spawn_nothing_percentage = 0
	icon_state = "gun-black-hight"

/obj/random/gun_handmade/low_chance
	name = "low chance random handmade gun weapon"
	icon_state = "gun-black-low"
	spawn_nothing_percentage = 80

/obj/random/gun_shotgun
	name = "random shotgun"
	icon_state = "gun-red"
	spawn_nothing_percentage = 30

/obj/random/gun_shotgun/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/doublebarrel = 0.5,
				/obj/item/part/gun/frame/judge = 0.5,
				/obj/item/part/gun/frame/trench = 0.5,
				/obj/item/part/gun/frame/western = 0.5,
				/obj/item/part/gun/frame/sweeper = 0.5,

				/obj/item/gun/projectile/shotgun/pump = 1,\
				/obj/item/gun/projectile/shotgun/pump/sawn = 2,\
				/obj/item/gun/projectile/boltgun/lever/shotgun = 1,\
				/obj/item/gun/projectile/boltgun/lever/shotgun/sawn = 2,\
				/obj/item/gun/projectile/shotgun/sweeper = 0.3,\
				/obj/item/gun/projectile/shotgun/doublebarrel/sawn = 2,\
				/obj/item/gun/projectile/shotgun/judge = 0.3))

/obj/random/gun_shotgun/low_chance
	name = "low chance random shotgun"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 80


//Dungeon based random spawners (use these only in dungeons, not maint)
/obj/random/dungeon_gun_ballistic
	name = "random special ballistic gun"
	icon_state = "gun-red"

/obj/random/dungeon_gun_ballistic/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/operator_rifle = 0.5,
				/obj/item/part/gun/frame/kraut = 0.5,
				/obj/item/part/gun/frame/ak47 = 0.5,
				/obj/item/part/gun/frame/pk = 0.5,
				/obj/item/part/gun/frame/buzzsaw = 0.5,
				/obj/item/part/gun/frame/trench = 0.5,
				/obj/item/part/gun/frame/sweeper = 0.5,
				/obj/item/part/gun/frame/federalist = 0.5,
				/obj/item/part/gun/frame/nationale = 0.5,
				/obj/item/part/gun/frame/specialist = 0.5,
				/obj/item/part/gun/frame/tactical = 0.5,
				/obj/item/part/gun/frame/ak47 = 0.5,
				/obj/random/gun_parts/frames/better_spawns = 2,

				/obj/item/gun/projectile/automatic/operator_rifle = 2,
				/obj/item/gun/projectile/shotgun/judge = 0.7,
				/obj/item/gun/projectile/automatic/lmg/buzzsaw = 2,
				/obj/item/gun/projectile/automatic/lmg/pk = 1.5,
				/obj/item/gun/projectile/automatic/maxim = 1,
				/obj/item/gun/projectile/automatic/ak47/sa = 2,
				/obj/item/gun/projectile/shotgun/sweeper = 2,
				/obj/item/gun/projectile/automatic/ak47 = 2,
				/obj/item/gun/projectile/automatic/nationale/dragon = 1,
				/obj/item/gun/projectile/automatic/specialist = 3,
				/obj/item/gun/projectile/automatic/tactical = 2))

/obj/random/dungeon_gun_ballistic/low_chance
	name = "low chance random special ballistic gun"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 80

/obj/random/dungeon_gun_energy
	name = "random special energy gun"
	icon_state = "gun-red"

/obj/random/dungeon_gun_energy/item_to_spawn()
	return pickweight(list(
				/obj/item/gun/energy/xray = 2,
				/obj/item/gun/energy/sniperrifle = 2,
				/obj/item/gun/energy/laser/railgun/railrifle = 1,
				/obj/item/gun/energy/laser/railgun/pistol = 1,
				/obj/item/gun/energy/plasma/auretian = 1,
				/obj/item/gun/energy/centurio = 2,
				/obj/item/gun/energy/gun/nuclear = 2,
				/obj/item/gun/energy/plasma/destroyer = 1,
				/obj/item/gun/energy/sunrise = 1))

/obj/random/dungeon_gun_energy/low_chance
	name = "low chance random special energy gun"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 80


//Gun Mod Spawners
/obj/random/dungeon_gun_mods
	name = "random gun mod"
	icon_state = "gun-red"

/obj/random/dungeon_gun_mods/item_to_spawn()
	return pickweight(list(/obj/item/gun_upgrade/muzzle/silencer = 1,
				/obj/item/gun_upgrade/muzzle/pain_maker = 0.3,
				/obj/item/gun_upgrade/barrel/forged = 1,
				/obj/item/gun_upgrade/barrel/mag_accel = 1,
				/obj/item/gun_upgrade/barrel/overheat = 1,
				/obj/item/gun_upgrade/mechanism/bikehorn = 0.1,
				/obj/item/gun_upgrade/barrel/excruciator = 1,
				/obj/item/gun_upgrade/trigger/dangerzone = 1,
				/obj/item/gun_upgrade/trigger/cop_block = 0.5,
				/obj/item/gun_upgrade/magwell/auto_eject = 0.5,
				/obj/item/gun_upgrade/magwell/auto_eject/no_removal = 0.5,
				/obj/item/gun_upgrade/mechanism/overshooter = 1,
				/obj/item/gun_upgrade/mechanism/weintraub = 1,
				/obj/item/gun_upgrade/mechanism/reverse_loader = 0.5,
				/obj/item/gun_upgrade/mechanism/battery_shunt = 1,
				/obj/item/gun_upgrade/mechanism/overdrive = 1,
				/obj/item/gun_upgrade/trigger/honker = 0.1,
				/obj/item/gun_upgrade/barrel/toxin_coater = 1,
				/obj/item/gun_upgrade/barrel/gauss = 1,
				/obj/item/gun_upgrade/trigger/boom = 0.5,
				/obj/item/gun_upgrade/scope/watchman = 0.7,
				/obj/item/gun_upgrade/scope/killer = 0.7,
				/obj/item/gun_upgrade/underbarrel/bipod = 1,
				/obj/item/gun_upgrade/mechanism/similacrum_master_catalyst = 0.01))

/obj/random/dungeon_gun_mods/low_chance
	name = "low chance random gun mod"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 80

/obj/random/dungeon_gun_mods/voidwolf
	name = "random voidwolf good only gun mod"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 0

/obj/random/dungeon_gun_mods/voidwolf/item_to_spawn()
	return pickweight(list( // i hate pickweight but fine
		/obj/item/gun_upgrade/barrel/gauss = 1,
		/obj/item/gun_upgrade/scope/killer = 1,
		/obj/item/gun_upgrade/trigger/dangerzone = 1 //only good mods
	))

//Armor Mod Spawners
/obj/random/dungeon_armor_mods
	name = "random armor mod"
	icon_state = "gun-red"
/obj/random/dungeon_armor_mods/item_to_spawn()
	return pickweight(list(/obj/item/tool_upgrade/armor/bomb = 1,
				/obj/item/tool_upgrade/armor/melee = 1,
				/obj/item/tool_upgrade/armor/bullet = 1,
				/obj/item/tool_upgrade/armor/energy = 1))

/obj/random/dungeon_armor_mods/low_chance
	name = "low chance random armor mod"
	icon_state = "gun-red-low"
	spawn_nothing_percentage = 80

//Gun parts spawners - Wasn't sure where tf to put these, they're here for orgnizations sake.
/obj/random/gun_parts
	name = "random gun part"
	icon_state = "gun-black"

/obj/random/gun_parts/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/barrel/pistol/steel = 3,
	/obj/item/part/gun/barrel/magnum/steel = 3,
	/obj/item/part/gun/barrel/shotgun/steel = 1,
	/obj/item/part/gun/barrel/srifle/steel = 1,
	/obj/item/part/gun/barrel/lrifle/steel = 1,
	/obj/item/part/gun/barrel/clrifle/steel = 0.5,
	/obj/item/part/gun/barrel/kurtz/steel = 0.5,
	/obj/item/part/gun/barrel/pistol = 5,
	/obj/item/part/gun/barrel/magnum = 5,
	/obj/item/part/gun/barrel/kurtz = 1.5,
	/obj/item/part/gun/barrel/srifle = 4,
	/obj/item/part/gun/barrel/clrifle = 3,
	/obj/item/part/gun/barrel/lrifle = 4,
	/obj/item/part/gun/barrel/shotgun = 4,
	/obj/item/part/gun/grip/wood = 5,
	/obj/item/part/gun/grip/black = 3,
	/obj/item/part/gun/grip/serb = 2,
	/obj/item/part/gun/grip/rubber = 1,
	/obj/item/part/gun/mechanism/pistol/steel = 2.5,
	/obj/item/part/gun/mechanism/revolver/steel = 2,
	/obj/item/part/gun/mechanism/boltgun = 4,
	/obj/item/part/gun/mechanism/shotgun/steel = 2,
	/obj/item/part/gun/mechanism/smg/steel = 1,
	/obj/item/part/gun/mechanism/autorifle/steel = 0.1,
	/obj/item/part/gun/mechanism/pistol = 4,
	/obj/item/part/gun/mechanism/revolver = 4,
	/obj/item/part/gun/mechanism/shotgun = 3,
	/obj/item/part/gun/mechanism/smg = 3,
	/obj/item/part/gun/mechanism/autorifle = 0.5,
	/obj/item/part/gun/mechanism/machinegun = 2,
	/obj/random/gun_parts/frames = 2,
	/obj/random/gun_parts/high_end = 1
	))

/obj/random/gun_parts/low
	name = "low chance random gun part"
	icon_state = "gun-black-low"
	spawn_nothing_percentage = 50

/obj/random/gun_parts/high_end
	name = "high-end random gun part"

/obj/random/gun_parts/high_end/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/mechanism/machinegun = 1,
	/obj/item/part/gun/mechanism/autorifle = 3,
	/obj/item/part/gun/mechanism/smg = 2,
	/obj/item/part/gun/barrel/lrifle = 2,
	/obj/item/part/gun/barrel/clrifle = 1,
	/obj/item/part/gun/barrel/srifle = 3,
	/obj/item/part/gun/grip/rubber = 2,
	/obj/item/part/gun/grip/serb = 3,
	/obj/item/part/gun/barrel/antim = 0.3,
	/obj/random/gun_parts/frames = 3))


/obj/random/gun_parts/frames
	name = "low chance random gun part"
	icon_state = "gun-black-low"
	spawn_nothing_percentage = 30

/obj/random/gun_parts/frames/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/federalist = 4,
	/obj/item/part/gun/frame/umbani = 4,
	/obj/item/part/gun/frame/judge = 1,
	/obj/item/part/gun/frame/broz = 5,
	/obj/item/part/gun/frame/specialist = 3,
	/obj/item/part/gun/frame/revolver_handmade = 6,
	/obj/item/part/gun/frame/homemadebolt = 7,
	/obj/item/part/gun/frame/partizaner = 6,
	/obj/item/part/gun/frame/luty = 5,
	/obj/item/part/gun/frame/boltgun = 7,
	/obj/item/part/gun/frame/nationale = 3,
	/obj/item/part/gun/frame/ak47 = 4,
	/obj/item/part/gun/frame/frontier = 5,
	/obj/item/part/gun/frame/martian = 4,
	/obj/item/part/gun/frame/colt= 5,
	/obj/item/part/gun/frame/makarov = 4,
	/obj/item/part/gun/frame/tactical = 3,
	/obj/item/part/gun/frame/widowmaker = 7,
	/obj/item/part/gun/frame/liberty = 5,
	/obj/item/part/gun/frame/detective = 6,
	/obj/item/part/gun/frame/ranger = 3,
	/obj/item/part/gun/frame/doublebarrel = 6,
	/obj/item/part/gun/frame/trench = 5,
	/obj/random/gun_parts/frames/better_spawns = 1))

/obj/random/gun_parts/frames/better_spawns
	name = "better random gun part"
	spawn_nothing_percentage = 30

/obj/random/gun_parts/frames/better_spawns/item_to_spawn()
	return pickweight(list(/obj/item/part/gun/frame/federalist = 5,
	/obj/item/part/gun/frame/maxim = 1,
	/obj/item/part/gun/frame/pk = 2,
	/obj/item/part/gun/frame/buzzsaw = 2,
	/obj/item/part/gun/frame/nationale = 4,
	/obj/item/part/gun/frame/duty = 4,
	/obj/item/part/gun/frame/specialist = 6,
	/obj/item/part/gun/frame/operator_rifle = 2,
	/obj/item/part/gun/frame/ak47 = 8,
	/obj/item/part/gun/frame/frontier = 5,
	/obj/item/part/gun/frame/martian = 3,
	/obj/item/part/gun/frame/judge = 2,
	/obj/item/part/gun/frame/makarov = 6,
	/obj/item/part/gun/frame/liberty = 3,
	/obj/item/part/gun/frame/ranger = 4,
	/obj/item/part/gun/frame/frontier = 6,
	/obj/item/part/gun/frame/kraut = 1,
	/obj/item/part/gun/frame/tactical = 5,
	/obj/item/part/gun/frame/sweeper = 7
	))

