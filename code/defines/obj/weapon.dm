/obj/item/phone
	name = "red phone"
	desc = "Should anything ever go wrong..."
	icon = 'icons/obj/items.dmi'
	icon_state = "red_phone"
	force = 3.0
	throwforce = 2.0
	throw_speed = 1
	throw_range = 4
	w_class = ITEMSIZE_SMALL
	attack_verb = list("called", "rang")
	hitsound = 'sound/weapons/ring.ogg'
	drop_sound = 'sound/items/drop/device.ogg'
	pickup_sound = 'sound/items/pickup/device.ogg'

/obj/item/rsp
	name = "\improper Rapid-Seed-Producer (RSP)"
	desc = "A device used to rapidly deploy seeds."
	icon = 'icons/obj/items.dmi'
	icon_state = "rcd"
	opacity = 0
	density = FALSE
	anchored = FALSE
	var/stored_matter = 0
	var/mode = 1
	w_class = ITEMSIZE_NORMAL
	drop_sound = 'sound/items/drop/device.ogg'
	pickup_sound = 'sound/items/pickup/device.ogg'

/obj/item/bikehorn
	name = "bike horn"
	desc = "A horn off of a bicycle."
	icon = 'icons/obj/items.dmi'
	icon_state = "bike_horn"
	item_state = "bike_horn"
	throwforce = 3
	w_class = ITEMSIZE_SMALL
	slot_flags = SLOT_HOLSTER
	throw_speed = 3
	throw_range = 15
	attack_verb = list("HONKED")
	var/spam_flag = 0

/obj/item/c_tube
	name = "cardboard tube"
	desc = "A tube... of cardboard."
	icon = 'icons/obj/items.dmi'
	icon_state = "c_tube"
	throwforce = 1
	w_class = ITEMSIZE_SMALL
	throw_speed = 4
	throw_range = 5

/obj/item/disk
	name = "disk"
	icon = 'icons/obj/discs_vr.dmi' //VOREStation Edit
	drop_sound = 'sound/items/drop/disk.ogg'
	pickup_sound =  'sound/items/pickup/disk.ogg'

/obj/item/disk/nuclear
	name = "nuclear authentication disk"
	desc = "Better keep this safe."
	icon_state = "nucleardisk"
	item_state = "card-id"
	w_class = ITEMSIZE_SMALL

/*
/obj/item/game_kit
	name = "Gaming Kit"
	icon = 'icons/obj/items.dmi'
	icon_state = "game_kit"
	var/selected = null
	var/board_stat = null
	var/data = ""
	var/base_url = "http://svn.slurm.us/public/spacestation13/misc/game_kit"
	item_state = "sheet-metal"
	w_class = ITEMSIZE_HUGE
*/

/obj/item/gift
	name = "gift"
	desc = "A wrapped item."
	icon = 'icons/obj/items.dmi'
	icon_state = "gift3"
	var/size = 3.0
	var/obj/item/gift = null
	item_state = "gift"
	w_class = ITEMSIZE_LARGE

/*/obj/item/syndicate_uplink
	name = "station bounced radio"
	desc = "Remain silent about this..."
	icon = 'icons/obj/radio.dmi'
	icon_state = "radio"
	var/temp = null
	var/uses = 10.0
	var/selfdestruct = 0.0
	var/traitor_frequency = 0.0
	var/mob/currentUser = null
	var/obj/item/radio/origradio = null
	flags = ONBELT
	w_class = ITEMSIZE_SMALL
	item_state = "radio"
	throw_speed = 4
	throw_range = 20
	matter = list(MAT_STEEL = 100)
	origin_tech = list(TECH_MAGNET = 2, TECH_ILLEGAL = 3)*/

/obj/item/SWF_uplink
	name = "station-bounced radio"
	desc = "Used to communicate, it appears."
	icon = 'icons/obj/radio.dmi'
	icon_state = "radio"
	var/temp = null
	var/uses = 4.0
	var/selfdestruct = 0.0
	var/traitor_frequency = 0.0
	var/obj/item/radio/origradio = null
	slot_flags = SLOT_BELT
	item_state = "radio"
	throwforce = 5
	w_class = ITEMSIZE_SMALL
	throw_speed = 4
	throw_range = 20
	matter = list(MAT_STEEL = 100)
	origin_tech = list(TECH_MAGNET = 1)
	drop_sound = 'sound/items/drop/device.ogg'
	pickup_sound = 'sound/items/pickup/device.ogg'

/obj/item/staff
	name = "wizards staff"
	desc = "Apparently a staff used by the wizard."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "staff"
	item_icons = list(
			slot_l_hand_str = 'icons/mob/items/lefthand_melee.dmi',
			slot_r_hand_str = 'icons/mob/items/righthand_melee.dmi',
			)
	force = 3.0
	throwforce = 5.0
	throw_speed = 1
	throw_range = 5
	w_class = ITEMSIZE_SMALL
	attack_verb = list("bludgeoned", "whacked", "disciplined")

/obj/item/staff/broom
	name = "broom"
	desc = "Used for sweeping, and flying into the night while cackling. Black cat not included."
	icon = 'icons/obj/wizard.dmi'
	icon_state = "broom"

/obj/item/staff/gentcane
	name = "Gentlemans Cane"
	desc = "An ebony can with an ivory tip."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "cane"

/obj/item/staff/stick
	name = "stick"
	desc = "A great tool to drag someone else's drinks across the bar."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "stick"
	item_state = "cane"
	force = 3.0
	throwforce = 5.0
	throw_speed = 1
	throw_range = 5
	w_class = ITEMSIZE_SMALL

/obj/item/module
	icon = 'icons/obj/module.dmi'
	icon_state = "std_module"
	item_state = "std_mod"
	w_class = ITEMSIZE_SMALL
	var/mtype = 1						// 1=electronic 2=hardware
	drop_sound = 'sound/items/drop/component.ogg'
	pickup_sound = 'sound/items/pickup/component.ogg'

/obj/item/module/card_reader
	name = "card reader module"
	icon_state = "card_mod"
	item_state = "std_mod"
	desc = "An electronic module for reading data and ID cards."

/obj/item/module/power_control
	name = "power control module"
	icon_state = "power_mod"
	item_state = "std_mod"
	desc = "Heavy-duty switching circuits for power control."
	matter = list(MAT_STEEL = 50, MAT_GLASS = 50)

/obj/item/module/id_auth
	name = "\improper ID authentication module"
	icon_state = "id_mod"
	desc = "A module allowing secure authorization of ID cards."

/obj/item/module/cell_power
	name = "power cell regulator module"
	icon_state = "power_mod"
	item_state = "std_mod"
	desc = "A converter and regulator allowing the use of power cells."

/obj/item/module/cell_power
	name = "power cell charger module"
	icon_state = "power_mod"
	item_state = "std_mod"
	desc = "Charging circuits for power cells."

/obj/item/camera_bug
	name = "camera bug"
	icon = 'icons/obj/device.dmi'
	icon_state = "flash"
	w_class = ITEMSIZE_TINY
	item_state = "electronic"
	throw_speed = 4
	throw_range = 20

/obj/item/camera_bug/attack_self(mob/user as mob)
	var/list/cameras = new/list()
	for (var/obj/machinery/camera/C in cameranet.cameras)
		if (C.bugged && C.status)
			cameras.Add(C)
	if (length(cameras) == 0)
		to_chat(user, span_warning("No bugged functioning cameras found."))
		return

	var/list/friendly_cameras = new/list()

	for (var/obj/machinery/camera/C in cameras)
		friendly_cameras.Add(C.c_tag)

	var/target = tgui_input_list(user, "Select the camera to observe", "Select Camera", friendly_cameras)
	if (!target)
		return
	for (var/obj/machinery/camera/C in cameras)
		if (C.c_tag == target)
			target = C
			break
	if (user.stat == 2) return

	user.client.eye = target

/*
/obj/item/cigarpacket
	name = "Pete's Cuban Cigars"
	desc = "The most robust cigars on the planet."
	icon = 'icons/obj/cigarettes.dmi'
	icon_state = "cigarpacket"
	item_state = "cigarpacket"
	w_class = ITEMSIZE_TINY
	throwforce = 2
	var/cigarcount = 6
	flags = ONBELT
	*/

/obj/item/pai_cable
	desc = "A flexible coated cable with a universal jack on one end."
	name = "data cable"
	icon = 'icons/obj/power.dmi'
	icon_state = "wire1"

	var/obj/machinery/machine

/obj/item/pai_cable/Destroy()
		machine = null
		return ..()

///////////////////////////////////////Stock Parts /////////////////////////////////

/obj/item/stock_parts
	name = "stock part"
	desc = "What?"
	gender = PLURAL
	icon = 'icons/obj/stock_parts.dmi'
	w_class = ITEMSIZE_SMALL
	var/rating = 1
	drop_sound = 'sound/items/drop/component.ogg'
	pickup_sound = 'sound/items/pickup/component.ogg'

/obj/item/stock_parts/Initialize(mapload)
	. = ..()
	src.pixel_x = rand(-5.0, 5)
	src.pixel_y = rand(-5.0, 5)

/obj/item/stock_parts/get_rating()
	return rating

//Rank 1

/obj/item/stock_parts/console_screen
	name = "console screen"
	desc = "Used in the construction of computers and other devices with a interactive console."
	icon_state = "screen"
	origin_tech = list(TECH_MATERIAL = 1)
	rating = 5 // these are actually Really Important for some things??
	matter = list(MAT_GLASS = 200)

/obj/item/stock_parts/capacitor
	name = "capacitor"
	desc = "A basic capacitor used in the construction of a variety of devices."
	icon_state = "capacitor"
	origin_tech = list(TECH_POWER = 1)
	matter = list(MAT_STEEL = 50,MAT_GLASS = 50)

	var/charge = 0
	var/max_charge = 1000

/obj/item/stock_parts/capacitor/Initialize(mapload)
	. = ..()
	max_charge *= rating

/obj/item/stock_parts/capacitor/proc/charge(var/amount)
	charge += amount
	if(charge > max_charge)
		charge = max_charge

/obj/item/stock_parts/capacitor/proc/use(var/amount)
	if(charge)
		charge -= amount
		if(charge < 0)
			charge = 0

/obj/item/stock_parts/scanning_module
	name = "scanning module"
	desc = "A compact, high resolution scanning module used in the construction of certain devices."
	icon_state = "scan_module"
	origin_tech = list(TECH_MAGNET = 1)
	matter = list(MAT_STEEL = 50,MAT_GLASS = 20)

/obj/item/stock_parts/manipulator
	name = "micro-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "micro_mani"
	origin_tech = list(TECH_MATERIAL = 1, TECH_DATA = 1)
	matter = list(MAT_STEEL = 30)

/obj/item/stock_parts/micro_laser
	name = "micro-laser"
	desc = "A tiny laser used in certain devices."
	icon_state = "micro_laser"
	origin_tech = list(TECH_MAGNET = 1)
	matter = list(MAT_STEEL = 10,MAT_GLASS = 20)

/obj/item/stock_parts/matter_bin
	name = "matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon_state = "matter_bin"
	origin_tech = list(TECH_MATERIAL = 1)
	matter = list(MAT_STEEL = 80)

//Rank 2

/obj/item/stock_parts/capacitor/adv
	name = "advanced capacitor"
	desc = "An advanced capacitor used in the construction of a variety of devices."
	icon_state = "capacitor_adv"
	origin_tech = list(TECH_POWER = 3)
	rating = 2
	matter = list(MAT_STEEL = 50,MAT_GLASS = 50)

/obj/item/stock_parts/scanning_module/adv
	name = "advanced scanning module"
	desc = "A compact, high resolution scanning module used in the construction of certain devices."
	icon_state = "scan_module_adv"
	origin_tech = list(TECH_MAGNET = 3)
	rating = 2
	matter = list(MAT_STEEL = 50,MAT_GLASS = 20)

/obj/item/stock_parts/manipulator/nano
	name = "nano-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "nano_mani"
	origin_tech = list(TECH_MATERIAL = 3, TECH_DATA = 2)
	rating = 2
	matter = list(MAT_STEEL = 30)

/obj/item/stock_parts/micro_laser/high
	name = "high-power micro-laser"
	desc = "A tiny laser used in certain devices."
	icon_state = "high_micro_laser"
	origin_tech = list(TECH_MAGNET = 3)
	rating = 2
	matter = list(MAT_STEEL = 10,MAT_GLASS = 20)

/obj/item/stock_parts/matter_bin/adv
	name = "advanced matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon_state = "advanced_matter_bin"
	origin_tech = list(TECH_MATERIAL = 3)
	rating = 2
	matter = list(MAT_STEEL = 80)

//Rating 3

/obj/item/stock_parts/capacitor/super
	name = "super capacitor"
	desc = "A super-high capacity capacitor used in the construction of a variety of devices."
	icon_state = "capacitor_super"
	origin_tech = list(TECH_POWER = 5, TECH_MATERIAL = 4)
	rating = 3
	matter = list(MAT_STEEL = 50,MAT_GLASS = 50)

/obj/item/stock_parts/scanning_module/phasic
	name = "phasic scanning module"
	desc = "A compact, high resolution phasic scanning module used in the construction of certain devices."
	icon_state = "scan_module_phasic"
	origin_tech = list(TECH_MAGNET = 5)
	rating = 3
	matter = list(MAT_STEEL = 50,MAT_GLASS = 20)

/obj/item/stock_parts/manipulator/pico
	name = "pico-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "pico_mani"
	origin_tech = list(TECH_MATERIAL = 5, TECH_DATA = 2)
	rating = 3
	matter = list(MAT_STEEL = 30)

/obj/item/stock_parts/micro_laser/ultra
	name = "ultra-high-power micro-laser"
	icon_state = "ultra_high_micro_laser"
	desc = "A tiny laser used in certain devices."
	origin_tech = list(TECH_MAGNET = 5)
	rating = 3
	matter = list(MAT_STEEL = 10,MAT_GLASS = 20)

/obj/item/stock_parts/matter_bin/super
	name = "super matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon_state = "super_matter_bin"
	origin_tech = list(TECH_MATERIAL = 5)
	rating = 3
	matter = list(MAT_STEEL = 80)

// Rating 4 - Anomaly

/obj/item/stock_parts/capacitor/hyper
	name = "hyper capacitor"
	desc = "A hyper-capacity capacitor used in the construction of a variety of devices."
	icon_state = "capacitor_hyper"
	origin_tech = list(TECH_POWER = 6, TECH_MATERIAL = 5, TECH_BLUESPACE = 1, TECH_ARCANE = 1)
	rating = 4
	matter = list(MAT_STEEL = 80, MAT_GLASS = 40)

/obj/item/stock_parts/scanning_module/hyper
	name = "quantum scanning module"
	desc = "A compact, near-perfect resolution quantum scanning module used in the construction of certain devices."
	icon_state = "scan_module_hyper"
	origin_tech = list(TECH_MAGNET = 6, TECH_BLUESPACE = 1, TECH_ARCANE = 1)
	rating = 4
	matter = list(MAT_STEEL = 100,MAT_GLASS = 40)

/obj/item/stock_parts/manipulator/hyper
	name = "planck-manipulator"
	desc = "A miniscule manipulator used in the construction of certain devices."
	icon_state = "hyper_mani"
	origin_tech = list(TECH_MATERIAL = 6, TECH_DATA = 3, TECH_ARCANE = 1)
	rating = 4
	matter = list(MAT_STEEL = 30)

/obj/item/stock_parts/micro_laser/hyper
	name = "hyper-power micro-laser"
	icon_state = "hyper_micro_laser"
	desc = "A tiny laser used in certain devices."
	origin_tech = list(TECH_MAGNET = 6, TECH_ARCANE = 1)
	rating = 4
	matter = list(MAT_STEEL = 30, MAT_GLASS = 40)

/obj/item/stock_parts/matter_bin/hyper
	name = "hyper matter bin"
	desc = "A container for holding compressed matter awaiting re-construction."
	icon_state = "hyper_matter_bin"
	origin_tech = list(TECH_MATERIAL = 6, TECH_ARCANE = 1)
	rating = 4
	matter = list(MAT_STEEL = 100)

// Rating 5 - Precursor

/obj/item/stock_parts/capacitor/omni
	name = "omni-capacitor"
	desc = "A capacitor of immense capacity used in the construction of a variety of devices."
	icon_state = "capacitor_omni"
	origin_tech = list(TECH_POWER = 7, TECH_MATERIAL = 6, TECH_BLUESPACE = 3, TECH_PRECURSOR  = 1)
	rating = 5
	matter = list(MAT_STEEL = 80, MAT_GLASS = 40)

/obj/item/stock_parts/scanning_module/omni
	name = "omni-scanning module"
	desc = "A compact, perfect resolution temporospatial scanning module used in the construction of certain devices."
	icon_state = "scan_module_omni"
	origin_tech = list(TECH_MAGNET = 7, TECH_BLUESPACE = 3, TECH_PRECURSOR = 1)
	rating = 5
	matter = list(MAT_STEEL = 100,MAT_GLASS = 40)

/obj/item/stock_parts/manipulator/omni
	name = "omni-manipulator"
	desc = "A strange, infinitesimal manipulator used in the construction of certain devices."
	icon_state = "omni_mani"
	origin_tech = list(TECH_MATERIAL = 7, TECH_DATA = 4, TECH_PRECURSOR  = 1)
	rating = 5
	matter = list(MAT_STEEL = 30)

/obj/item/stock_parts/micro_laser/omni
	name = "omni-power micro-laser"
	icon_state = "omni_micro_laser"
	desc = "A strange laser used in certain devices."
	origin_tech = list(TECH_MAGNET = 7, TECH_PRECURSOR  = 1)
	rating = 5
	matter = list(MAT_STEEL = 30, MAT_GLASS = 40)

/obj/item/stock_parts/matter_bin/omni
	name = "omni-matter bin"
	desc = "A strange container for holding compressed matter awaiting re-construction."
	icon_state = "omni_matter_bin"
	origin_tech = list(TECH_MATERIAL = 7, TECH_PRECURSOR  = 1)
	rating = 5
	matter = list(MAT_STEEL = 100)


// Subspace stock parts

/obj/item/stock_parts/subspace/ansible
	name = "subspace ansible"
	icon_state = "subspace_ansible"
	desc = "A compact module capable of sensing extradimensional activity."
	origin_tech = list(TECH_DATA = 3, TECH_MAGNET = 5 ,TECH_MATERIAL = 4, TECH_BLUESPACE = 2)
	matter = list(MAT_STEEL = 30,MAT_GLASS = 10)

/obj/item/stock_parts/subspace/sub_filter
	name = "hyperwave filter"
	icon_state = "hyperwave_filter"
	desc = "A tiny device capable of filtering and converting super-intense radiowaves."
	origin_tech = list(TECH_DATA = 4, TECH_MAGNET = 2)
	matter = list(MAT_STEEL = 30,MAT_GLASS = 10)

/obj/item/stock_parts/subspace/amplifier
	name = "subspace amplifier"
	icon_state = "subspace_amplifier"
	desc = "A compact micro-machine capable of amplifying weak subspace transmissions."
	origin_tech = list(TECH_DATA = 3, TECH_MAGNET = 4, TECH_MATERIAL = 4, TECH_BLUESPACE = 2)
	matter = list(MAT_STEEL = 30,MAT_GLASS = 10)

/obj/item/stock_parts/subspace/treatment
	name = "subspace treatment disk"
	icon_state = "treatment_disk"
	desc = "A compact micro-machine capable of stretching out hyper-compressed radio waves."
	origin_tech = list(TECH_DATA = 3, TECH_MAGNET = 2, TECH_MATERIAL = 5, TECH_BLUESPACE = 2)
	matter = list(MAT_STEEL = 30,MAT_GLASS = 10)

/obj/item/stock_parts/subspace/analyzer
	name = "subspace wavelength analyzer"
	icon_state = "wavelength_analyzer"
	desc = "A sophisticated analyzer capable of analyzing cryptic subspace wavelengths."
	origin_tech = list(TECH_DATA = 3, TECH_MAGNET = 4, TECH_MATERIAL = 4, TECH_BLUESPACE = 2)
	matter = list(MAT_STEEL = 30,MAT_GLASS = 10)

/obj/item/stock_parts/subspace/crystal
	name = "ansible crystal"
	icon_state = "ansible_crystal"
	desc = "A crystal made from pure glass used to transmit laser databursts to subspace."
	origin_tech = list(TECH_MAGNET = 4, TECH_MATERIAL = 4, TECH_BLUESPACE = 2)
	matter = list(MAT_GLASS = 50)

/obj/item/stock_parts/subspace/transmitter
	name = "subspace transmitter"
	icon_state = "subspace_transmitter"
	desc = "A large piece of equipment used to open a window into the subspace dimension."
	origin_tech = list(TECH_MAGNET = 5, TECH_MATERIAL = 5, TECH_BLUESPACE = 3)
	matter = list(MAT_STEEL = 50)

/obj/item/ectoplasm
	name = "ectoplasm"
	desc = "Spooky!"
	gender = PLURAL
	icon = 'icons/obj/wizard.dmi'
	icon_state = "ectoplasm2"

/obj/item/research
	name = "research debugging device"
	desc = "Instant research tool. For testing purposes only."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "smes_coil"
	origin_tech = list(TECH_MATERIAL = 19, TECH_ENGINEERING = 19, TECH_PHORON = 19, TECH_POWER = 19, TECH_BLUESPACE = 19, TECH_BIO = 19, TECH_COMBAT = 19, TECH_MAGNET = 19, TECH_DATA = 19, TECH_ILLEGAL = 19, TECH_ARCANE = 19, TECH_PRECURSOR = 19)

// Additional construction stock parts

/obj/item/stock_parts/gear
	name = "gear"
	desc = "A gear used for construction."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "gear"
	origin_tech = list(TECH_ENGINEERING = 1)
	matter = list(MAT_STEEL = 50)

/obj/item/stock_parts/motor
	name = "motor"
	desc = "A motor used for construction."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "motor"
	origin_tech = list(TECH_ENGINEERING = 1)
	matter = list(MAT_STEEL = 60, MAT_GLASS = 10)

/obj/item/stock_parts/spring
	name = "spring"
	desc = "A spring used for construction."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "spring"
	origin_tech = list(TECH_ENGINEERING = 1)
	matter = list(MAT_STEEL = 40)

/obj/effect/spawner/parts
	name = "nondescript parts bundle that shouldn't exist"
	desc = "this qdels itself lol! if you're reading this you're codediving or Someone fucked up"
	var/list/items

/obj/effect/spawner/parts/Initialize(mapload)
	..()
	if(items && items.len)
		var/turf/T = get_turf(src)
		for(var/path in items)
			for(var/i in 1 to 5)
				new path(T)
	return INITIALIZE_HINT_QDEL

/obj/effect/spawner/parts/t1
	name = "basic parts bundle"
	desc = "5 of each T1 part, no more and no less."
	items = list(
		/obj/item/stock_parts/matter_bin,
		/obj/item/stock_parts/manipulator,
		/obj/item/stock_parts/capacitor,
		/obj/item/stock_parts/scanning_module,
		/obj/item/stock_parts/micro_laser
	)

/obj/effect/spawner/parts/t2
	name = "advanced parts bundle"
	desc = "5 of each T2 part, no more and no less."
	items = list(
		/obj/item/stock_parts/matter_bin/adv,
		/obj/item/stock_parts/manipulator/nano,
		/obj/item/stock_parts/capacitor/adv,
		/obj/item/stock_parts/scanning_module/adv,
		/obj/item/stock_parts/micro_laser/high
	)

/obj/effect/spawner/parts/t3
	name = "super parts bundle"
	desc = "5 of each T3 part, no more and no less."
	items = list(
		/obj/item/stock_parts/matter_bin/super,
		/obj/item/stock_parts/manipulator/pico,
		/obj/item/stock_parts/capacitor/super,
		/obj/item/stock_parts/scanning_module/phasic,
		/obj/item/stock_parts/micro_laser/ultra
	)

/obj/effect/spawner/parts/t4
	name = "hyper parts bundle"
	desc = "5 of each T4 part, no more and no less."
	items = list(
		/obj/item/stock_parts/matter_bin/hyper,
		/obj/item/stock_parts/manipulator/hyper,
		/obj/item/stock_parts/capacitor/hyper,
		/obj/item/stock_parts/scanning_module/hyper,
		/obj/item/stock_parts/micro_laser/hyper
	)

/obj/effect/spawner/parts/t5
	name = "omni parts bundle"
	desc = "5 of each T5 part, no more and no less."
	items = list(
		/obj/item/stock_parts/matter_bin/omni,
		/obj/item/stock_parts/manipulator/omni,
		/obj/item/stock_parts/capacitor/omni,
		/obj/item/stock_parts/scanning_module/omni,
		/obj/item/stock_parts/micro_laser/omni
	)
