// helmets

/obj/item/clothing/head/tajaran_helmet
	name = "\improper Kusingillean flophelmet"
	desc = "An unremarkable helmet with more than remarkable decoration. A large, royal purple flophat decorates the top \
		of this in an unmistakably Kusingillean show of fashion."
	icon = 'icons/atrakor/tajara/gear.dmi'
	icon_state = "flophelmet"
	worn_icon = 'icons/atrakor/tajara/gear_worn.dmi'
	worn_icon_state = "flophelmet"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null

/obj/item/clothing/head/tajaran_helmet/royal
	name = "royal Kusingillean flophelmet"
	desc = "An unremarkable helmet with more than remarkable decoration. A large, silvery flophat decorates the top of this \
		in an unmistakably Kusingillean show of fashion and status. It even has reflective gold-lined glass to protect the eyes."
	icon_state = "flophelmet_rich"
	worn_icon_state = "flophelmet_rich"
	flags_cover = HEADCOVERSEYES

/obj/item/clothing/head/vulp_helmet
	name = "\improper Carcajoulean helmet"
	desc = "A strong and simple helmet. Taking design notes from the Tizirians, the front is strongly angled to \
		give a much greater chance at glancing blows. Different, however, is the much more open air and artistic design."
	icon = 'icons/atrakor/vulp/gear.dmi'
	icon_state = "skirmisher"
	worn_icon = 'icons/atrakor/vulp/gear_worn.dmi'
	worn_icon_state = "skirmisher"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null

// armor vest

/obj/item/clothing/armor_slot/tajaran
	name = "\improper Kusingillean plate"
	desc = "Full upper body plate armor, made of exceptional modern material and decorated extensively. No one set of plate \
		looks the same as another, and the value of each set is measured in not only it's material, but also a complete \
		original mural without plate replacement despite seeing combat."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "armor"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "armor"

/obj/item/clothing/armor_slot/tajaran/gold
	name = "\improper Kusingillean high plate"
	desc = "Full upper body plate armor, made of exceptional modern material and decorated extensively. No one set of plate \
		looks the same as another, and the value of each set is measured in not only it's material, but also a complete \
		original mural without plate replacement despite seeing combat. This set is adorned with brilliant gold accents \
		likely to denote the wearer as someone of greater importance."
	icon_state = "armor_high"
	worn_icon_state = "armor_high"

/obj/item/clothing/armor_slot/vulp
	name = "\improper Carcajoulean armor"
	desc = "Beautiful in function, a heavy set of Carcajoulean armor is never identical to another set in overall design. \
		Much like the crab, each set is a completely different design of armor that has evolved to a similar point, each \
		made by a completely different engineer for their favorite vatborn."
	icon = 'icons/atrakor/vulp/gear.dmi'
	icon_state = "armor"
	worn_icon = 'icons/atrakor/vulp/gear_worn.dmi'
	worn_icon_state = "armor"

// leg armor

/obj/item/clothing/shoes/tajaran_shins
	name = "gold-plate greaves"
	desc = "Thick plated greaves worn commonly by Kusingillen warriors, protecting their legs from such modern dangers as \
		minor damage during impossible tasks like doing your own work, or fighting people shorter than you."
	icon = 'icons/atrakor/tajara/gear.dmi'
	icon_state = "guards"
	worn_icon = 'icons/atrakor/tajara/gear_worn.dmi'
	worn_icon_state = "guards"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null
	fastening_type = SHOES_STRAPS
	item_flags = IGNORE_DIGITIGRADE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/shoes/vulp_shins
	name = "alloy shin plate"
	desc = "Thick plates worn on what counts as the shins of something digitigrade, for protecting the wearer. \
		Against what? Just daily wear and tear, such as kicking enemies, or machines that don't work, or enemies."
	icon = 'icons/atrakor/vulp/gear.dmi'
	icon_state = "guards"
	worn_icon = 'icons/atrakor/vulp/gear_worn.dmi'
	worn_icon_state = "guards"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null
	fastening_type = SHOES_STRAPS
	item_flags = IGNORE_DIGITIGRADE
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

// gloves

/obj/item/clothing/gloves/tajaran_gloves
	name = "gold-plate gauntlets"
	desc = "Gold-plated armored gauntlets, as only the finest decorated hands should be responsible for the end of your life."
	icon = 'icons/atrakor/tajara/gear.dmi'
	icon_state = "gloves"
	worn_icon = 'icons/atrakor/tajara/gear_worn.dmi'
	worn_icon_state = "gloves"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null

/obj/item/clothing/gloves/vulp_gloves
	name = "alloy gauntlets"
	desc = "Alloy-plated armored gauntlets, as only the finest armored hands should be responsible for the end of your life."
	icon = 'icons/atrakor/vulp/gear.dmi'
	icon_state = "gloves"
	worn_icon = 'icons/atrakor/vulp/gear_worn.dmi'
	worn_icon_state = "gloves"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null
