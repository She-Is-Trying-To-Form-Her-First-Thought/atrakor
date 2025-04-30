/datum/species/tajaran
	name = "\improper Kusingilla"
	plural_form = "Kusingillen"
	id = SPECIES_TAJARAN
	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
		TRAIT_FIXED_MUTANT_COLORS,
		TRAIT_KITTY_EARS_MEOW,
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	body_markings = list(
		/datum/bodypart_overlay/simple/body_marking/lizard = SPRITE_ACCESSORY_NONE,
	)
	mutant_organs = list(
		/obj/item/organ/snout/tajaran = "Sharp",
		/obj/item/organ/tail/fluffy = "Big",
	)
	mutantears = /obj/item/organ/ears/cat
	mutanttongue = /obj/item/organ/tongue/cat
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
		BODY_ZONE_HEAD = /obj/item/bodypart/head/tajaran,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/tajaran,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/tajaran,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/tajaran,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/digitigrade/tajaran,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/digitigrade/tajaran,
	)
	fixed_mut_color = null
	no_equip_flags = ITEM_SLOT_SPEC_STORAGE
	preview_outfit = /datum/outfit/tajaran_preview
	hair_color_mode = USE_MUTANT_COLOR

/datum/species/tajaran/on_species_gain(mob/living/carbon/human/human_who_gained_species, datum/species/old_species, pref_load, regenerate_icons)
	var/obj/item/organ/ears/cat/ears = new(FALSE, human_who_gained_species.dna.features["ears"])
	ears.Insert(human_who_gained_species, movement_flags = DELETE_IF_REPLACED)
	return ..()

/datum/species/tajaran/get_features()
	var/list/features = ..()
	features += "feature_speciescolor"
	return features

/datum/species/tajaran/randomize_features()
	var/list/features = ..()
	features["lizard_markings"] = pick(SSaccessories.lizard_markings_list)
	var/new_color = GLOB.color_list_lizard[pick(GLOB.color_list_lizard)]
	features["mcolor"] = new_color
	fixed_mut_color = new_color
	return features

/datum/species/tajaran/get_scream_sound(mob/living/carbon/human/lizard)
	return pick(
		'sound/mobs/humanoids/lizard/lizard_scream_1.ogg',
		'sound/mobs/humanoids/lizard/lizard_scream_2.ogg',
		'sound/mobs/humanoids/lizard/lizard_scream_3.ogg',
	)

/datum/species/tajaran/get_cough_sound(mob/living/carbon/human/lizard)
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


/datum/species/tajaran/get_cry_sound(mob/living/carbon/human/lizard)
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


/datum/species/tajaran/get_sneeze_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/tajaran/get_laugh_sound(mob/living/carbon/human/lizard)
	return 'sound/mobs/humanoids/lizard/lizard_laugh1.ogg'

/datum/species/tajaran/get_sigh_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/tajaran/get_sniff_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/tajaran/get_snore_sound(mob/living/carbon/human/lizard)
	if(lizard.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/tajaran/get_hiss_sound(mob/living/carbon/human/lizard)
	return 'sound/mobs/humanoids/lizard/lizard_hiss.ogg'

/datum/species/tajaran/get_physical_attributes()
	return "Lizardpeople can withstand slightly higher temperatures than most species, but they are very vulnerable to the cold \
		and can't regulate their body-temperature internally, making the vacuum of space extremely deadly to them."

/datum/species/tajaran/get_species_description()
	return "The militaristic Lizardpeople hail originally from Tizira, but have grown \
		throughout their centuries in the stars to possess a large spacefaring \
		empire: though now they must contend with their younger, more \
		technologically advanced Human neighbours."

/datum/species/tajaran/get_species_lore()
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

/datum/outfit/tajaran_preview
	name = "Kusingillen (PREVIEW)"
	head = /obj/item/clothing/head/tajaran_hat
	glasses = /obj/item/clothing/glasses/tajaran_hud
	neck = /obj/item/clothing/neck/tajaran_cape
	armor = /obj/item/clothing/armor_slot/tajaran/gold
	suit = /obj/item/clothing/suit/tajaran_dressing

/datum/species/tajaran/prepare_human_for_preview(mob/living/carbon/human/lizard_for_preview)
	lizard_for_preview.dna.features["mcolor"] = "#b9b697"
	lizard_for_preview.dna.species.fixed_mut_color = "#b9b697"
	lizard_for_preview.dna.features["ears"] = "Coeurl"
	lizard_for_preview.dna.features["lizard_markings"] = "Dark Tiger Body"
	regenerate_organs(lizard_for_preview)
	lizard_for_preview.update_body(is_creating = TRUE)
