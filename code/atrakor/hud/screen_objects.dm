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
	screen_loc = "CENTER+5,SOUTH+0"
	mouse_over_pointer = MOUSE_HAND_POINTER

// Movement speed
/atom/movable/screen/mov_intent_bar
	name = "movement speed"
	icon = 'icons/hud_atrakor/the_speed_is_a_lot.dmi'
	icon_state = "running"

/atom/movable/screen/mov_intent/update_icon_state()
	if(!hud || !hud.mymob || !isliving(hud.mymob))
		return
	var/mob/living/living_hud_owner = hud.mymob
	switch(living_hud_owner.move_intent)
		if(MOVE_INTENT_WALK)
			icon_state = "walking"
		if(MOVE_INTENT_RUN)
			icon_state = "running"
	return ..()
