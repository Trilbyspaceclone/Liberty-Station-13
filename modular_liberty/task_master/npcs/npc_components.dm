/datum/npc_quest
	var/quest_stared = FALSE

	var/mob/living/carbon/human/knight_in_shining_armour
	var/obj/snow_white

	var/npc_name = "John Doe"
	var/list/card_name = list("Jane Doe")
	var/quest_item = /obj/item/reagent_containers/food/snacks/cookie

	/*
	Item quests, i.e bring me an item or items
	Not really used for anything but as an exsample

	var/quest_item_message = "I require a cookie!!!"
	var/quest_item = /obj/item/reagent_containers/food/snacks/cookie
	var/quest_item_amount = 1 //This is how many items are required to finish the quest
	var/quest_item_complete_message "Thank you for the cookie, here is a jug of milk."
	var/quest_item_reward = /obj/item/reagent_containers/food/drinks/milk
	*/

/datum/npc_quest/New(knight_name, sleepy_apple)
	if(knight_name)
		knight_in_shining_armour = knight_name
	if(sleepy_apple)
		snow_white = sleepy_apple

/datum/npc_quest/proc/attempt_give(obj/item/A, mob/living/user)
	if(knight_in_shining_armour.real_name != user.name)
		return

	if(!quest_stared)
		return
/*
	if(istype(A, quest_item))
		if(istype(quest_item, /obj/item/stack))
			var/obj/item/stack/S = quest_item
			if(S.get_amount() < S.max_amount)
				to_chat(user, "<span class='warning'>[npc_name] stares blankly at the less then full stack.</span>")
				return

		quest_item_amount -= 1
		qdel(A)

	if(quest_item_amount >= 0)
		complete_quest(user)
*/
	return

/datum/npc_quest/proc/complete_quest(mob/living/user)
	if(!user || !quest_stared)
		return

	if(knight_in_shining_armour.real_name != user.name)
		return
/*
 - Most quests will be edited over
	if(quest_item_complete_message)
		to_chat(user, "<span class='warning'>[quest_item_complete_message]</span>")

	if(quest_item_reward)
		new quest_item_reward(user.loc)

	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		H.learnt_tasks.attempt_add_task_mastery(/datum/task_master/task/self_value, "MASTER_QUEST_COMPLETER", skill_gained = 5, learner = H)
		H.learnt_tasks.get_task_mastery_and_proc("MASTER_QUEST_COMPLETER")
*/

/datum/npc_quest/proc/on_examine(mob/living/user)
	return

/datum/npc_quest/proc/hear_me(mob/living/user, message)
	return

//Types

/datum/npc_quest/wax_wanter
	npc_name = "Violet Rosefield"
	card_name = list("Wax Hive", "Beekeeper", "Buzzy Bee")

	quest_item  = /obj/item/tool_upgrade/productivity/waxcoat
	var/swap_reward = FALSE

/datum/npc_quest/wax_wanter/hear_me(mob/living/user, message)
	if(user.real_name != knight_in_shining_armour.real_name)
		log_and_message_admins("Talk unheard, with [user.name] saying [message].")
		return

	log_and_message_admins("Talk heard 2, with [user.name] saying [message].")
	if(message == "[npc_name] do you require anything?")
		quest_stared = TRUE
		snow_white.visible_message("[npc_name] buzzies \"Yes I do, I need an endless - er I mean one, wax coating. For now at lest...\"")

	if(message == "[npc_name] What will you give in return?" && quest_stared)
		snow_white.visible_message("[npc_name] buzzies \"I can give you a fancy card and a random harcase, that has some items inside.\"")

	if(message == "[npc_name] How do I get a wax coating?" && quest_stared)
		snow_white.visible_message("[npc_name] buzzies \"Well you can make it by hand, or like find it somewere, if I knew for sure id not ask you for it.\"")

	if(message == "[npc_name] I dont like your current reward." && quest_stared)
		if(swap_reward)
			snow_white.visible_message("[npc_name] buzzies \"<span class='warning'>Mhfp! Im changing it back to a card!</span>\"")
			swap_reward = FALSE
		else
			snow_white.visible_message("[npc_name] buzzies \"Well, alright I have some spare medical items ill give you over the card...\"")
			swap_reward = TRUE

/datum/npc_quest/wax_wanter/on_examine(mob/living/user)
	if(user.real_name != knight_in_shining_armour.real_name)
		return

	if(quest_stared)
		snow_white.visible_message("To ask a reminder of the task: [npc_name] do you require anything?")
		snow_white.visible_message("To ask about a reward: [npc_name] What will you give in return?")
		snow_white.visible_message("To ask how to do the task: [npc_name] How do I get a wax coating?")
		snow_white.visible_message("To for an alternative reward: [npc_name] I dont like your current reward.")
		return

	snow_white.visible_message("To start the task: [npc_name] do you require anything?")


/datum/npc_quest/wax_wanter/complete_quest(mob/living/user)
	if(!user || !quest_stared)
		return

	if(knight_in_shining_armour.real_name != user.name)
		return

	snow_white.visible_message("Thank you for the wax! Here are some items as a reward.")
	new /obj/random/pouch/hardcase(user.loc)
	if(swap_reward)
		new /obj/random/medical_lowcost/always_spawn(user.loc)
		new /obj/random/medical_lowcost_handmade/always_spawn(user.loc)
	else
		new /obj/item/card_carp/index/adved(user.loc)
		var/obj/item/card_carp/death_card/death_card = new /obj/item/card_carp/death_card(user.loc)
		death_card.generate(1, pick(card_name))
	user.mind.individual_objectives_completed++

	return

/datum/npc_quest/wax_wanter/attempt_give(obj/item/A, mob/living/user)
	..()

	if(istype(A, quest_item))
		qdel(A)
		complete_quest(user)
		return TRUE

	return FALSE

