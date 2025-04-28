/datum/species/tizirian
	name = "\improper Tizirian"
	plural_form = "Tizirian"
	id = SPECIES_TIZIRIAN
	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID|MOB_REPTILE
	body_markings = list(
		/datum/bodypart_overlay/simple/body_marking/lizard = SPRITE_ACCESSORY_NONE,
	)
	mutant_organs = list(
		/obj/item/organ/horns = SPRITE_ACCESSORY_NONE,
		/obj/item/organ/frills = SPRITE_ACCESSORY_NONE,
		/obj/item/organ/snout = "Round",
		/obj/item/organ/spines = SPRITE_ACCESSORY_NONE,
		/obj/item/organ/tail/lizard = "Smooth",
	)
	mutanttongue = /obj/item/organ/tongue/lizard
	mutanteyes = /obj/item/organ/eyes/lizard
	payday_modifier = 1.0
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN | SLIME_EXTRACT
	species_cookie = /obj/item/food/meat/slab
	meat = /obj/item/food/meat/slab/human/mutant/lizard
	skinned_type = /obj/item/stack/sheet/animalhide/lizard
	exotic_bloodtype = BLOOD_TYPE_LIZARD
	death_sound = 'sound/mobs/humanoids/lizard/deathsound.ogg'
	species_language_holder = /datum/language_holder/lizard
	digitigrade_customization = DIGITIGRADE_NEVER
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/lizard,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/lizard,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/lizard,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/lizard,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/digitigrade,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/digitigrade,
	)

/datum/species/tizirian/randomize_features()
	var/list/features = ..()
	features["lizard_markings"] = pick(SSaccessories.lizard_markings_list)
	return features

/datum/species/tizirian/get_scream_sound(mob/living/carbon/human/lizard)
	return pick(
		'sound/mobs/humanoids/lizard/lizard_scream_1.ogg',
		'sound/mobs/humanoids/lizard/lizard_scream_2.ogg',
		'sound/mobs/humanoids/lizard/lizard_scream_3.ogg',
	)

/datum/species/tizirian/get_cough_sound(mob/living/carbon/human/lizard)
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


/datum/species/tizirian/get_cry_sound(mob/living/carbon/human/lizard)
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


/datum/species/tizirian/get_sneeze_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/tizirian/get_laugh_sound(mob/living/carbon/human/lizard)
	return 'sound/mobs/humanoids/lizard/lizard_laugh1.ogg'

/datum/species/tizirian/get_sigh_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/tizirian/get_sniff_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/tizirian/get_snore_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/tizirian/get_hiss_sound(mob/living/carbon/human/lizard)
	return 'sound/mobs/humanoids/lizard/lizard_hiss.ogg'

/datum/species/tizirian/get_physical_attributes()
	return "Lizardpeople can withstand slightly higher temperatures than most species, but they are very vulnerable to the cold \
		and can't regulate their body-temperature internally, making the vacuum of space extremely deadly to them."

/datum/species/tizirian/get_species_description()
	return "The militaristic Lizardpeople hail originally from Tizira, but have grown \
		throughout their centuries in the stars to possess a large spacefaring \
		empire: though now they must contend with their younger, more \
		technologically advanced Human neighbours."

/datum/species/tizirian/get_species_lore()
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
/datum/species/tizirian/create_pref_temperature_perks()
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
