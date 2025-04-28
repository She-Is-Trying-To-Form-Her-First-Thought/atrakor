GLOBAL_LIST_INIT(color_list_lizard, list(
	"Blue" = "#3399ff",
	"Bright Yellow" = "#ffff99",
	"Burnt Orange" = "#cc4400",
	"Cyan Blue" = "#00ffff",
	"Dark Blue" = "#6666ff",
	"Dark Fuschia" = "#cc0066",
	"Dark Green" = "#37835b",
	"Dark Red" = "#9c3030",
	"Dull Yellow" = "#fbdf56",
	"Faint Blue" = "#b3d9ff",
	"Faint Green" = "#ddff99",
	"Faint Red" = "#ffb3b3",
	"Green" = "#97ee63",
	"Orange" = "#ffa64d",
	"Pink" = "#ff99cc",
	"Purple" = "#ee82ee",
	"Red" = "#ff4d4d",
	"Seafoam Green" = "#00fa9a",
	"White" = "#f2f2f2",
))

/datum/preference/choiced/species_color
	savefile_key = "feature_speciescolor"
	savefile_identifier = PREFERENCE_CHARACTER
	category = PREFERENCE_CATEGORY_FEATURES
	main_feature_name = "Species Color"

/datum/preference/choiced/species_color/has_relevant_feature(datum/preferences/preferences)
	return current_species_has_savekey(preferences)

/datum/preference/choiced/species_color/init_possible_values()
	return assoc_to_keys(GLOB.color_list_lizard)

/datum/preference/choiced/prisoner_crime/create_default_value()
	return GLOB.color_list_lizard[GLOB.color_list_lizard[1]]

/datum/preference/choiced/species_color/apply_to_human(mob/living/carbon/human/target, value)
	target.dna.features["mcolor"] = GLOB.color_list_lizard[value]
