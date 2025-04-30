/obj/item/bodypart/head/vulpkanin
	icon_greyscale = 'code/atrakor/species/anthro_body/body.dmi'
	limb_id = BODYPART_ID_ANTHRO
	is_dimorphic = FALSE
	head_flags = HEAD_HAIR|HEAD_LIPS|HEAD_EYESPRITES|HEAD_EYECOLOR
	teeth_count = 42

/obj/item/bodypart/chest/vulpkanin
	icon_greyscale = 'code/atrakor/species/anthro_body/body.dmi'
	limb_id = BODYPART_ID_ANTHRO
	is_dimorphic = TRUE
	wing_types = list(/obj/item/organ/wings/functional/dragon)

/obj/item/bodypart/arm/left/vulpkanin
	icon_greyscale = 'code/atrakor/species/anthro_body/body.dmi'
	limb_id = BODYPART_ID_ANTHRO
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	grappled_attack_verb = "lacerate"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/arm/right/vulpkanin
	icon_greyscale = 'code/atrakor/species/anthro_body/body.dmi'
	limb_id = BODYPART_ID_ANTHRO
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	grappled_attack_verb = "lacerate"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/leg/left/digitigrade/vulpkanin
	icon_greyscale = 'code/atrakor/species/anthro_body/body.dmi'
	limb_id = BODYPART_ID_DIGITIGRADE
	bodyshape = BODYSHAPE_HUMANOID | BODYSHAPE_DIGITIGRADE
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	footstep_type = FOOTSTEP_MOB_CLAW

/obj/item/bodypart/leg/right/digitigrade/vulpkanin
	icon_greyscale = 'code/atrakor/species/anthro_body/body.dmi'
	limb_id = BODYPART_ID_DIGITIGRADE
	bodyshape = BODYSHAPE_HUMANOID | BODYSHAPE_DIGITIGRADE
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS
	footstep_type = FOOTSTEP_MOB_CLAW

// snouts

/obj/item/organ/snout/vulpkanin
	name = "vulpkanin snout"
	preference = "feature_vulp_snout"
	bodypart_overlay = /datum/bodypart_overlay/mutant/snout/vulpkanin

/datum/bodypart_overlay/mutant/snout/vulpkanin
	feature_key = "snout_vulp"

/datum/bodypart_overlay/mutant/snout/vulpkanin/get_global_feature_list()
	return SSaccessories.snouts_list_vulp

/datum/sprite_accessory/snouts_vulp
	icon = 'code/atrakor/species/anthro_body/bits.dmi'
	em_block = TRUE

/datum/sprite_accessory/snouts_vulp/sharp
	name = "Sharp"
	icon_state = "sharp"

/datum/preference/choiced/vulp_snout
	savefile_key = "feature_vulp_snout"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Vulpkanin Snout"
	should_generate_icons = TRUE
	relevant_external_organ = /obj/item/organ/snout/vulpkanin

/datum/preference/choiced/vulp_snout/init_possible_values()
	return assoc_to_keys_features(SSaccessories.snouts_list_vulp)

/datum/preference/choiced/vulp_snout/icon_for(value)
	return generate_lizard_side_shot(SSaccessories.snouts_list_vulp[value], "snout_vulp", include_snout = FALSE)

/datum/preference/choiced/vulp_snout/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["snout_vulp"] = value
