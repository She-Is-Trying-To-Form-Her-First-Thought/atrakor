// Fullscreen
/atom/movable/screen/atrakor_background
	name = "skeuomorphism"
	icon = 'icons/hud_atrakor/fullscreen.dmi'
	icon_state = "background"
	plane = FULLSCREEN_PLANE
	layer = FULLSCREEN_HUD_LAYER

// Combat Switch
/atom/movable/screen/combattoggle/aircraft
	name = "toggle combat mode"
	icon = 'icons/hud_atrakor/combat_section.dmi'
	icon_state = "not_combat"
	mouse_over_pointer = MOUSE_HAND_POINTER

/atom/movable/screen/combattoggle/aircraft/update_icon_state()
	var/mob/living/user = hud?.mymob
	if(!istype(user) || !user.client)
		return ..()
	icon_state = user.combat_mode ? "yes_combat" : "not_combat" //Treats the combat_mode
	return ..()
