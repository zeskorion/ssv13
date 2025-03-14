//template for quickly making more, if it's ever needed
/*

/datum/gear/uniform/BLANK_selector
	display_name = "DEPT - BLANK's Uniforms"
	description = "Select from a range of outfits available to all BLANK personnel."
	allowed_roles = list("")
	show_roles = FALSE
	path =
	slot = slot_w_uniform
	sort_category = "Uniforms"
	cost = 2

/datum/gear/uniform/BLANK_selector/New()
	..()
	var/list/selector_uniforms = list(
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))
*/

//Command/Specific

/datum/gear/uniform/site_manager_selector
	display_name = "Command - " + JOB_SITE_MANAGER + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_SITE_MANAGER + "s, and Talon Captains."
	allowed_roles = list(JOB_SITE_MANAGER,JOB_TALON_CAPTAIN)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_captain
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/site_manager_selector/New()
	..()
	var/list/selector_uniforms = list(
		"uniform w/ dress"=/obj/item/clothing/under/dress/dress_cap,
		"GE uniform"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent,
		"voidsuit underlayer"=/obj/item/clothing/under/undersuit/command,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_captain,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_captain_skirt,
		"TG&C utility suit"=/obj/item/clothing/under/rank/neo_commandutil,
		"TG&C black suit"=/obj/item/clothing/under/rank/neo_captain_blacksuit,
		"TG&C parade uniform"=/obj/item/clothing/under/rank/neo_captain_parade,
		"TG&C jumpkilt"=/obj/item/clothing/under/rank/neo_captain_kilt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/command,
		"TG&C black command gorka"=/obj/item/clothing/under/rank/neo_gorka/black_command
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/head_of_personnel_selector
	display_name = "Command - " + JOB_HEAD_OF_PERSONNEL + "'s Uniforms"
	description = "Select from a range of outfits available to all Heads of Personnel."
	allowed_roles = list(JOB_HEAD_OF_PERSONNEL)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_hop
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/head_of_personnel_selector/New()
	..()
	var/list/selector_uniforms = list(
		"uniform w/ dress"=/obj/item/clothing/under/dress/dress_hop,
		"HR director"=/obj/item/clothing/under/dress/dress_hr,
		"GE uniform"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent,
		"voidsuit underlayer"=/obj/item/clothing/under/undersuit/command,
		"TG&C command utility"=/obj/item/clothing/under/rank/neo_commandutil,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_hop,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_hop_skirt,
		"TG&C parade uniform"=/obj/item/clothing/under/rank/neo_hop_parade_masc,
		"TG&C parade dress"=/obj/item/clothing/under/rank/neo_hop_parade_fem,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_hop_turtle,
		"TG&C turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_hop_turtle_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/command,
		"TG&C black command gorka"=/obj/item/clothing/under/rank/neo_gorka/black_command
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/pilot_uniform_selector
	display_name = "Civilian - " + JOB_PILOT+ "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_PILOT + "s (including those on the Talon)."
	allowed_roles = list(JOB_PILOT,JOB_TALON_PILOT)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_pilot
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/pilot_uniform_selector/New()
	..()
	var/list/selector_uniforms = list(
		"standard pilot's uniform"=/obj/item/clothing/under/rank/pilot1/no_webbing,
		"navy pilot's uniform"=/obj/item/clothing/under/rank/pilot2,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_pilot,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_pilot_skirt,
		"Major Bill's flightsuit"=/obj/item/clothing/under/mbill_flight,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/pilot
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/janitor_uniform_selector
	display_name = "Civilian - " + JOB_JANITOR + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_JANITOR + "ial personnel."
	allowed_roles = list(JOB_JANITOR)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_janitor
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/janitor_uniform_selector/New()
	..()
	var/list/selector_uniforms = list(
		"TG&C janitor's uniform"=/obj/item/clothing/under/rank/neo_janitor,
		"TG&C janitor's uniform w/ skirt"=/obj/item/clothing/under/rank/neo_janitor_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/janitor
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/civvie_uniform_selector
	display_name = "Civilian - Basic Uniforms"
	description = "Select from a range of uniforms available to all personnel. Includes miscellaneous corporate contractor uniforms."
	path = /obj/item/clothing/under/utility/grey
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/civvie_uniform_selector/New()
	..()
	var/list/selector_uniforms = list(
		"GE uniform"=/obj/item/clothing/under/rank/khi/civ, //CHOMPEdit, KHI becomes GE
		"TG&C plain turtleneck"=/obj/item/clothing/under/rank/neo_suspect_turtleneck,
		"TG&C plain turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_suspect_turtleskirt,
		"TG&C blue turtleneck"=/obj/item/clothing/under/rank/neo_suspect_turtleneck_blue,
		"TG&C blue turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_suspect_turtleskirt_blue,
		"TG&C red turtleneck"=/obj/item/clothing/under/rank/neo_suspicious_turtleneck,
		"TG&C red turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_suspicious_turtleskirt,
		"TG&C comfy overalls"=/obj/item/clothing/under/rank/neo_suspect_overalls,
		"TG&C comfy overalls w/ skirt"=/obj/item/clothing/under/rank/neo_suspect_overalls_skirt,
		"TG&C contractor's suit"=/obj/item/clothing/under/rank/neo_contract,
		"Corporate, Major Bill's uniform"=/obj/item/clothing/under/mbill,
		"Corporate, Aether Atmospherics uniform"=/obj/item/clothing/under/corp/aether,
		"Corporate, Focal Point Energistics uniform"=/obj/item/clothing/under/corp/focal,
		"Corporate, Grayson Manufactories uniform"=/obj/item/clothing/under/corp/grayson,
		"Corporate, Grayson Manufactories jumpsuit"=/obj/item/clothing/under/corp/grayson_jump,
		"Corporate, Kaleidoscope"=/obj/item/clothing/under/corp/kaleidoscope,
		"Corporate, Ward-Takahashi uniform"=/obj/item/clothing/under/corp/wardt,
		"Corporate, Hephaestus Arms uniform"=/obj/item/clothing/under/corp/hephaestus,
		"Corporate, Centauri Provisions uniform"=/obj/item/clothing/under/corp/centauri,
		"Corporate, Morpheus Cyberkinetics uniform"=/obj/item/clothing/under/corp/morpheus,
		"Corporate, Wulf Aeronautics uniform"=/obj/item/clothing/under/corp/wulf,
		"Corporate, Zeng-Hu uniform"=/obj/item/clothing/under/corp/zenghu,
		"Corporate, Xion Manufacturing uniform"=/obj/item/clothing/under/corp/xion,
		"Galactic Survey utility uniform"=/obj/item/clothing/under/gsa,
		"Galactic Survey reinforced uniform"=/obj/item/clothing/under/gsa_work,
		"Utility uniform, black"=/obj/item/clothing/under/utility,
		"Utility uniform, navy"=/obj/item/clothing/under/utility/blue,
		"Utility uniform, grey"=/obj/item/clothing/under/utility/grey,
		"Utility uniform, tan"=/obj/item/clothing/under/utility/tan,
		"Utility uniform, green"=/obj/item/clothing/under/utility/green,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka,
		"TG&C gorka suit (service)"=/obj/item/clothing/under/rank/neo_gorka/service,
		"TG&C gorka suit (civilian)"=/obj/item/clothing/under/rank/neo_gorka/civilian
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/undersuit
	display_name = "Civilian - Void Undersuits"
	description = "Select from a range of void undersuits. Each is breathable, sleek, and has standard induction ports. Security, Engineering, and Command variants can be found under the standard uniform selectors for those departments."
	path = /obj/item/clothing/under/undersuit/
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/undersuit/New()
	..()
	var/list/suits = list()
	var/list/blacklisted_types = list(/obj/item/clothing/under/undersuit/sec,
									  /obj/item/clothing/under/undersuit/sec/hos,
									  /obj/item/clothing/under/undersuit/hazard,
									  /obj/item/clothing/under/undersuit/command,
									  /obj/item/clothing/under/undersuit/centcom)
	for(var/obj/item/clothing/under/undersuit/undersuit_type as anything in typesof(/obj/item/clothing/under/undersuit))
		if(undersuit_type in blacklisted_types)
			continue
		suits[initial(undersuit_type.name)] = undersuit_type
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(suits))

//Security

/datum/gear/uniform/security_selector
	display_name = "Security - Basic Uniforms"
	description = "Select from a range of outfits available to all Security personnel."
	allowed_roles = list(JOB_HEAD_OF_SECURITY, JOB_WARDEN, JOB_DETECTIVE, JOB_SECURITY_OFFICER,JOB_TALON_GUARD)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/security/corp
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/security_selector/New()
	..()
	var/list/selector_uniforms = list(
		"undersuit, modernized"=/obj/item/clothing/under/rank/security/modern,
		"GE uniform"=/obj/item/clothing/under/rank/khi/sec, //CHOMPEdit, KHI becomes GE
		"voidsuit underlayer"=/obj/item/clothing/under/undersuit/sec,
		"skirt"=/obj/item/clothing/under/rank/security/skirt,
		"turtleneck"=/obj/item/clothing/under/rank/security/turtleneck,
		"corporate"=/obj/item/clothing/under/rank/security/corp,
		"formal, navy"=/obj/item/clothing/under/rank/security/navyblue,
		"formal, tan"=/obj/item/clothing/under/rank/security/tan,
		"Proxima Centauri Risk Control"=/obj/item/clothing/under/corp/pcrc,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_sec_red,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_sec_red_skirt,
		"TG&C blue jumpsuit"=/obj/item/clothing/under/rank/neo_sec_blue,
		"TG&C white"=/obj/item/clothing/under/rank/neo_sec_suit,
		"TG&C blue"=/obj/item/clothing/under/rank/neo_sec_suit_blue,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_sec_turtle_red,
		"TG&C turtleneck & skirt"=/obj/item/clothing/under/rank/neo_sec_turtle_red_skirt,
		"TG&C blue turtleneck"=/obj/item/clothing/under/rank/neo_sec_turtle_blue,
		"TG&C blue turtleneck & skirt"=/obj/item/clothing/under/rank/neo_sec_turtle_blue_skirt,
		"corrections officer"=/obj/item/clothing/under/rank/neo_corrections,
		"corrections officer w/ skirt"=/obj/item/clothing/under/rank/neo_corrections_skirt,
		"runner's turtleneck"=/obj/item/clothing/under/rank/neo_runner,
		"ST: Original Series Ops"=/obj/item/clothing/under/rank/trek/sec, //CHOMPedit start: we splitterk engsec into eng and sec
		"ST: Next Generation Ops"=/obj/item/clothing/under/rank/trek/sec/next,
		"ST: Voyager Ops"=/obj/item/clothing/under/rank/trek/sec/voy,
		"ST: DS9 Ops"=/obj/item/clothing/under/rank/trek/sec/ds9,
		"ST: Enterprise Ops"=/obj/item/clothing/under/rank/trek/sec/ent, //CHOMPedit end
		"TG&C bodyguard's suit"=/obj/item/clothing/under/rank/bodyguard_suit,
		"TG&C bodyguard's skirt"=/obj/item/clothing/under/rank/bodyguard_skirt,
		"TG&C bodyguard's turtleneck"=/obj/item/clothing/under/rank/bodyguard_turtleneck,
		"TG&C bodyguard's turtleneck w/ skirt"=/obj/item/clothing/under/rank/bodyguard_turtleskirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/sec,
		"ACE security undersuit"=/obj/item/clothing/under/rank/security/aces
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/security_warden_selector
	display_name = "Security - "+ JOB_WARDEN + "'s Uniforms"
	description = "Select from a range of outfits available to Wardens."
	allowed_roles = list(JOB_HEAD_OF_SECURITY,JOB_WARDEN)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/warden/corp
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/security_warden_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/warden/skirt,
		"corporate"=/obj/item/clothing/under/rank/warden/corp,
		"formal, navy"=/obj/item/clothing/under/rank/warden/navyblue,
		"formal, tan"=/obj/item/clothing/under/rank/warden/navyblue,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_warden_red,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_warden_red_skirt,
		"TG&C blue jumpsuit"=/obj/item/clothing/under/rank/neo_warden_blue
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/security_detective_selector
	display_name = "Security - " + JOB_DETECTIVE + "'s Uniforms"
	description = "Select from a range of outfits available to all Detectives."
	allowed_roles = list(JOB_HEAD_OF_SECURITY,JOB_DETECTIVE)
	show_roles = FALSE
	path = /obj/item/clothing/under/det/corporate
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/security_detective_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/det/skirt,
		"corporate"=/obj/item/clothing/under/det/corporate
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/security_head_selector
	display_name = "Security - Head's Uniforms"
	description = "Select from a range of outfits available to all Heads of Security."
	allowed_roles = list(JOB_HEAD_OF_SECURITY)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/head_of_security/corp
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/security_head_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/head_of_security/skirt,
		"corporate"=/obj/item/clothing/under/rank/head_of_security/corp,
		"formal, navy"=/obj/item/clothing/under/rank/head_of_security/navyblue,
		"formal, tan"=/obj/item/clothing/under/rank/head_of_security/tan,
		"voidsuit underlayer"=/obj/item/clothing/under/undersuit/sec/hos,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_hos_red,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_hos_red_skirt,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_hos_blackred,
		"TG&C turtleneck & skirt"=/obj/item/clothing/under/rank/neo_hos_blackred_skirt,
		"TG&C parade uniform"=/obj/item/clothing/under/rank/neo_hos_parade,
		"TG&C parade uniform, feminine"=/obj/item/clothing/under/rank/neo_hos_parade_fem,
		"TG&C blue"=/obj/item/clothing/under/rank/neo_hos_blue,
		"TG&C blue turtleneck"=/obj/item/clothing/under/rank/neo_hos_blackblue,
		"TG&C blue turtleneck & skirt"=/obj/item/clothing/under/rank/neo_hos_blackblue_skirt,
		"TG&C blue parade uniform"=/obj/item/clothing/under/rank/neo_hos_parade_blue,
		"TG&C blue parade uniform, feminine"=/obj/item/clothing/under/rank/neo_hos_parade_blue_fem,
		"GE uniform, command"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/hos
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

//Cargo

/datum/gear/uniform/quartermaster_selector
	display_name = "Cargo - " + JOB_QUARTERMASTER + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_QUARTERMASTER + "s."
	allowed_roles = list(JOB_QUARTERMASTER)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/cargo/jeans
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/quartermaster_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/cargo/skirt,
		"jeans"=/obj/item/clothing/under/rank/cargo/jeans,
		"jeans, feminine cut"=/obj/item/clothing/under/rank/cargo/jeans/female,
		"GE uniform, command"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_qm,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_qm_skirt,
		"TG&C casualwear"=/obj/item/clothing/under/rank/neo_qm_jacket,
		"TG&C button-up"=/obj/item/clothing/under/rank/neo_qm_white,
		"TG&C button-up w/ skirt"=/obj/item/clothing/under/rank/neo_qm_white_skirt,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_qm_turtle,
		"TG&C turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_qm_turtle_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/qm,
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/cargo_general_selector
	display_name = "Cargo - Basic Uniforms"
	description = "Select from a range of outfits available to all Cargo personnel."
	allowed_roles = list(JOB_CARGO_TECHNICIAN,JOB_SHAFT_MINER,JOB_QUARTERMASTER)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/cargotech/jeans
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/cargo_general_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/cargotech/skirt,
		"jeans"=/obj/item/clothing/under/rank/cargotech/jeans,
		"jeans, feminine cut"=/obj/item/clothing/under/rank/cargotech/jeans/female,
		"GE uniform"=/obj/item/clothing/under/rank/khi/crg, //CHOMPEdit, KHI becomes GE
		"TG&C shorts"=/obj/item/clothing/under/rank/neo_cargo_shorts,
		"TG&C skirt"=/obj/item/clothing/under/rank/neo_cargo_skirt,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_cargo,
		"TG&C utility uniform"=/obj/item/clothing/under/rank/neo_util_cargo,
		"TG&C dark"=/obj/item/clothing/under/rank/neo_cargo_dark,
		"TG&C casual"=/obj/item/clothing/under/rank/neo_cargo_casual,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_cargo_turtle,
		"TG&C turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_cargo_turtle_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/cargo,
		"customs officer"=/obj/item/clothing/under/rank/neo_cargo_customs
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/cargo_miner_selector
	display_name = "Cargo - Miner's Uniforms"
	description = "Select from a range of outfits available to all Mining personnel."
	allowed_roles = list(JOB_SHAFT_MINER,JOB_QUARTERMASTER,JOB_TALON_MINER)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_miner
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/cargo_miner_selector/New()
	..()
	var/list/selector_uniforms = list(
		"TG&C miner's uniform"=/obj/item/clothing/under/rank/neo_miner,
		"TG&C hunter's uniform"=/obj/item/clothing/under/rank/neo_miner_fauna
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

//Engineering

/datum/gear/uniform/engineering_chief_selector
	display_name = "Engineering - " + JOB_CHIEF_ENGINEER + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_CHIEF_ENGINEER + "s."
	allowed_roles = list(JOB_CHIEF_ENGINEER)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_chiefengi
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/engineering_chief_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/chief_engineer/skirt,
		"GE uniform, command"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_chiefengi,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_chiefengi_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/ce
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/engineer_selector
	display_name = "Engineering - Basic Uniforms"
	description = "Select from a range of outfits available to all Engineering personnel."
	allowed_roles = list(JOB_CHIEF_ENGINEER,JOB_ENGINEER,JOB_ATMOSPHERIC_TECHNICIAN,JOB_TALON_ENGINEER)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_engi
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/engineer_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/engineer/skirt,
		"turtleneck"=/obj/item/clothing/under/rank/engineer/turtleneck,
		"GE uniform"=/obj/item/clothing/under/rank/khi/eng, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Ops"=/obj/item/clothing/under/rank/trek/eng, //CHOMPedit start: we split trek engsec into eng and sec
		"ST: Next Generation Ops"=/obj/item/clothing/under/rank/trek/eng/next,
		"ST: Voyager Ops"=/obj/item/clothing/under/rank/trek/eng/voy,
		"ST: DS9 Ops"=/obj/item/clothing/under/rank/trek/eng/ds9,
		"ST: Enterprise Ops"=/obj/item/clothing/under/rank/trek/eng/ent, //CHOMPedit end
		"voidsuit underlayer"=/obj/item/clothing/under/undersuit/hazard,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_engi,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_engi_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/engi,
		"hazard jumpsuit"=/obj/item/clothing/under/hazard
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/engi_atmos_selector
	display_name = "Engineering - Atmos Tech's Uniforms"
	description = "Select from a range of outfits available to all Atmospherics Technicians."
	allowed_roles = list(JOB_CHIEF_ENGINEER,JOB_ATMOSPHERIC_TECHNICIAN)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/atmospheric_technician/skirt
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/engi_atmos_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/atmospheric_technician/skirt,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_atmos,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_atmos_skirt
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

//Medical

/datum/gear/uniform/medical_selector
	display_name = "Medical - Basic Uniforms"
	description = "Select from a range of outfits available to all Medical personnel."
	allowed_roles = list(JOB_CHIEF_MEDICAL_OFFICER,JOB_MEDICAL_DOCTOR,JOB_CHEMIST,JOB_PSYCHIATRIST,JOB_PARAMEDIC,JOB_TALON_DOCTOR)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_med
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/medical_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/medical/skirt,
		"virologist skirt"=/obj/item/clothing/under/rank/virologist/skirt,
		"turtleneck"=/obj/item/clothing/under/rank/medical/turtleneck,
		"vey-medical jumpsuit"=/obj/item/clothing/under/corp/veymed,
		"GE uniform"=/obj/item/clothing/under/rank/khi/med, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Med-Sci"=/obj/item/clothing/under/rank/trek/medsci,
		"ST: Next Generation Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/next,
		"ST: Voyager Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/voy,
		"ST: DS9 Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/ds9,
		"ST: Enterprise Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/ent,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_med,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_med_skirt,
		"TG&C virology jumpsuit"=/obj/item/clothing/under/rank/neo_viro,
		"TG&C virology jumpskirt"=/obj/item/clothing/under/rank/neo_viro_skirt,
		"TG&C dark jumpsuit"=/obj/item/clothing/under/rank/neo_med_dark,
		"TG&C dark jumpskirt"=/obj/item/clothing/under/rank/neo_med_dark_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/med,
		"sterile jumpsuit"=/obj/item/clothing/under/sterile
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/chemist_selector
	display_name = "Medical - " + JOB_CHEMIST + "'s Uniforms"
	description = "Select from a range of outfits available to all Chemists."
	allowed_roles = list(JOB_CHIEF_MEDICAL_OFFICER,JOB_CHEMIST)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_chem
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/chemist_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/chemist/skirt,
		"TG&C chemist's jumpsuit"=/obj/item/clothing/under/rank/neo_chem,
		"TG&C chemist's jumpskirt"=/obj/item/clothing/under/rank/neo_chem_skirt,
		"TG&C pharmacy jumpsuit"=/obj/item/clothing/under/rank/neo_pharma,
		"TG&C pharmacy jumpskirt"=/obj/item/clothing/under/rank/neo_pharma_skirt
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/paramedic_selector
	display_name = "Medical - " + JOB_PARAMEDIC + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_PARAMEDIC + "s."
	allowed_roles = list(JOB_MEDICAL_DOCTOR,JOB_CHIEF_MEDICAL_OFFICER,JOB_PARAMEDIC,JOB_TALON_DOCTOR)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/paramedunidark
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/paramedic_selector/New()
	..()
	var/list/selector_uniforms = list(
		"dark"=/obj/item/clothing/under/rank/paramedunidark,
		"dark w/ skirt"=/obj/item/clothing/under/rank/parameduniskirtdark,
		"light"=/obj/item/clothing/under/rank/paramedunilight,
		"light w/ skirt"=/obj/item/clothing/under/rank/parameduniskirtlight,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_para,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_para_skirt,
		"TG&C light jumpsuit"=/obj/item/clothing/under/rank/neo_para_light,
		"TG&C light jumpskirt"=/obj/item/clothing/under/rank/neo_para_light_skirt
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/chief_medical_selector
	display_name = "Medical - " + JOB_CHIEF_MEDICAL_OFFICER + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_CHIEF_MEDICAL_OFFICER + "."
	allowed_roles = list(JOB_CHIEF_MEDICAL_OFFICER)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_cmo
	sort_category = "Uniforms"
	cost = 2

/datum/gear/uniform/chief_medical_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/chief_medical_officer/skirt,
		"GE uniform, command"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_cmo,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_cmo_skirt,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_cmo_turtle,
		"TG&C turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_cmo_turtle_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/cmo
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

//Science

/datum/gear/uniform/research_director_selector
	display_name = "Science - " + JOB_RESEARCH_DIRECTOR + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_RESEARCH_DIRECTOR + "s."
	allowed_roles = list(JOB_RESEARCH_DIRECTOR)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_rd_suit
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/research_director_selector/New()
	..()
	var/list/selector_uniforms = list(
		"GE uniform, command"=/obj/item/clothing/under/rank/khi/cmd, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Command"=/obj/item/clothing/under/rank/trek/command,
		"ST: Next Generation Command"=/obj/item/clothing/under/rank/trek/command/next,
		"ST: Voyager Command"=/obj/item/clothing/under/rank/trek/command/voy,
		"ST: DS9 Command"=/obj/item/clothing/under/rank/trek/command/ds9,
		"ST: Enterprise Command"=/obj/item/clothing/under/rank/trek/command/ent,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_rd_suit,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_rd_suit_skirt,
		"TG&C turtleneck"=/obj/item/clothing/under/rank/neo_rd_turtle,
		"TG&C turtleneck w/ skirt"=/obj/item/clothing/under/rank/neo_rd_turtle_skirt,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/rd
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/science_dept_selector
	display_name = "Science - Basic Uniforms"
	description = "Select from a range of outfits available to all Science personnel."
	allowed_roles = list(JOB_SCIENTIST,JOB_RESEARCH_DIRECTOR,JOB_ROBOTICIST,JOB_XENOBIOLOGIST,JOB_XENOBOTANIST)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_science
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/science_dept_selector/New()
	..()
	var/list/selector_uniforms = list(
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_science,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_science_skirt,
		"TG&C utility"=/obj/item/clothing/under/rank/neo_util_sci,
		"GE uniform"=/obj/item/clothing/under/rank/khi/sci, //CHOMPEdit, KHI becomes GE
		"ST: Original Series Med-Sci"=/obj/item/clothing/under/rank/trek/medsci,
		"ST: Next Generation Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/next,
		"ST: Voyager Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/voy,
		"ST: DS9 Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/ds9,
		"ST: Enterprise Med-Sci"=/obj/item/clothing/under/rank/trek/medsci/ent,
		"TG&C gorka suit"=/obj/item/clothing/under/rank/neo_gorka/sci
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))

/datum/gear/uniform/science_robotics_selector
	display_name = "Science - " + JOB_ROBOTICIST + "'s Uniforms"
	description = "Select from a range of outfits available to all " + JOB_ROBOTICIST + "s."
	allowed_roles = list(JOB_RESEARCH_DIRECTOR,JOB_ROBOTICIST)
	show_roles = FALSE
	path = /obj/item/clothing/under/rank/neo_robo
	sort_category = "Uniforms"
	cost = 1

/datum/gear/uniform/science_robotics_selector/New()
	..()
	var/list/selector_uniforms = list(
		"skirt"=/obj/item/clothing/under/rank/roboticist/skirt,
		"TG&C jumpsuit"=/obj/item/clothing/under/rank/neo_robo,
		"TG&C jumpskirt"=/obj/item/clothing/under/rank/neo_robo_skirt
	)
	gear_tweaks += new/datum/gear_tweak/path(sortAssoc(selector_uniforms))
