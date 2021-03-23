/obj/item/weapon/grenade/spawnergrenade
	desc = "It is set to detonate in 5 seconds. It will unleash unleash an unspecified anomaly into the vicinity."
	name = "delivery grenade"
	icon = 'icons/obj/grenade.dmi'
	icon_state = "delivery"
	item_state = "flashbang"
	origin_tech = list(TECH_MATERIAL = 3, TECH_MAGNET = 4)
	var/banglet = 0
	var/spawner_type = null // must be an object path
	var/deliveryamt = 1 // amount of type to deliver

/obj/item/weapon/grenade/spawnergrenade/prime()	// Prime now just handles the two loops that query for people in lockers and people who can see it.

	if(spawner_type && deliveryamt)
		// Make a quick flash
		var/turf/T = get_turf(src)
		playsound(T, 'sound/effects/phasein.ogg', 100, 1)
		for(var/mob/living/carbon/human/M in viewers(T, null))
			if(M.eyecheck() < FLASH_PROTECTION_MODERATE)
				if (M.HUDtech.Find("flash"))
					flick("e_flash", M.HUDtech["flash"])

		for(var/i=1, i<=deliveryamt, i++)
			var/atom/movable/x = new spawner_type
			x.loc = T
			if(prob(50))
				for(var/j = 1, j <= rand(1, 3), j++)
					step(x, pick(NORTH,SOUTH,EAST,WEST))

			// Spawn some hostile syndicate critters

	qdel(src)
	return

/obj/item/weapon/grenade/spawnergrenade/manhacks
	name = "manhack delivery grenade"
	desc = "Deploys a swarm of floating robots that will attack anything nearby."
	spawner_type = /mob/living/simple_animal/hostile/viscerator
	deliveryamt = 5
	origin_tech = list(TECH_MATERIAL = 3, TECH_MAGNET = 4, TECH_ILLEGAL = 4)

/obj/item/weapon/grenade/spawnergrenade/manhacks/opifex
	name = "opifex manhack grenade"
	desc = "Deploys a swarm of floating robots that will attack animals and non-colony humanoids nearby. Due to targeting issues the manhacks will attack cht'mants and be shot by colony defense turrets be they opifex, guild, laser, or church defense grids, use with caution."
	spawner_type = /mob/living/simple_animal/hostile/viscerator/opifex

/obj/item/weapon/grenade/spawnergrenade/blob
	name = "bioweapon sample"
	desc = "Contains an absurdly dangerous bioweapon in suspended animation. It will expand rapidly upon release. Once deployed, run like hell."
	spawner_type = /obj/effect/blob/core
	deliveryamt = 1
	origin_tech = list(TECH_MATERIAL = 3, TECH_MAGNET = 4, TECH_ILLEGAL = 4)

/obj/item/weapon/grenade/spawnergrenade/manhacks/roomba
	name = "GP-SI roomba grenade"
	desc = "Deploys a swarm of roomba that will attack animals and non-colony humanoids nearby. Due to targeting issues the roomba's will attack cht'mants."
	deliveryamt = 3
	spawner_type = /mob/living/simple_animal/hostile/roomba/allied

/obj/item/weapon/grenade/spawnergrenade/manhacks/roomba/trippers
	name = "GP-SI roomba sec grenade"
	desc = "Deploys a swarm of roomba that will attack animals and non-colony humanoids nearby. Due to targeting issues the roomba's will attack cht'mants."
	deliveryamt = 3
	spawner_type = /mob/living/simple_animal/hostile/roomba/trip/armored/allied

/obj/item/weapon/grenade/spawnergrenade/manhacks/roomba/gunners
	name = "GP-SI roomba sec grenade"
	desc = "Deploys a swarm of roomba that will attack animals and non-colony humanoids nearby. Due to targeting issues the roomba's will attack cht'mants."
	deliveryamt = 3
	spawner_type = /mob/living/simple_animal/hostile/roomba/gun_ba/armored/allied

/obj/item/weapon/grenade/spawnergrenade/manhacks/roomba/smg_roomba
	name = "GP-SI FBP MK II grenade"
	desc = "Deploys two of FBP MK II that will attack animals and non-colony humanoids nearby. Due to targeting issues the roomba's will attack cht'mants."
	deliveryamt = 2
	spawner_type = /mob/living/simple_animal/hostile/roomba/synthetic/epistol/esmg/allied