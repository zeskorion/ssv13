/obj/item/fuel
	name = "Magnetic Storage Ring"
	desc = "A magnetic storage ring."
	icon = 'icons/obj/items.dmi'
	icon_state = "rcdammo"
	opacity = 0
	density = FALSE
	anchored = FALSE
	var/fuel = 0
	var/s_time = 1.0
	var/content = null

/obj/item/fuel/H
	name = "Hydrogen storage ring"
	content = "Hydrogen"
	fuel = 1e-12		//pico-kilogram

/obj/item/fuel/antiH
	name = "Anti-Hydrogen storage ring"
	content = "Anti-Hydrogen"
	fuel = 1e-12		//pico-kilogram

/obj/item/fuel/attackby(obj/item/fuel/F, mob/user)
	..()
	if(istype(src, /obj/item/fuel/antiH))
		if(istype(F, /obj/item/fuel/antiH))
			src.fuel += F.fuel
			F.fuel = 0
			to_chat(user, "You have added the anti-Hydrogen to the storage ring, it now contains [src.fuel]kg")
		if(istype(F, /obj/item/fuel/H))
			src.fuel += F.fuel
			qdel(F)
			src:annihilation(src.fuel)
	if(istype(src, /obj/item/fuel/H))
		if(istype(F, /obj/item/fuel/H))
			src.fuel += F.fuel
			F.fuel = 0
			to_chat(user, "You have added the Hydrogen to the storage ring, it now contains [src.fuel]kg")
		if(istype(F, /obj/item/fuel/antiH))
			src.fuel += F.fuel
			qdel(src)
			F:annihilation(F.fuel)

/obj/item/fuel/antiH/proc/annihilation(var/mass)

	var/strength = convert2energy(mass)

	if (strength < 773.0)
		var/turf/T = get_turf(src)

		if (strength > (450+T0C))
			explosion(T, 0, 1, 2, 4)
		else
			if (strength > (300+T0C))
				explosion(T, 0, 0, 2, 3)

		qdel(src)
		return

	var/turf/ground_zero = get_turf(loc)

	var/ground_zero_range = round(strength / 387)
	explosion(ground_zero, ground_zero_range, ground_zero_range*2, ground_zero_range*3, ground_zero_range*4)

	//SN src = null
	qdel(src)
	return


/obj/item/fuel/examine(mob/user)
	. = ..()
	if(Adjacent(user))
		. += "It contains [fuel]kg of [content ? content : "nothing"]."

/obj/item/fuel/proc/injest(mob/M as mob)
	switch(content)
		if("Anti-Hydrogen")
			M.gib() //Yikes!
		if("Hydrogen")
			to_chat(M, span_blue("You feel very light, as if you might just float away..."))
	qdel(src)
	return

/obj/item/fuel/attack(mob/M as mob, mob/user as mob)
	if (user != M)
		var/obj/effect/equip_e/human/O = new /obj/effect/equip_e/human(  )
		O.source = user
		O.target = M
		O.item = src
		O.s_loc = user.loc
		O.t_loc = M.loc
		O.place = REAGENT_ID_FUEL
		M.requests += O
		spawn( 0 )
			O.process()
			return
	else
		for(var/mob/O in viewers(M, null))
			O.show_message(span_red(text("[M] ate the [content ? content : "empty canister"]!")), 1)
		src.injest(M)
