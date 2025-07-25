/datum/ai_emotion
	var/overlay
	var/ckey

/datum/ai_emotion/New(var/over, var/key)
	overlay = over
	ckey = key

var/list/ai_status_emotions = list(
	"Very Happy" 				= new /datum/ai_emotion("ai_veryhappy"),
	"Happy" 					= new /datum/ai_emotion("ai_happy"),
	"Neutral" 					= new /datum/ai_emotion("ai_neutral"),
	"Unsure" 					= new /datum/ai_emotion("ai_unsure"),
	"Confused" 					= new /datum/ai_emotion("ai_confused"),
	"Sad" 						= new /datum/ai_emotion("ai_sad"),
	"Surprised" 				= new /datum/ai_emotion("ai_surprised"),
	"Upset" 					= new /datum/ai_emotion("ai_upset"),
	"Angry" 					= new /datum/ai_emotion("ai_angry"),
	"BSOD" 						= new /datum/ai_emotion("ai_bsod"),
	"Blank" 					= new /datum/ai_emotion("ai_off"),
	"Problems?" 				= new /datum/ai_emotion("ai_trollface"),
	"Awesome" 					= new /datum/ai_emotion("ai_awesome"),
	"Dorfy" 					= new /datum/ai_emotion("ai_urist"),
	"Facepalm" 					= new /datum/ai_emotion("ai_facepalm"),
	"Friend Computer" 			= new /datum/ai_emotion("ai_friend"),
	"Corgi" 					= new /datum/ai_emotion("ai_corgi"),
	"Communist" 				= new /datum/ai_emotion("ai_redoctober"),
	"Heart" 					= new /datum/ai_emotion("ai_heart"),
	"Tribunal" 					= new /datum/ai_emotion("ai_tribunal", "serithi"),
	"Tribunal Malfunctioning"	= new /datum/ai_emotion("ai_tribunal_malf", "serithi")
	)

/proc/get_ai_emotions(var/ckey)
	var/list/emotions = list()
	for(var/emotion_name in ai_status_emotions)
		var/datum/ai_emotion/emotion = ai_status_emotions[emotion_name]
		if(!emotion.ckey || emotion.ckey == ckey)
			emotions += emotion_name

	return emotions

/proc/set_ai_status_displays(mob/user as mob)
	var/list/ai_emotions = get_ai_emotions(user.ckey)
	var/emote = tgui_input_list(user, "Please, select a status:", "AI Status", ai_emotions)
	if(!emote)
		return
	for (var/obj/machinery/M in GLOB.machines) //change status
		if(istype(M, /obj/machinery/ai_status_display))
			var/obj/machinery/ai_status_display/AISD = M
			AISD.emotion = emote
			AISD.update()
		//if Friend Computer, change ALL displays
		else if(istype(M, /obj/machinery/status_display))

			var/obj/machinery/status_display/SD = M
			if(emote=="Friend Computer")
				SD.friendc = 1
			else
				SD.friendc = 0

/obj/machinery/ai_status_display
	icon = 'icons/obj/status_display.dmi'
	icon_state = "frame"
	layer = ABOVE_WINDOW_LAYER
	name = "AI display"
	anchored = TRUE
	density = FALSE
	circuit =  /obj/item/circuitboard/ai_status_display

	var/mode = 0	// 0 = Blank
					// 1 = AI emoticon
					// 2 = Blue screen of death

	var/picture_state	// icon_state of ai picture

	var/emotion = "Neutral"

/obj/machinery/ai_status_display/attackby(I as obj, user as mob)
	if(computer_deconstruction_screwdriver(user, I))
		return
	else
		attack_hand(user)
	return

/obj/machinery/ai_status_display/attack_ai(mob/user as mob)
	var/list/ai_emotions = get_ai_emotions(user.ckey)
	var/emote = tgui_input_list(user, "Please, select a status:", "AI Status", ai_emotions)
	if(!emote)
		return
	emotion = emote

/obj/machinery/ai_status_display/process()
	return

/obj/machinery/ai_status_display/proc/update()
	if(mode==0) //Blank
		cut_overlays()
		return

	if(mode==1)	// AI emoticon
		var/datum/ai_emotion/ai_emotion = ai_status_emotions[emotion]
		set_picture(ai_emotion.overlay)
		return

	if(mode==2)	// BSOD
		set_picture("ai_bsod")
		return

/obj/machinery/ai_status_display/proc/set_picture(var/state)
	picture_state = state
	cut_overlays()
	add_overlay(picture_state)

/obj/machinery/ai_status_display/power_change()
	..()
	if(stat & NOPOWER)
		cut_overlays()
	else
		update()
