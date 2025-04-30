GLOBAL_LIST_INIT(color_list_lizard, list(
	"Soil" = "#7b695f",
	"Mud" = "#373333",
	"Stone" = "#8a8783",
	"Copper" = "#f0bd84",
	"Red Dye 40" = "#8a5a64",
	"Sandy" = "#b9b697",
	"Water" = "#739794",
	"Foliage" = "#678064",
	"Desertification" = "#aea75b",
	"Silver" = "#c2d4dd",
	"Mountain" = "#99623a",
	"Evil" = "#7d393d",
))

/datum/preference/choiced/species_color
	savefile_key = "feature_speciescolor"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Species Color"
	should_generate_icons = TRUE
	can_randomize = TRUE

/datum/preference/choiced/species_color/icon_for(value)
	var/static/datum/universal_icon/scale_base
	scale_base = uni_icon('code/atrakor/species/prefs_icons.dmi', "scale")
	scale_base.scale(64, 64)
	var/datum/universal_icon/icon = scale_base.copy()
	icon.blend_color(GLOB.color_list_lizard[value], ICON_MULTIPLY)
	return icon

/datum/preference/choiced/species_color/has_relevant_feature(datum/preferences/preferences)
	return current_species_has_savekey(preferences)

/datum/preference/choiced/species_color/init_possible_values()
	return assoc_to_keys(GLOB.color_list_lizard)

/datum/preference/choiced/species_color/is_valid(value)
	return TRUE // idec brah

/datum/preference/choiced/species_color/create_default_value()
	return pick(GLOB.color_list_lizard)

/datum/preference/choiced/species_color/create_random_value(datum/preferences/preferences)
	return pick(GLOB.color_list_lizard)

/datum/preference/choiced/species_color/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["mcolor"] = GLOB.color_list_lizard[value]
	target.dna.species.fixed_mut_color = GLOB.color_list_lizard[value]
	target.update_body(is_creating = TRUE)
