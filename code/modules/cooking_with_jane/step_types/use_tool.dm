//A cooking step that involves using an item on the food.
/datum/cooking_with_jane/recipe_step/use_tool
	class=CWJ_USE_ITEM
	var/tool_type


//item_type: The type path of the object we are looking for.
//base_quality_award: The quality awarded by following this step.
//our_recipe: The parent recipe object
/datum/cooking_with_jane/recipe_step/use_tool/New(var/type, var/datum/cooking_with_jane/recipe/our_recipe)

	desc = "Use \a [type]."

	tool_type = type

	..(our_recipe)


/datum/cooking_with_jane/recipe_step/use_tool/check_conditions_met(var/obj/added_item, var/datum/cooking_with_jane/recipe_tracker/tracker)
	if(!istype(added_item, /obj/item/tool ))
		return CWJ_CHECK_INVALID

	var/obj/item/tool/our_tool = added_item
	if(!our_tool.has_quality(tool_type))
		return CWJ_CHECK_INVALID

	return CWJ_CHECK_VALID

/datum/cooking_with_jane/recipe_step/use_tool/follow_step(var/obj/added_item, var/obj/item/reagent_containers/cooking_with_jane/cooking_container/container)
	var/obj/item/tool/our_tool = added_item
	if(our_tool.worksound && our_tool.worksound != NO_WORKSOUND)
		playsound(usr.loc, our_tool.worksound, 50, 1)
	to_chat(usr, SPAN_NOTICE("You use the [added_item] according to the recipe."))

	return CWJ_SUCCESS
