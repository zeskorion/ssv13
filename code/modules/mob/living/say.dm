var/list/department_radio_keys = list(
	":r" = "right ear",	".r" = "right ear",
	":l" = "left ear",	".l" = "left ear",
	":i" = "intercom",	".i" = "intercom",
	":h" = "department",	".h" = "department",
	":+" = "special",		".+" = "special", //activate radio-specific special functions
	":c" = CHANNEL_COMMAND,		".c" = CHANNEL_COMMAND,
	":n" = CHANNEL_SCIENCE,		".n" = CHANNEL_SCIENCE,
	":m" = CHANNEL_MEDICAL,		".m" = CHANNEL_MEDICAL,
	":e" = CHANNEL_ENGINEERING, ".e" = CHANNEL_ENGINEERING,
	":k" = CHANNEL_RESPONSE_TEAM,	".k" = CHANNEL_RESPONSE_TEAM,
	":s" = CHANNEL_SECURITY,	".s" = CHANNEL_SECURITY,
	":w" = "whisper",		".w" = "whisper",
	":t" = CHANNEL_MERCENARY,	".t" = CHANNEL_MERCENARY,
	":x" = CHANNEL_RAIDER,		".x" = CHANNEL_RAIDER,
	":u" = CHANNEL_SUPPLY,		".u" = CHANNEL_SUPPLY,
	":v" = CHANNEL_SERVICE,		".v" = CHANNEL_SERVICE,
	":p" = CHANNEL_AI_PRIVATE,	".p" = CHANNEL_AI_PRIVATE,
	":y" = CHANNEL_EXPLORATION,	".y" = CHANNEL_EXPLORATION,	//VOREStation Edit //CHOMP keep explo
	":a" = CHANNEL_TALON,		".a" = CHANNEL_TALON, //VOREStation Add, //CHOMP keep explo
	":g" = CHANNEL_CASINO,	".g" = CHANNEL_CASINO,

	":R" = "right ear",	".R" = "right ear",
	":L" = "left ear",	".L" = "left ear",
	":I" = "intercom",	".I" = "intercom",
	":H" = "department",	".H" = "department",
	":C" = CHANNEL_COMMAND,		".C" = CHANNEL_COMMAND,
	":N" = CHANNEL_SCIENCE,		".N" = CHANNEL_SCIENCE,
	":M" = CHANNEL_MEDICAL,		".M" = CHANNEL_MEDICAL,
	":E" = CHANNEL_ENGINEERING,	".E" = CHANNEL_ENGINEERING,
	":K" = CHANNEL_RESPONSE_TEAM,	".K" = CHANNEL_RESPONSE_TEAM,
	":S" = CHANNEL_SECURITY,	".S" = CHANNEL_SECURITY,
	":W" = "whisper",		".W" = "whisper",
	":T" = CHANNEL_MERCENARY,	".T" = CHANNEL_MERCENARY,
	":X" = CHANNEL_RAIDER,		".X" = CHANNEL_RAIDER,
	":U" = CHANNEL_SUPPLY,		".U" = CHANNEL_SUPPLY,
	":V" = CHANNEL_SERVICE,		".V" = CHANNEL_SERVICE,
	":P" = CHANNEL_AI_PRIVATE,	".P" = CHANNEL_AI_PRIVATE,
	":Y" = CHANNEL_EXPLORATION,	".Y" = CHANNEL_EXPLORATION, //CHOMP keep explo
	":A" = CHANNEL_TALON,		".A" = CHANNEL_TALON, //VOREStation Add, //CHOMP keep explo
	":G" = CHANNEL_CASINO,	".G" = CHANNEL_CASINO,

	// Cyrillic characters on the same keys on the Russian QWERTY (phonetic) layout
	":к" = "right ear",    ".к" = "right ear",
	":д" = "left ear",    ".д" = "left ear",
	":ш" = "intercom",    ".ш" = "intercom",
	":р" = "department",    ".р" = "department",
	":+" = "special",        ".+" = "special", //activate radio-specific special functions
	":с" = CHANNEL_COMMAND,        ".с" = CHANNEL_COMMAND,
	":т" = CHANNEL_SCIENCE,        ".т" = CHANNEL_SCIENCE,
	":ь" = CHANNEL_MEDICAL,        ".ь" = CHANNEL_MEDICAL,
	":у" = CHANNEL_ENGINEERING, ".у" = CHANNEL_ENGINEERING,
	":л" = CHANNEL_RESPONSE_TEAM,    ".л" = CHANNEL_RESPONSE_TEAM,
	":ы" = CHANNEL_SECURITY,    ".ы" = CHANNEL_SECURITY,
	":ц" = "whisper",        ".ц" = "whisper",
	":е" = CHANNEL_MERCENARY,    ".е" = CHANNEL_MERCENARY,
	":ч" = CHANNEL_RAIDER,        ".ч" = CHANNEL_RAIDER,
	":г" = CHANNEL_SUPPLY,        ".г" = CHANNEL_SUPPLY,
	":м" = CHANNEL_SERVICE,        ".м" = CHANNEL_SERVICE,
	":з" = CHANNEL_AI_PRIVATE,    ".з" = CHANNEL_AI_PRIVATE,
	":н" = CHANNEL_EXPLORATION,    ".н" = CHANNEL_EXPLORATION, //CHOMP keep explo
	":ф" = CHANNEL_TALON,        ".ф" = CHANNEL_TALON, //VOREStation Add //CHOMP keep explo
	":п" = CHANNEL_CASINO,	".п" = CHANNEL_CASINO,
)


var/list/channel_to_radio_key = list()
/proc/get_radio_key_from_channel(var/channel)
	var/key = channel_to_radio_key[channel]
	if(!key)
		for(var/radio_key in department_radio_keys)
			if(department_radio_keys[radio_key] == channel)
				key = radio_key
				break
		if(!key)
			key = ""
		channel_to_radio_key[channel] = key

	return key

/mob/living/proc/binarycheck()
	return FALSE

/mob/proc/get_default_language()
	return null

/mob/living/get_default_language()
	return default_language

//Takes a list of the form list(message, verb, whispering) and modifies it as needed
//Returns 1 if a speech problem was applied, 0 otherwise
/mob/living/proc/handle_speech_problems(var/list/message_data)
	var/list/message_pieces = message_data[1]
	var/verb = message_data[2]
	var/whispering = message_data[3]
	. = 0

	// Technically this rerolls the verb for as many say pieces as there are. _shrug_
	for(var/datum/multilingual_say_piece/S in message_pieces)
		if(S.speaking && (S.speaking.flags & NO_STUTTER || S.speaking.flags & SIGNLANG))
			continue

		if(disabilities & CENSORED)
			S.message = censor_swears(S.message) // Googlybonkers
			. = 1

		if((HULK in mutations) && health >= 25 && length(S.message))
			S.message = "[uppertext(S.message)]!!!"
			verb = pick("yells","roars","hollers")
			whispering = 0
			. = 1
		if(slurring)
			S.message = slur(S.message)
			verb = pick("slobbers","slurs")
			. = 1
		if(stuttering)
			S.message = stutter(S.message)
			verb = pick("stammers","stutters")
			. = 1
		if(muffled)
			verb = pick("muffles")
			whispering = 1
			. = 1
		if(disabilities & WINGDINGS)
			verb = pick("gibbers","gabbers","gahoos","gazonks") // Yeah lets just be stupid
			S.message = Gibberish(S.message, 100) // Googlybonkers
			S.message = span_wingdings((S.message))
			. = 1

	message_data[1] = message_pieces
	message_data[2] = verb
	message_data[3] = whispering

/mob/living/proc/handle_message_mode(message_mode, list/message_pieces, verb, used_radios)
	if(message_mode == "intercom")
		for(var/obj/item/radio/intercom/I in view(1, null))
			I.talk_into(src, message_pieces, verb)
			used_radios += I
	return 0

/mob/living/proc/handle_speech_sound()
	var/list/returns[2]
	returns[1] = null
	returns[2] = null
	return returns

/mob/living/proc/get_speech_ending(verb, var/ending)
	if(ending == "!")
		return pick("exclaims","shouts","yells")
	if(ending == "?")
		return "asks"
	return verb

/mob/living/say(var/message, var/datum/language/speaking = null, var/whispering = 0)
	//If you're muted for IC chat
	if(client)
		if(message)
			client.handle_spam_prevention(MUTE_IC)
			if((client.prefs.muted & MUTE_IC))
				to_chat(src, span_warning("You cannot speak in IC (Muted)."))
				return

	//Redirect to say_dead if talker is dead
	if(stat)
		if(stat == DEAD && !forbid_seeing_deadchat)
			return say_dead(message)
		return
	//VOREStation Addition Start
	if(forced_psay)
		psay(message)
		return
	if(autowhisper)
		whispering = 1
	//VOREStation Addition End
	//Parse the mode
	var/message_mode = parse_message_mode(message, "headset")

	//Maybe they are using say/whisper to do a quick emote, so do those
	switch(copytext(message, 1, 2))
		if("*") return emote(copytext(message, 2))
		if("^") return custom_emote(VISIBLE_MESSAGE, copytext(message, 2))

	//Parse the radio code and consume it
	if(message_mode)
		if(message_mode == "headset")
			message = copytext(message, 2)	//it would be really nice if the parse procs could do this for us.
		else if(message_mode == "whisper")
			whispering = 1
			message_mode = null
			message = copytext(message, 3)
		else
			message = copytext(message, 3)

	//Clean up any remaining space on the left
	message = trim_left(message)

	// VOREStation Edit - Reflect messages as needed, no sanitizing because parse_languages will handle it for us
	if(reflect_if_needed(message, src))
		return
	// VOREStation Edit End

	// If the message ends in an alphanumeric character (therefore, not punctuation),
	// and autopunctuation is turned on, add a period.
	// This must be done right here, before parse_languages is called, to make sure it's in the last multilingual say piece.
	if(contains_az09(copytext(message, length(message))))
		if(client?.prefs?.read_preference(/datum/preference/toggle/autopunctuation))
			message += "."

	//Parse the language code and consume it
	var/list/message_pieces = parse_languages(message)
	if(istype(message_pieces, /datum/multilingual_say_piece)) // Little quark for dealing with hivemind/signlang languages.
		var/datum/multilingual_say_piece/S = message_pieces // Yay for BYOND's hilariously broken typecasting for allowing us to do this.
		S.speaking.broadcast(src, S.message)
		return 1

	if(!LAZYLEN(message_pieces))
		log_runtime(EXCEPTION("Message failed to generate pieces. [message] - [json_encode(message_pieces)]"))
		return 0

	// If you're muzzled, you can only speak sign language
	// However, sign language is handled above.
	if(is_muzzled())
		to_chat(src, span_danger("You're muzzled and cannot speak!"))
		return

	//Whisper vars
	var/w_scramble_range = 5	//The range at which you get ***as*th**wi****
	var/w_adverb				//An adverb prepended to the verb in whispers
	var/w_not_heard				//The message for people in watching range

	var/datum/multilingual_say_piece/first_piece = message_pieces[1]
	var/verb = ""
	//Handle language-specific verbs and adverb setup if necessary
	if(!whispering) //Just doing normal 'say' (for now, may change below)
		verb = say_quote(message, first_piece.speaking)
	else if(whispering && first_piece.speaking.whisper_verb) //Language has defined whisper verb
		verb = first_piece.speaking.whisper_verb
		w_not_heard = "[verb] something"
	else //Whispering but language has no whisper verb, use say verb
		w_adverb = pick("quietly", "softly")
		verb = first_piece.speaking.speech_verb
		w_not_heard = "[first_piece.speaking.speech_verb] something [w_adverb]"

	//For speech disorders (hulk, slurring, stuttering)
	var/list/message_data = list(message_pieces, verb, whispering)
	if(handle_speech_problems(message_data))
		message_pieces = message_data[1]
		whispering = message_data[3]

		if(verb != message_data[2]) //They changed our verb
			if(whispering)
				w_adverb = pick("quietly", "softly")
			verb = message_data[2]

	//Whisper may have adverbs, add those if one was set
	if(w_adverb)
		verb = "[verb] [w_adverb]"

	//If something nulled or emptied the message, forget it
	if(!LAZYLEN(message_pieces))
		return 0

	//Radio message handling
	var/list/used_radios = list()
	if(handle_message_mode(message_mode, message_pieces, verb, used_radios, whispering))
		return 1

	//For languages with actual speech sounds
	var/list/handle_v = handle_speech_sound()
	var/sound/speech_sound = handle_v[1]
	var/sound_vol = handle_v[2]

	//Default range and italics, may be overridden past here
	var/message_range = world.view
	var/italics = 0
	var/do_sound = TRUE
	if(!voice_sounds_list || !voice_sounds_list.len)
		do_sound = FALSE

	//Speaking into radios
	if(used_radios.len)
		italics = 1
		message_range = 1

		if(first_piece.speaking)
			message_range = first_piece.speaking.get_talkinto_msg_range(message)
		var/msg
		if(!first_piece.speaking || !(first_piece.speaking.flags & NO_TALK_MSG))
			msg = span_notice("[src] talks into [used_radios[1]]")

		if(msg)
			for(var/mob/living/M in hearers(5, src) - src)
				M.show_message(msg)

		if(speech_sound)
			sound_vol *= 0.5

	//Set vars if we're still whispering by this point
	if(whispering)
		italics = 1
		message_range = 1
		sound_vol *= 0.5

	//VOREStation edit - allows for custom say verbs, overriding all other say-verb types- e.g. "says loudly" instead of "shouts"
	//You'll still stammer if injured or slur if drunk, but it won't have those specific words
	var/ending = copytext(message, length(message))

	if(custom_whisper && whispering)
		verb = "[custom_whisper]"
	else if(custom_exclaim && ending=="!")
		verb = "[custom_exclaim]"
	else if(custom_ask && ending=="?")
		verb = "[custom_ask]"
	else if(custom_say)
		verb = "[custom_say]"
	//VOREStation edit ends

	//Handle nonverbal languages here
	for(var/datum/multilingual_say_piece/S in message_pieces)
		if((S.speaking.flags & NONVERBAL) || (S.speaking.flags & INAUDIBLE))
			custom_emote(VISIBLE_MESSAGE, "[pick(S.speaking.signlang_verb)].")
			do_sound = FALSE

	//These will contain the main receivers of the message
	var/list/listening = list()
	var/list/listening_obj = list()

	//Atmosphere calculations (speaker's side only, for now)
	var/turf/T = get_turf(src)
	if(T)
		//Air is too thin to carry sound at all, contact speech only
		var/datum/gas_mixture/environment = T.return_air()
		var/pressure = environment ? environment.return_pressure() : 0
		if(pressure < SOUND_MINIMUM_PRESSURE)
			message_range = 1

		//Air is nearing minimum levels, make text italics as a hint, and muffle sound
		if(pressure < ONE_ATMOSPHERE * 0.4)
			italics = 1
			sound_vol *= 0.5

		//Obtain the mobs and objects in the message range
		var/list/results = get_mobs_and_objs_in_view_fast(T, world.view, remote_ghosts = client ? TRUE : FALSE)
		listening = results["mobs"]
		listening_obj = results["objs"]
	else
		return 1 //If we're in nullspace, then forget it.

	//Remember the speech images so we can remove them later and they can get GC'd
	var/list/images_to_clients = list()

	//The 'post-say' static speech bubble
	var/speech_bubble_test = say_test(message)
	//var/image/speech_bubble = image('icons/mob/talk_vr.dmi',src,"h[speech_bubble_test]") //VOREStation Edit. Commented this out in case we need to reenable.
	var/speech_type = custom_speech_bubble
	if(!speech_type || speech_type == "default")
		speech_type = speech_bubble_appearance()
	var/image/speech_bubble = generate_speech_bubble(src, "[speech_type][speech_bubble_test]")
	var/sb_alpha = 255
	var/atom/loc_before_turf = src
	//VOREStation Add
	if(isbelly(loc))
		speech_bubble.pixel_y = -13 //teehee
	//VOREStation Add End
	while(loc_before_turf && !isturf(loc_before_turf.loc))
		loc_before_turf = loc_before_turf.loc
		sb_alpha -= 50
		if(sb_alpha < 0)
			break
	speech_bubble.loc = loc_before_turf
	speech_bubble.alpha = CLAMP(sb_alpha, 0, 255)
	images_to_clients[speech_bubble] = list()

	//Main 'say' and 'whisper' message delivery
	for(var/mob/M in listening)
		spawn(0) //Using spawns to queue all the messages for AFTER this proc is done, and stop runtimes

			if(M && src) //If we still exist, when the spawn processes
				//VOREStation Add - Ghosts don't hear whispers
				if(whispering && isobserver(M) && (!M.client?.prefs?.read_preference(/datum/preference/toggle/ghost_see_whisubtle) || \
				(!(client?.prefs?.read_preference(/datum/preference/toggle/whisubtle_vis) || (isbelly(M.loc) && src == M.loc:owner))  && !M.client?.holder)))
					M.show_message(span_game(span_say(span_name(src.name) + " [w_not_heard].")), 2)
					return
				//VOREStation Add End

				var/dst = get_dist(get_turf(M),get_turf(src))
				var/runechat_enabled = M.client?.prefs?.read_preference(/datum/preference/toggle/runechat_mob)

				if(dst <= message_range || (M.stat == DEAD && !forbid_seeing_deadchat)) //Inside normal message range, or dead with ears (handled in the view proc)
					if(M.hear_say(message_pieces, verb, italics, src, speech_sound, sound_vol))
						if(M.client && !runechat_enabled)
							var/image/I1 = listening[M] || speech_bubble
							images_to_clients[I1] |= M.client
							M << I1
				if(whispering && !isobserver(M)) //Don't even bother with these unless whispering
					if(dst > message_range && dst <= w_scramble_range) //Inside whisper scramble range
						if(M.hear_say(stars_all(message_pieces), verb, italics, src, speech_sound, sound_vol*0.2))
							if(M.client && !runechat_enabled)
								var/image/I2 = listening[M] || speech_bubble
								images_to_clients[I2] |= M.client
								M << I2
					if(dst > w_scramble_range && dst <= world.view) //Inside whisper 'visible' range
						M.show_message(span_game(span_say(span_name(name) + " [w_not_heard].")), 2)

	//Object message delivery
	for(var/obj/O in listening_obj)
		spawn(0)
			if(O && src) //If we still exist, when the spawn processes
				var/dst = get_dist(get_turf(O),get_turf(src))
				if(dst <= message_range)
					O.hear_talk(src, message_pieces, verb)

	//Remove all those images. At least it's just ONE spawn this time.
	spawn(30)
		for(var/image/I as anything in images_to_clients)
			var/list/clients_from_image = images_to_clients[I]
			for(var/client/C as anything in clients_from_image)
				if(C) //Could have disconnected after message sent, before removing bubble.
					C.images -= I
			qdel(I)

	/*	CHOMPEdit - Not needed if you set your defaults right
	var/ourfreq = null
	if(voice_freq > 0 )
		ourfreq = voice_freq
	*/
	//Log the message to file
	if(message_mode)
		message = "([message_mode == "headset" ? "Common" : capitalize(message_mode)]) [message]" //Adds radio keys used if available
	if(whispering)
		if(do_sound && message)
			playsound(T, pick(voice_sounds_list), 25, TRUE, extrarange = -6, falloff = 1 , is_global = TRUE, frequency = voice_freq, ignore_walls = TRUE, preference = /datum/preference/toggle/whisper_sounds)	//CHOMPEdit - Use say sound prefs

		log_whisper(message, src)
	else
		if(do_sound && message)
			playsound(T, pick(voice_sounds_list), 75, TRUE, falloff = 1 , is_global = TRUE, frequency = voice_freq, ignore_walls = TRUE, preference = /datum/preference/toggle/say_sounds)	//CHOMPEdit - tiny fix
		log_say(message, src)
	return 1

/mob/living/proc/say_signlang(var/message, var/verb="gestures", var/verb_understood="gestures", var/datum/language/language, var/type = 1)
	var/turf/T = get_turf(src)
	//We're in something, gesture to people inside the same thing
	if(loc != T && !istype(loc, /obj/item/holder)) // Partially fixes sign language while being held.
		for(var/mob/M in loc)
			M.hear_signlang(message, verb, verb_understood, language, src, type)

	//We're on a turf, gesture to visible as if we were a normal language
	else
		var/low_range = FALSE
		if(T && type == 2)			// type 2 is audible signlang. yes. sue me.
			//Air is too thin to carry sound at all, contact speech only
			var/datum/gas_mixture/environment = T.return_air()
			var/pressure = environment ? environment.return_pressure() : 0
			if(pressure < SOUND_MINIMUM_PRESSURE)
				low_range = TRUE

		var/list/potentials = get_mobs_and_objs_in_view_fast(T, world.view)
		var/list/mobs = potentials["mobs"]
		for(var/mob/M as anything in mobs)
			if(low_range && !(M in range(1, src)))
				continue
			M.hear_signlang(message, verb, verb_understood, language, src, type)
		var/list/objs = potentials["objs"]
		for(var/obj/O as anything in objs)
			if(low_range && !(O in range(1, src)))
				continue
			O.hear_signlang(message, verb, language, src)
	return 1

/obj/effect/speech_bubble
	var/mob/parent

/mob/proc/GetVoice()
	return name

/mob/proc/speech_bubble_appearance()
	return "normal"
