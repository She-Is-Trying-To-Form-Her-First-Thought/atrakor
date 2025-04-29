/datum/species/vulpkanin
	name = "\improper Vulpkanin"
	plural_form = "Vulpkanin"
	id = SPECIES_VULPKANIN
	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
		TRAIT_FIXED_MUTANT_COLORS,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	body_markings = list(
		/datum/bodypart_overlay/simple/body_marking/lizard = SPRITE_ACCESSORY_NONE,
	)
	mutant_organs = list(
		/obj/item/organ/snout/vulpkanin = "Sharp",
		/obj/item/organ/tail/fluffy = "Big",
		/obj/item/organ/tail/cat = "Cat",
	)
	mutantears = /obj/item/organ/ears/cat
	mutanttongue = /obj/item/organ/tongue
	mutanteyes = /obj/item/organ/eyes
	payday_modifier = 1.0
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	species_cookie = /obj/item/food/meat/slab
	meat = /obj/item/food/meat/slab/human
	skinned_type = /obj/item/stack/sheet/animalhide/human
	exotic_bloodtype = null
	species_language_holder = /datum/language_holder/human_basic
	digitigrade_customization = DIGITIGRADE_NEVER
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/vulpkanin,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/vulpkanin,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/vulpkanin,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/vulpkanin,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/digitigrade/vulpkanin,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/digitigrade/vulpkanin,
	)
	fixed_mut_color = null

/datum/species/vulpkanin/on_species_gain(mob/living/carbon/human/human_who_gained_species, datum/species/old_species, pref_load, regenerate_icons)
	. = ..()

/datum/species/vulpkanin/get_features()
	var/list/features = ..()
	features += "feature_speciescolor"
	return features

/datum/species/vulpkanin/randomize_features()
	var/list/features = ..()
	features["lizard_markings"] = pick(SSaccessories.lizard_markings_list)
	var/new_color = GLOB.color_list_lizard[pick(GLOB.color_list_lizard)]
	features["mcolor"] = new_color
	fixed_mut_color = new_color
	return features

/datum/species/vulpkanin/get_scream_sound(mob/living/carbon/human/lizard)
	return pick(
		'sound/mobs/humanoids/lizard/lizard_scream_1.ogg',
		'sound/mobs/humanoids/lizard/lizard_scream_2.ogg',
		'sound/mobs/humanoids/lizard/lizard_scream_3.ogg',
	)

/datum/species/vulpkanin/get_cough_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cough/female_cough1.ogg',
			'sound/mobs/humanoids/human/cough/female_cough2.ogg',
			'sound/mobs/humanoids/human/cough/female_cough3.ogg',
			'sound/mobs/humanoids/human/cough/female_cough4.ogg',
			'sound/mobs/humanoids/human/cough/female_cough5.ogg',
			'sound/mobs/humanoids/human/cough/female_cough6.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cough/male_cough1.ogg',
		'sound/mobs/humanoids/human/cough/male_cough2.ogg',
		'sound/mobs/humanoids/human/cough/male_cough3.ogg',
		'sound/mobs/humanoids/human/cough/male_cough4.ogg',
		'sound/mobs/humanoids/human/cough/male_cough5.ogg',
		'sound/mobs/humanoids/human/cough/male_cough6.ogg',
	)


/datum/species/vulpkanin/get_cry_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/vulpkanin/get_sneeze_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/vulpkanin/get_laugh_sound(mob/living/carbon/human/lizard)
	return 'sound/mobs/humanoids/lizard/lizard_laugh1.ogg'

/datum/species/vulpkanin/get_sigh_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/vulpkanin/get_sniff_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/vulpkanin/get_snore_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/vulpkanin/get_hiss_sound(mob/living/carbon/human/lizard)
	return 'sound/mobs/humanoids/lizard/lizard_hiss.ogg'

/datum/species/vulpkanin/get_physical_attributes()
	return "Lizardpeople can withstand slightly higher temperatures than most species, but they are very vulnerable to the cold \
		and can't regulate their body-temperature internally, making the vacuum of space extremely deadly to them."

/datum/species/vulpkanin/get_species_description()
	return "The militaristic Lizardpeople hail originally from Tizira, but have grown \
		throughout their centuries in the stars to possess a large spacefaring \
		empire: though now they must contend with their younger, more \
		technologically advanced Human neighbours."

/datum/species/vulpkanin/get_species_lore()
	return list(
		"The face of conspiracy theory was changed forever the day mankind met the lizards.",

		"Hailing from the arid world of Tizira, lizards were travelling the stars back when mankind was first discovering how neat trains could be. \
		However, much like the space-fable of the space-tortoise and space-hare, lizards have rejected their kin's motto of \"slow and steady\" \
		in favor of resting on their laurels and getting completely surpassed by 'bald apes', due in no small part to their lack of access to plasma.",

		"The history between lizards and humans has resulted in many conflicts that lizards ended on the losing side of, \
		with the finale being an explosive remodeling of their moon. Today's lizard-human relations are seeing the continuance of a record period of peace.",

		"Lizard culture is inherently militaristic, though the influence the military has on lizard culture \
		begins to lessen the further colonies lie from their homeworld - \
		with some distanced colonies finding themselves subsumed by the cultural practices of other species nearby.",

		"On their homeworld, lizards celebrate their 16th birthday by enrolling in a mandatory 5 year military tour of duty. \
		Roles range from combat to civil service and everything in between. As the old slogan goes: \"Your place will be found!\"",
	)

// Override for the default temperature perks, so we can give our specific "cold blooded" perk.
/datum/species/vulpkanin/create_pref_temperature_perks()
	var/list/to_add = list()

	to_add += list(list(
		SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
		SPECIES_PERK_ICON = "thermometer-empty",
		SPECIES_PERK_NAME = "Cold-blooded",
		SPECIES_PERK_DESC = "Lizardpeople have higher tolerance for hot temperatures, but lower \
			tolerance for cold temperatures. Additionally, they cannot self-regulate their body temperature - \
			they are as cold or as warm as the environment around them is. Stay warm!",
	))

	return to_add
