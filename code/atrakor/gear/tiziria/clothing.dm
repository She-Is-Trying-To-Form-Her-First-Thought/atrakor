// head

/obj/item/clothing/head/lizard_hat
	name = "tan peak-cover"
	desc = "A Tizirian favorite in military headwear. A bill to keep the sun away and side flaps to cover the \
		sides of your head. All this, while still looking fancy through a neatly folded top cover. This one is \
		in the recognizable tan that shows the owner is a conscripted levy."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "peak_levy"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "peak_levy"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null

/obj/item/clothing/head/lizard_hat/white
	name = "white peak-cover"
	desc = "A Tizirian favorite in military headwear. A bill to keep the sun away and side flaps to cover the \
		sides of your head. All this, while still looking fancy through a neatly folded top cover. This one \
		is in the stark white that shows the owner is an army regular."
	icon_state = "peak_reg"
	worn_icon_state = "peak_reg"

// eye hud

/obj/item/clothing/glasses/lizard_hud
	name = "\improper Tizirian infohud"
	desc = "A solid screen made to sit in front of the eye for the quick presentation of combat information \
		to any of those special roles in the Tizirian army that may need it."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "hud"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "hud"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null
	flags_cover = GLASSESCOVERSEYES

// ear tag

/obj/item/clothing/ears/lizard_tag
	name = "ear tag"
	desc = "A Tizirian ear tag, printed with a number on it's face. Used mostly for identifying what's left of \
		levied soldiers after a particularly pitched battle."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "tag"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "tag"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null
	alternate_worn_layer = HANDCUFF_LAYER // above hats for visibility

// neck capes

/obj/item/clothing/neck/lizard_cape
	name = "hand's cape"
	desc = "A brilliant white shoulder cape to denote the wearer is serving as a hand of the empire, meaning \
		they are probably in charge of something you should be listening to right now."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "cape_hand"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "cape_hand"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null

/obj/item/clothing/neck/lizard_cape/med
	name = "scaler's cape"
	desc = "A deeply purple dyed shoulder cape to denote the wearer is a scaler, Tiziria's own medical corps, \
		and only sometimes not shot at on the battlefield."
	icon_state = "cape_med"
	worn_icon_state = "cape_med"

/obj/item/clothing/neck/lizard_cape/spec
	name = "claw's cape"
	desc = "An orange shoulder cape that denotes the user is a claw of the empire, otherwise known as a specialist \
		of some sort. Typically a sapper, or a radio carrier, but the cape applies to all except medics and leaders."
	icon_state = "cape"
	worn_icon_state = "cape"

// halftops

/obj/item/clothing/suit/lizard_halftop
	name = "tan halftop"
	desc = "The most popular clothing for the upper half of the Tizirians, enough to keep your scales from dulling \
		in the harsh summer sun, but open enough to not overheat in the same situation. This one is tan to denote the \
		owner is a conscripted levy."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "halftop_levy"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "halftop_levy"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null

/obj/item/clothing/suit/lizard_halftop/white
	name = "white halftop"
	desc = "The most popular clothing for the upper half of the Tizirians, enough to keep your scales from dulling \
		in the harsh summer sun, but open enough to not overheat in the same situation. This one is white to denote \
		that the wearer is an army regular."
	icon_state = "halftop_reg"
	worn_icon_state = "halftop_reg"

// kilts

/obj/item/clothing/under/lizard_kilt
	name = "tan Tizirian war kilt"
	desc = "The third best maintained item a Tizirian owns, next to their blades and armor. A relatively simple \
		looking kilt with a red banner hanging from it's front. Each banner holds a different long string of \
		draconic written on to it, often with little meaning and just to \" look cool \" for the cameras. \
		This one is tan to denote the wearer as a conscripted levy."
	icon = 'icons/atrakor/tiziria/gear.dmi'
	icon_state = "kilt_levy"
	worn_icon = 'icons/atrakor/tiziria/gear_worn.dmi'
	worn_icon_state = "kilt_levy"
	lefthand_file = 'icons/atrakor/generic/lefthand.dmi'
	righthand_file = 'icons/atrakor/generic/righthand.dmi'
	inhand_icon_state = null
	body_parts_covered = GROIN|LEGS
	can_adjust = FALSE
	female_sprite_flags = NO_FEMALE_UNIFORM
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/under/lizard_kilt/white
	name = "white Tizirian war kilt"
	desc = "The third best maintained item a Tizirian owns, next to their blades and armor. A relatively simple \
		looking kilt with a red banner hanging from it's front. Each banner holds a different long string of \
		draconic written on to it, often with little meaning and just to \" look cool \" for the cameras. \
		This one is white to denote the wearer as an army regular."
	icon_state = "kilt_reg"
	worn_icon_state = "kilt_reg"
