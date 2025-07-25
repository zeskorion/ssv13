/**
 * VOREStation global lists
*/

GLOBAL_LIST_EMPTY(hair_accesories_list) // Stores /datum/sprite_accessory/hair_accessory indexed by type
GLOBAL_LIST_EMPTY(negative_traits)	// Negative custom species traits, indexed by path
GLOBAL_LIST_EMPTY(neutral_traits)		// Neutral custom species traits, indexed by path
GLOBAL_LIST_EMPTY(positive_traits)	// Positive custom species traits, indexed by path
GLOBAL_LIST_EMPTY(everyone_traits_positive)	// Neutral traits available to all species, indexed by path
GLOBAL_LIST_EMPTY(everyone_traits_neutral)	// Neutral traits available to all species, indexed by path
GLOBAL_LIST_EMPTY(everyone_traits_negative)	// Neutral traits available to all species, indexed by path
GLOBAL_LIST_EMPTY(traits_costs)		// Just path = cost list, saves time in char setup
GLOBAL_LIST_EMPTY(all_traits)			// All of 'em at once (same instances)
GLOBAL_LIST_EMPTY(active_ghost_pods)

//Global vars for making the overmap_renamer subsystem.
//Collects all instances by reference of visitable overmap objects of /obj/effect/overmap/visitable like the debris field.
GLOBAL_LIST_EMPTY(visitable_overmap_object_instances)

GLOBAL_LIST_INIT(sensorpreflist, list("Off", "Binary", "Vitals", "Tracking", "No Preference"))

// Used by the ban panel to determine what departments are offmap departments. All these share an 'offmap roles' ban.
GLOBAL_LIST_INIT(offmap_departments, list(DEPARTMENT_TALON))

// Closets have magic appearances
GLOBAL_LIST_EMPTY(closet_appearances)

//stores numeric player size options indexed by name
GLOBAL_LIST_INIT(player_sizes_list, list(
		"Macro" 	= RESIZE_HUGE,
		"Big" 		= RESIZE_BIG,
		"Normal" 	= RESIZE_NORMAL,
		"Small" 	= RESIZE_SMALL,
		"Tiny" 		= RESIZE_TINY))

//stores vantag settings indexed by name
//CHOMPEdit start - expanding the vore hud list
GLOBAL_LIST_INIT(vantag_choices_list, list(
		VANTAG_NONE		=	"No Involvement",
		VANTAG_VORE		=	"Be Prey (Any)",
		VANTAG_VORE_YE	=	"Be Prey (Endo)",
		VANTAG_VORE_YD	=	"Be Prey (Digestion)",
		VANTAG_VORE_YA	=	"Be Prey (Absorption)",
		VANTAG_VORE_D	=	"Be Pred (Any)",
		VANTAG_VORE_DE	=	"Be Pred (Endo)",
		VANTAG_VORE_DD	=	"Be Pred (Digestion)",
		VANTAG_VORE_DA	=	"Be Pred (Absorption)",
		VANTAG_KIDNAP	=	"Be Kidnapped",
		VANTAG_KILL		=	"Be Killed"))
//CHOMPEdit end

//Blacklist to exclude items from object ingestion. Digestion blacklist located in digest_act_vr.dm
GLOBAL_LIST_INIT(item_vore_blacklist, list(
		/obj/item/hand_tele,
		/obj/item/card/id/gold/captain/spare,
		/obj/item/gun,
		/obj/item/pinpointer,
		/obj/item/clothing/shoes/magboots,
		/obj/item/areaeditor/blueprints,
		/obj/item/clothing/head/helmet/space,
		/obj/item/disk/nuclear,
		/obj/item/clothing/suit/storage/hooded/wintercoat/roiz))

//Classic Vore sounds
GLOBAL_LIST_INIT(classic_vore_sounds, list(
		"Gulp" = 'sound/vore/gulp.ogg',
		"Insert" = 'sound/vore/insert.ogg',
		"Insertion1" = 'sound/vore/insertion1.ogg',
		"Insertion2" = 'sound/vore/insertion2.ogg',
		"Insertion3" = 'sound/vore/insertion3.ogg',
		"Schlorp" = 'sound/vore/schlorp.ogg',
		"Squish1" = 'sound/vore/squish1.ogg',
		"Squish2" = 'sound/vore/squish2.ogg',
		"Squish3" = 'sound/vore/squish3.ogg',
		"Squish4" = 'sound/vore/squish4.ogg',
		"Rustle (cloth)" = 'sound/effects/rustle1.ogg',
		"Rustle 2 (cloth)"	= 'sound/effects/rustle2.ogg',
		"Rustle 3 (cloth)"	= 'sound/effects/rustle3.ogg',
		"Rustle 4 (cloth)"	= 'sound/effects/rustle4.ogg',
		"Rustle 5 (cloth)"	= 'sound/effects/rustle5.ogg',
		"Zipper" = 'sound/items/zip.ogg',
		"None" = null
		))

GLOBAL_LIST_INIT(classic_release_sounds, list(
		"Rustle (cloth)" = 'sound/effects/rustle1.ogg',
		"Rustle 2 (cloth)" = 'sound/effects/rustle2.ogg',
		"Rustle 3 (cloth)" = 'sound/effects/rustle3.ogg',
		"Rustle 4 (cloth)" = 'sound/effects/rustle4.ogg',
		"Rustle 5 (cloth)" = 'sound/effects/rustle5.ogg',
		"Zipper" = 'sound/items/zip.ogg',
		"Splatter" = 'sound/effects/splat.ogg',
		"None" = null
		))

//Poojy's Fancy Sounds
GLOBAL_LIST_INIT(fancy_vore_sounds, list(
		"Gulp" = 'sound/vore/sunesound/pred/swallow_01.ogg',
		"Swallow" = 'sound/vore/sunesound/pred/swallow_02.ogg',
		"Insertion1" = 'sound/vore/sunesound/pred/insertion_01.ogg',
		"Insertion2" = 'sound/vore/sunesound/pred/insertion_02.ogg',
		"Tauric Swallow" = 'sound/vore/sunesound/pred/taurswallow.ogg',
		"Stomach Move"		= 'sound/vore/sunesound/pred/stomachmove.ogg',
		"Schlorp" = 'sound/vore/sunesound/pred/schlorp.ogg',
		"Squish1" = 'sound/vore/sunesound/pred/squish_01.ogg',
		"Squish2" = 'sound/vore/sunesound/pred/squish_02.ogg',
		"Squish3" = 'sound/vore/sunesound/pred/squish_03.ogg',
		"Squish4" = 'sound/vore/sunesound/pred/squish_04.ogg',
		"Rustle (cloth)" = 'sound/effects/rustle1.ogg',
		"Rustle 2 (cloth)"	= 'sound/effects/rustle2.ogg',
		"Rustle 3 (cloth)"	= 'sound/effects/rustle3.ogg',
		"Rustle 4 (cloth)"	= 'sound/effects/rustle4.ogg',
		"Rustle 5 (cloth)"	= 'sound/effects/rustle5.ogg',
		"Zipper" = 'sound/items/zip.ogg',
		"None" = null
		))

GLOBAL_LIST_INIT(fancy_release_sounds, list(
		"Rustle (cloth)" = 'sound/effects/rustle1.ogg',
		"Rustle 2 (cloth)" = 'sound/effects/rustle2.ogg',
		"Rustle 3 (cloth)" = 'sound/effects/rustle3.ogg',
		"Rustle 4 (cloth)" = 'sound/effects/rustle4.ogg',
		"Rustle 5 (cloth)" = 'sound/effects/rustle5.ogg',
		"Zipper" = 'sound/items/zip.ogg',
		"Stomach Move" = 'sound/vore/sunesound/pred/stomachmove.ogg',
		"Pred Escape" = 'sound/vore/sunesound/pred/escape.ogg',
		"Splatter" = 'sound/effects/splat.ogg',
		"None" = null
		))

GLOBAL_LIST_INIT(global_vore_egg_types, list(
	"Unathi",
	"Tajara",
	"Akula",
	"Skrell",
	"Sergal",
	"Nevrean",
	"Human",
	"Slime",
	"Egg",
	"Xenochimera",
	"Xenomorph",
	"Chocolate",
	"Boney",
	"Slime Glob",
	"Chicken",
	"Synthetic",
	"Bluespace Floppy",
	"Bluespace Compressed File",
	"Bluespace CD",
	"Escape Pod",
	"Cooking Error",
	"Web Cocoon",
	"Honeycomb",
	"Bug Cocoon",
	"Rock",
	"Yellow",
	"Blue",
	"Green",
	"Orange",
	"Purple",
	"Red",
	"Rainbow",
	"Spotted Pink"
	))

GLOBAL_LIST_INIT(tf_vore_egg_types, list(
	"Unathi" 		= /obj/item/storage/vore_egg/unathi,
	"Tajara" 		= /obj/item/storage/vore_egg/tajaran,
	"Akula" 		= /obj/item/storage/vore_egg/shark,
	"Skrell" 		= /obj/item/storage/vore_egg/skrell,
	"Sergal"		= /obj/item/storage/vore_egg/sergal,
	"Nevrean"		= /obj/item/storage/vore_egg/nevrean,
	"Human"			= /obj/item/storage/vore_egg/human,
	"Slime"			= /obj/item/storage/vore_egg/slime,
	"Egg"			= /obj/item/storage/vore_egg,
	"Xenochimera"	= /obj/item/storage/vore_egg/scree,
	"Xenomorph"		= /obj/item/storage/vore_egg/xenomorph,
	"Chocolate"		= /obj/item/storage/vore_egg/chocolate,
	"Boney"			= /obj/item/storage/vore_egg/owlpellet,
	"Slime Glob"	= /obj/item/storage/vore_egg/slimeglob,
	"Chicken"		= /obj/item/storage/vore_egg/chicken,
	"Synthetic"		= /obj/item/storage/vore_egg/synthetic,
	"Bluespace Floppy"	= /obj/item/storage/vore_egg/floppy,
	"Bluespace Compressed File"	= /obj/item/storage/vore_egg/file,
	"Bluespace CD"	= /obj/item/storage/vore_egg/cd,
	"Escape Pod"	= /obj/item/storage/vore_egg/escapepod,
	"Cooking Error"	= /obj/item/storage/vore_egg/badrecipe,
	"Web Cocoon"	= /obj/item/storage/vore_egg/cocoon,
	"Honeycomb"	= /obj/item/storage/vore_egg/honeycomb,
	"Bug Cocoon"	= /obj/item/storage/vore_egg/bugcocoon,
	"Rock"			= /obj/item/storage/vore_egg/rock,
	"Yellow"		= /obj/item/storage/vore_egg/yellow,
	"Blue"			= /obj/item/storage/vore_egg/blue,
	"Green"			= /obj/item/storage/vore_egg/green,
	"Orange"		= /obj/item/storage/vore_egg/orange,
	"Purple"		= /obj/item/storage/vore_egg/purple,
	"Red"			= /obj/item/storage/vore_egg/red,
	"Rainbow"		= /obj/item/storage/vore_egg/rainbow,
	"Spotted Pink"	= /obj/item/storage/vore_egg/pinkspots))

GLOBAL_LIST_INIT(edible_trash, list(/obj/item/broken_device,
				/obj/item/clothing/accessory/collar,
				/obj/item/communicator,
				/obj/item/clothing/mask,
				/obj/item/clothing/glasses,
				/obj/item/clothing/gloves,
				/obj/item/clothing/head,
				/obj/item/clothing/shoes,
				/obj/item/aicard,
				/obj/item/flashlight,
				/obj/item/mmi/digital/posibrain,
				/obj/item/paicard,
				/obj/item/pda,
				/obj/item/radio/headset,
				/obj/item/starcaster_news, //chompstation addition
				/obj/item/inflatable/torn,
				/obj/item/organ,
				/obj/item/stack/material/cardboard,
				/obj/item/toy,
				/obj/item/trash,
				/obj/item/digestion_remains,
				/obj/item/bananapeel,
				/obj/item/book,
				/obj/item/bone,
				/obj/item/broken_bottle,
				/obj/item/card/emag_broken,
				/obj/item/trash/cigbutt,
				/obj/item/circuitboard/broken,
				/obj/item/clipboard,
				/obj/item/corncob,
				/obj/item/dice,
				/obj/item/flame,
				/obj/item/light,
				/obj/item/lipstick,
				/obj/item/material/shard,
				/obj/item/newspaper,
				/obj/item/paper,
				/obj/item/paperplane,
				/obj/item/pen,
				/obj/item/photo,
				/obj/item/reagent_containers/food,
				/obj/item/reagent_containers/glass/rag,
				/obj/item/soap,
				/obj/item/spacecash,
				/obj/item/storage/box/khcrystal,
				/obj/item/storage/box/matches,
				/obj/item/storage/box/wings,
				/obj/item/storage/fancy/candle_box,
				/obj/item/storage/fancy/cigarettes,
				/obj/item/storage/fancy/crayons,
				/obj/item/storage/fancy/egg_box,
				/obj/item/storage/wallet,
				/obj/item/storage/vore_egg,
				/obj/item/bikehorn/tinytether,
				/obj/item/entrepreneur,
				/obj/item/capture_crystal,
				/obj/item/material/kitchen, //chompstation addition start
				/obj/item/storage/mre,
				/obj/item/storage/mrebag,
				/obj/item/storage/fancy/crackers,
				/obj/item/storage/fancy/heartbox,
				/obj/item/pizzavoucher,
				/obj/item/pizzabox,
				/obj/item/toy,
				/obj/item/seeds,
				/obj/item/clothing/accessory/choker,
				/obj/item/clothing/accessory/medal,
				/obj/item/clothing/accessory/tie,
				/obj/item/clothing/accessory/scarf,
				/obj/item/clothing/accessory/bracelet,
				/obj/item/clothing/accessory/locket,
				/obj/item/storage/bible,
				/obj/item/bikehorn,
				/obj/item/inflatable/door/torn,
				/obj/item/towel,
				/obj/item/folder,
				/obj/item/clipboard,
				/obj/item/coin,
				/obj/item/clothing/ears, //chompstation addition end
				/obj/item/roulette_ball,
				/obj/item/pizzabox,
				/obj/item/card/id
				))

GLOBAL_LIST_INIT(contamination_flavors, list(
				"Generic" = GLOB.contamination_flavors_generic,
				"Acrid" = GLOB.contamination_flavors_acrid,
				"Dirty" = GLOB.contamination_flavors_dirty,
				"Musky" = GLOB.contamination_flavors_musky,
				"Smelly" = GLOB.contamination_flavors_smelly,
				"Slimy" = GLOB.contamination_flavors_slimy,
				"Wet" = GLOB.contamination_flavors_wet))

GLOBAL_LIST_INIT(contamination_flavors_generic, list("acrid",
				"bedraggled",
				"begrimed",
				"churned",
				"contaminated",
				"cruddy",
				"damp",
				"digested",
				"dirty",
				"disgusting",
				"drenched",
				"drippy",
				"filthy",
				"foul",
				"funky",
				"gloppy",
				"gooey",
				"grimy",
				"gross",
				"gruesome",
				"gunky",
				"icky",
				"juicy",
				"messy",
				"mucky",
				"mushy",
				"nasty",
				"noxious",
				"oozing",
				"pungent",
				"putrescent",
				"putrid",
				"repulsive",
				"saucy",
				"slimy",
				"sloppy",
				"sloshed",
				"sludgy",
				"smeary",
				"smelly",
				"smudgy",
				"smutty",
				"soaked",
				"soggy",
				"soiled",
				"sopping",
				"squashy",
				"squishy",
				"stained",
				"sticky",
				"stinky",
				"tainted",
				"tarnished",
				"unclean",
				"unsanitary",
				"unsavory",
				"yucky"))

GLOBAL_LIST_INIT(contamination_flavors_wet, list("damp",
				"drenched",
				"drippy",
				"gloppy",
				"gooey",
				"juicy",
				"oozing",
				"slimy",
				"slobbery",
				"sloppy",
				"sloshed",
				"sloughy",
				"sludgy",
				"slushy",
				"soaked",
				"soggy",
				"sopping",
				"squashy",
				"squishy",
				"sticky"))

GLOBAL_LIST_INIT(contamination_flavors_smelly, list("disgusting",
				"filthy",
				"foul",
				"funky",
				"gross",
				"icky",
				"malodorous",
				"nasty",
				"niffy",
				"noxious",
				"pungent",
				"putrescent",
				"putrid",
				"rancid",
				"reeking",
				"repulsive",
				"smelly",
				"stenchy",
				"stinky",
				"unsavory",
				"whiffy",
				"yucky"))

GLOBAL_LIST_INIT(contamination_flavors_acrid, list("acrid",
				"caustic",
				"churned",
				"chymous",
				"digested",
				"discolored",
				"disgusting",
				"drippy",
				"foul",
				"gloppy",
				"gooey",
				"grimy",
				"gross",
				"gruesome",
				"icky",
				"mucky",
				"mushy",
				"nasty",
				"noxious",
				"oozing",
				"pungent",
				"putrescent",
				"putrid",
				"repulsive",
				"saucy",
				"slimy",
				"sloppy",
				"sloshed",
				"sludgy",
				"slushy",
				"smelly",
				"smudgy",
				"soupy",
				"squashy",
				"squishy",
				"stained",
				"sticky",
				"tainted",
				"unsavory",
				"yucky"))

GLOBAL_LIST_INIT(contamination_flavors_dirty, list("bedraggled",
				"begrimed",
				"besmirched",
				"blemished",
				"contaminated",
				"cruddy",
				"dirty",
				"discolored",
				"filthy",
				"gloppy",
				"gooey",
				"grimy",
				"gross",
				"grubby",
				"gruesome",
				"gunky",
				"messy",
				"mucky",
				"mushy",
				"nasty",
				"saucy",
				"slimy",
				"sloppy",
				"sludgy",
				"smeary",
				"smudgy",
				"smutty",
				"soiled",
				"stained",
				"sticky",
				"tainted",
				"tarnished",
				"unclean",
				"unsanitary",
				"unsavory"))

GLOBAL_LIST_INIT(contamination_flavors_musky, list("drenched",
				"drippy",
				"funky",
				"gooey",
				"juicy",
				"messy",
				"musky",
				"nasty",
				"raunchy",
				"saucy",
				"slimy",
				"sloppy",
				"slushy",
				"smeary",
				"smelly",
				"smutty",
				"soggy",
				"squashy",
				"squishy",
				"sticky",
				"tainted"))

GLOBAL_LIST_INIT(contamination_flavors_slimy, list("slimy",
				"sloppy",
				"drippy",
				"glistening",
				"dripping",
				"gunky",
				"slimed",
				"mucky",
				"viscous",
				"dank",
				"glutinous",
				"syrupy",
				"slippery",
				"gelatinous"
				))

GLOBAL_LIST_INIT(contamination_colors, list("green",
				"white",
				"black",
				"grey",
				"yellow",
				"red",
				"blue",
				"orange",
				"purple",
				"lime",
				"brown",
				"darkred",
				"cyan",
				"beige",
				"pink"
				))

//For the mechanic of leaving remains. Ones listed below are basically ones that got no bones or leave no trace after death.
GLOBAL_LIST_INIT(remainless_species, list(SPECIES_PROMETHEAN,
				SPECIES_DIONA,
				SPECIES_ALRAUNE,
				SPECIES_PROTEAN,
				/*
				SPECIES_MONKEY,					//Exclude all monkey subtypes, to prevent abuse of it. They aren't, //CHOMPEDIT How about let preds have skeletons, people can do so much worse than this
				SPECIES_MONKEY_TAJ,				//set to have remains anyway, but making double sure,
				SPECIES_MONKEY_SKRELL,
				SPECIES_MONKEY_UNATHI,
				SPECIES_MONKEY_AKULA,
				SPECIES_MONKEY_NEVREAN,
				SPECIES_MONKEY_SERGAL,
				SPECIES_MONKEY_VULPKANIN,
				*/
				SPECIES_XENO,					//Same for xenos,
				SPECIES_XENO_DRONE,
				SPECIES_XENO_HUNTER,
				SPECIES_XENO_SENTINEL,
				SPECIES_XENO_QUEEN,
				SPECIES_SHADOW,
				SPECIES_GOLEM,					//Some special species that may or may not be ever used in event too,
				SPECIES_SHADEKIN))			//Shadefluffers just poof away

GLOBAL_LIST_INIT(alt_titles_with_icons, list(
				JOB_ALT_VIROLOGIST,
				JOB_ALT_APPRENTICE_ENGINEER,
				JOB_ALT_MEDICAL_INTERN,
				JOB_ALT_RESEARCH_INTERN,
				JOB_ALT_SECURITY_CADET,
				JOB_ALT_JR_CARGO_TECH,
				JOB_ALT_JR_EXPLORER, //CHOMP explo keep
				JOB_ALT_SERVER,
				JOB_ALT_ELECTRICIAN,
				JOB_ALT_FIREFIGHTER,
				JOB_ALT_BARISTA))

GLOBAL_LIST_EMPTY(existing_solargrubs)

/hook/startup/proc/init_vore_datum_ref_lists()
	var/paths

	// Custom Hair Accessories
	paths = subtypesof(/datum/sprite_accessory/hair_accessory)
	for(var/path in paths)
		var/datum/sprite_accessory/hair_accessory/instance = new path()
		GLOB.hair_accesories_list[path] = instance

	// Custom species traits
	paths = typesof(/datum/trait) - /datum/trait - /datum/trait/negative - /datum/trait/neutral - /datum/trait/positive
	for(var/path in paths)
		var/datum/trait/instance = new path()
		if(!instance.name)
			continue //A prototype or something
		var/cost = instance.cost
		GLOB.traits_costs[path] = cost
		GLOB.all_traits[path] = instance

	// Traitgenes Initilize trait genes
	setupgenetics(GLOB.all_traits)

	// Shakey shakey shake
	sortTim(GLOB.all_traits, GLOBAL_PROC_REF(cmp_trait_datums_name), associative = TRUE)

	// Split 'em up
	for(var/traitpath in GLOB.all_traits)
		var/datum/trait/T = GLOB.all_traits[traitpath]
		var/category = T.category
		if(!T.hidden) // Traitgenes forbid hidden traits from showing, done to hide genetics only traits
			switch(category)
				if(-INFINITY to -0.1)
					GLOB.negative_traits[traitpath] = T
					if(!(T.custom_only))
						GLOB.everyone_traits_negative[traitpath] = T
				if(0)
					GLOB.neutral_traits[traitpath] = T
					if(!(T.custom_only))
						GLOB.everyone_traits_neutral[traitpath] = T
				if(0.1 to INFINITY)
					GLOB.positive_traits[traitpath] = T
					if(!(T.custom_only))
						GLOB.everyone_traits_positive[traitpath] = T


	// Weaver recipe stuff
	paths = subtypesof(/datum/weaver_recipe/structure)
	for(var/path in paths)
		var/datum/weaver_recipe/instance = new path()
		if(!instance.title)
			continue //A prototype or something
		GLOB.weavable_structures[instance.title] = instance

	paths = subtypesof(/datum/weaver_recipe/item)
	for(var/path in paths)
		var/datum/weaver_recipe/instance = new path()
		if(!instance.title)
			continue //A prototype or something
		GLOB.weavable_items[instance.title] = instance

	return 1 // Hooks must return 1

GLOBAL_LIST_EMPTY(weavable_structures)
GLOBAL_LIST_EMPTY(weavable_items)


GLOBAL_LIST_INIT(xenobio_metal_materials_normal, list(
										/obj/item/stack/material/steel = 20,
										/obj/item/stack/material/glass = 15,
										/obj/item/stack/material/plastic = 12,
										/obj/item/stack/material/wood = 12,
										/obj/item/stack/material/cardboard = 6,
										/obj/item/stack/material/sandstone = 5,
										/obj/item/stack/material/log = 5,
										/obj/item/stack/material/lead = 5,
										/obj/item/stack/material/iron = 5,
										/obj/item/stack/material/graphite = 5,
										/obj/item/stack/material/copper = 4,
										/obj/item/stack/material/tin = 4,
										/obj/item/stack/material/bronze = 4,
										/obj/item/stack/material/aluminium = 4))

GLOBAL_LIST_INIT(xenobio_metal_materials_adv, list(
										/obj/item/stack/material/glass/reinforced = 15,
										/obj/item/stack/material/marble = 10,
										/obj/item/stack/material/plasteel = 10,
										/obj/item/stack/material/glass/phoronglass = 10,
										/obj/item/stack/material/wood/sif = 5,
										/obj/item/stack/material/wood/hard = 5,
										/obj/item/stack/material/log/sif = 5,
										/obj/item/stack/material/log/hard = 5,
										/obj/item/stack/material/glass/phoronrglass = 5,
										/obj/item/stack/material/glass/titanium = 3,
										/obj/item/stack/material/glass/plastitanium = 3,
										/obj/item/stack/material/durasteel = 2,
										/obj/item/stack/material/painite = 1,
										/obj/item/stack/material/void_opal = 1,
										/obj/item/stack/material/quartz = 1))

GLOBAL_LIST_INIT(xenobio_metal_materials_weird, list(
										/obj/item/stack/material/cloth = 10,
										/obj/item/stack/material/leather = 5,
										/obj/item/stack/material/fiber = 5,
										/obj/item/stack/material/fur/wool = 7,
										/obj/item/stack/material/snow = 3,
										/obj/item/stack/material/snowbrick = 3,
										/obj/item/stack/material/flint = 3,
										/obj/item/stack/material/stick = 3,
										/obj/item/stack/material/chitin = 1))

GLOBAL_LIST_INIT(xenobio_silver_materials_basic, list(
										/obj/item/stack/material/silver = 10,
										/obj/item/stack/material/uranium = 8,
										/obj/item/stack/material/gold = 6,
										/obj/item/stack/material/titanium = 4,
										/obj/item/stack/material/phoron = 1))

GLOBAL_LIST_INIT(xenobio_silver_materials_adv, list(
										/obj/item/stack/material/deuterium = 5,
										/obj/item/stack/material/tritium = 5,
										/obj/item/stack/material/osmium = 5,
										/obj/item/stack/material/mhydrogen = 3,
										/obj/item/stack/material/diamond = 2,
										/obj/item/stack/material/verdantium = 1))

GLOBAL_LIST_INIT(xenobio_silver_materials_special, list(
										/obj/item/stack/material/valhollide = 1,
										/obj/item/stack/material/morphium = 1,
										/obj/item/stack/material/supermatter = 1))

GLOBAL_LIST_INIT(xenobio_gold_mobs_hostile, list(
										/mob/living/simple_mob/vore/alienanimals/space_jellyfish,
										/mob/living/simple_mob/vore/alienanimals/skeleton,
										/mob/living/simple_mob/vore/alienanimals/space_ghost,
										/mob/living/simple_mob/vore/alienanimals/startreader,
										/mob/living/simple_mob/animal/passive/mouse/operative,
										/mob/living/simple_mob/animal/giant_spider,
										/mob/living/simple_mob/animal/giant_spider/frost,
										/mob/living/simple_mob/animal/giant_spider/electric,
										/mob/living/simple_mob/animal/giant_spider/hunter,
										/mob/living/simple_mob/animal/giant_spider/lurker,
										/mob/living/simple_mob/animal/giant_spider/pepper,
										/mob/living/simple_mob/animal/giant_spider/thermic,
										/mob/living/simple_mob/animal/giant_spider/tunneler,
										/mob/living/simple_mob/animal/giant_spider/webslinger,
										/mob/living/simple_mob/animal/giant_spider/phorogenic,
										/mob/living/simple_mob/animal/giant_spider/carrier,
										/mob/living/simple_mob/animal/giant_spider/ion,
										/mob/living/simple_mob/animal/sif/diyaab,
										/mob/living/simple_mob/animal/sif/duck,
										/mob/living/simple_mob/animal/sif/frostfly,
										/mob/living/simple_mob/animal/sif/glitterfly,
										/mob/living/simple_mob/animal/sif/hooligan_crab,
										/mob/living/simple_mob/animal/sif/kururak,
										/mob/living/simple_mob/animal/sif/leech,
										/mob/living/simple_mob/animal/sif/tymisian,
										/mob/living/simple_mob/animal/sif/sakimm,
										/mob/living/simple_mob/animal/sif/savik,
										/mob/living/simple_mob/animal/sif/shantak,
										/mob/living/simple_mob/animal/sif/siffet,
										/mob/living/simple_mob/animal/space/alien,
										/mob/living/simple_mob/animal/space/alien/drone,
										/mob/living/simple_mob/animal/space/alien/sentinel,
										/mob/living/simple_mob/animal/space/alien/sentinel/praetorian,
										/mob/living/simple_mob/animal/space/alien/queen,
										/mob/living/simple_mob/animal/space/alien/queen/empress,
										/mob/living/simple_mob/animal/space/alien/queen/empress/mother,
										/mob/living/simple_mob/animal/space/bats,
										/mob/living/simple_mob/animal/space/bear,
										/mob/living/simple_mob/animal/space/carp,
										/mob/living/simple_mob/animal/space/carp/large,
										/mob/living/simple_mob/animal/space/carp/large/huge,
										/mob/living/simple_mob/animal/space/goose,
										/mob/living/simple_mob/creature,
										/mob/living/simple_mob/faithless,
										/mob/living/simple_mob/tomato,
										/mob/living/simple_mob/animal/space/tree,
										/mob/living/simple_mob/vore/aggressive/corrupthound,
										/mob/living/simple_mob/vore/aggressive/corrupthound/prettyboi,
										/mob/living/simple_mob/vore/aggressive/deathclaw,
										/mob/living/simple_mob/vore/aggressive/dino,
										/mob/living/simple_mob/vore/aggressive/dragon,
										/mob/living/simple_mob/vore/aggressive/frog,
										/mob/living/simple_mob/vore/otie,
										/mob/living/simple_mob/vore/otie/red,
										/mob/living/simple_mob/vore/aggressive/panther,
										/mob/living/simple_mob/vore/aggressive/rat,
										/mob/living/simple_mob/vore/aggressive/giant_snake,
										/mob/living/simple_mob/vore/sect_drone,
										/mob/living/simple_mob/vore/sect_queen,
										/mob/living/simple_mob/vore/weretiger,
										/mob/living/simple_mob/vore/wolf,
										/mob/living/simple_mob/vore/xeno_defanged))

GLOBAL_LIST_INIT(xenobio_gold_mobs_bosses, list(
										/mob/living/simple_mob/animal/giant_spider/broodmother,
										/mob/living/simple_mob/vore/leopardmander,
										/mob/living/simple_mob/vore/leopardmander/blue,
										/mob/living/simple_mob/vore/leopardmander/exotic,
										/mob/living/simple_mob/vore/greatwolf,
										/mob/living/simple_mob/vore/greatwolf/black,
										/mob/living/simple_mob/vore/greatwolf/grey,
										/mob/living/simple_mob/vore/bigdragon))

GLOBAL_LIST_INIT(xenobio_gold_mobs_safe, list(
										/mob/living/simple_mob/vore/alienanimals/dustjumper,
										/mob/living/simple_mob/vore/alienanimals/teppi,
										/mob/living/simple_mob/animal/passive/chicken,
										/mob/living/simple_mob/animal/passive/cow,
										/mob/living/simple_mob/animal/goat,
										/mob/living/simple_mob/animal/passive/crab,
										/mob/living/simple_mob/animal/passive/mouse/jerboa,
										/mob/living/simple_mob/animal/passive/lizard,
										/mob/living/simple_mob/animal/passive/lizard/large,
										/mob/living/simple_mob/animal/passive/yithian,
										/mob/living/simple_mob/animal/passive/tindalos,
										/mob/living/simple_mob/animal/passive/mouse,
										/mob/living/simple_mob/animal/passive/penguin,
										/mob/living/simple_mob/animal/passive/opossum,
										/mob/living/simple_mob/animal/passive/cat,
										/mob/living/simple_mob/animal/passive/dog/corgi,
										/mob/living/simple_mob/animal/passive/dog/void_puppy,
										/mob/living/simple_mob/animal/passive/dog/bullterrier,
										/mob/living/simple_mob/animal/passive/dog/tamaskan,
										/mob/living/simple_mob/animal/passive/dog/brittany,
										/mob/living/simple_mob/animal/passive/fox,
										/mob/living/simple_mob/animal/passive/fox/syndicate,
										/mob/living/simple_mob/animal/passive/hare,
										/mob/living/simple_mob/animal/passive/pillbug,
										/mob/living/simple_mob/animal/passive/gaslamp,
										/mob/living/simple_mob/animal/passive/snake,
										/mob/living/simple_mob/animal/passive/snake/red,
										/mob/living/simple_mob/animal/passive/snake/python,
										/mob/living/simple_mob/vore/bee,
										/mob/living/simple_mob/vore/fennec,
										/mob/living/simple_mob/vore/fennix,
										/mob/living/simple_mob/vore/seagull,
										/mob/living/simple_mob/vore/hippo,
										/mob/living/simple_mob/vore/horse,
										/mob/living/simple_mob/vore/jelly,
										/mob/living/simple_mob/vore/oregrub,
										/mob/living/simple_mob/vore/oregrub/lava,
										/mob/living/simple_mob/vore/rabbit,
										/mob/living/simple_mob/vore/redpanda,
										/mob/living/simple_mob/vore/sheep,
										/mob/living/simple_mob/vore/squirrel,
										/mob/living/simple_mob/vore/solargrub))

GLOBAL_LIST_INIT(xenobio_gold_mobs_birds, list(/mob/living/simple_mob/animal/passive/bird/black_bird,
										/mob/living/simple_mob/animal/passive/bird/azure_tit,
										/mob/living/simple_mob/animal/passive/bird/european_robin,
										/mob/living/simple_mob/animal/passive/bird/goldcrest,
										/mob/living/simple_mob/animal/passive/bird/ringneck_dove,
										/mob/living/simple_mob/animal/passive/bird/parrot,
										/mob/living/simple_mob/animal/passive/bird/parrot/kea,
										/mob/living/simple_mob/animal/passive/bird/parrot/eclectus,
										/mob/living/simple_mob/animal/passive/bird/parrot/grey_parrot,
										/mob/living/simple_mob/animal/passive/bird/parrot/black_headed_caique,
										/mob/living/simple_mob/animal/passive/bird/parrot/white_caique,
										/mob/living/simple_mob/animal/passive/bird/parrot/budgerigar,
										/mob/living/simple_mob/animal/passive/bird/parrot/budgerigar/blue,
										/mob/living/simple_mob/animal/passive/bird/parrot/budgerigar/bluegreen,
										/mob/living/simple_mob/animal/passive/bird/parrot/cockatiel,
										/mob/living/simple_mob/animal/passive/bird/parrot/cockatiel/white,
										/mob/living/simple_mob/animal/passive/bird/parrot/cockatiel/yellowish,
										/mob/living/simple_mob/animal/passive/bird/parrot/cockatiel/grey,
										/mob/living/simple_mob/animal/passive/bird/parrot/sulphur_cockatoo,
										/mob/living/simple_mob/animal/passive/bird/parrot/white_cockatoo,
										/mob/living/simple_mob/animal/passive/bird/parrot/pink_cockatoo))			//There's too dang many

GLOBAL_LIST_INIT(xenobio_cerulean_potions, list(
										/obj/item/slimepotion/enhancer,
										/obj/item/slimepotion/stabilizer,
										/obj/item/slimepotion/mutator,
										/obj/item/slimepotion/docility,
										/obj/item/slimepotion/steroid,
										/obj/item/slimepotion/unity,
										/obj/item/slimepotion/loyalty,
										/obj/item/slimepotion/friendship,
										/obj/item/slimepotion/feeding,
										/obj/item/slimepotion/infertility,
										/obj/item/slimepotion/fertility,
										/obj/item/slimepotion/shrink,
										/obj/item/slimepotion/death,
										/obj/item/slimepotion/ferality,
										/obj/item/slimepotion/reinvigoration,
										/obj/item/slimepotion/mimic,
										/obj/item/slimepotion/sapience,
										/obj/item/slimepotion/obedience))

GLOBAL_LIST_INIT(xenobio_rainbow_extracts, list(
										/obj/item/slime_extract/grey = 2,
										/obj/item/slime_extract/metal = 3,
										/obj/item/slime_extract/blue = 3,
										/obj/item/slime_extract/purple = 1,
										/obj/item/slime_extract/orange = 3,
										/obj/item/slime_extract/yellow = 3,
										/obj/item/slime_extract/gold = 3,
										/obj/item/slime_extract/silver = 3,
										/obj/item/slime_extract/dark_purple = 2,
										/obj/item/slime_extract/dark_blue = 3,
										/obj/item/slime_extract/red = 3,
										/obj/item/slime_extract/green = 3,
										/obj/item/slime_extract/pink = 3,
										/obj/item/slime_extract/oil = 3,
										/obj/item/slime_extract/bluespace = 3,
										/obj/item/slime_extract/cerulean = 1,
										/obj/item/slime_extract/amber = 3,
										/obj/item/slime_extract/sapphire = 3,
										/obj/item/slime_extract/ruby = 3,
										/obj/item/slime_extract/emerald = 3,
										/obj/item/slime_extract/light_pink = 1,
										/obj/item/slime_extract/rainbow = 1))


//// Wildlife lists
//Listed by-type. Under each type are lists of lists that contain 'groupings' of wildlife. Sorted from 1 to 5 by threat level.

GLOBAL_LIST_INIT(event_wildlife_aquatic, list(
										list(
												list(/mob/living/simple_mob/animal/passive/fish/koi = 1,
														/mob/living/simple_mob/animal/passive/fish/pike = 2,
														/mob/living/simple_mob/animal/passive/fish/perch = 2,
														/mob/living/simple_mob/animal/passive/fish/salmon = 2,
														/mob/living/simple_mob/animal/passive/fish/trout = 2,
														/mob/living/simple_mob/animal/passive/fish/bass = 3),
												list(/mob/living/simple_mob/animal/passive/fish/salmon = 1),
												list(/mob/living/simple_mob/animal/passive/fish/perch = 1),
												list(/mob/living/simple_mob/animal/passive/fish/trout = 1),
												list(/mob/living/simple_mob/animal/passive/fish/bass = 1),
												list(/mob/living/simple_mob/animal/passive/fish/pike = 1),
												list(/mob/living/simple_mob/animal/passive/crab = 1)
											),
										list(
												list(/mob/living/simple_mob/animal/sif/duck = 1),
												list(/mob/living/simple_mob/animal/passive/fish/measelshark = 1),
												list(/mob/living/simple_mob/vore/pakkun = 5,
														/mob/living/simple_mob/vore/pakkun/snapdragon = 1)
											),
										list(
												list(/mob/living/simple_mob/animal/space/goose = 10,
														/mob/living/simple_mob/animal/space/goose/white = 1),
												list(/mob/living/simple_mob/vore/alienanimals/space_jellyfish = 1)
											),
										list(
												list(/mob/living/simple_mob/animal/sif/hooligan_crab = 1)
											)
										))

GLOBAL_LIST_INIT(event_wildlife_roaming, list(
										list(
												list(/mob/living/simple_mob/animal/passive/mouse/jerboa = 1,
														/mob/living/simple_mob/animal/passive/mouse/black = 2,
														/mob/living/simple_mob/animal/passive/mouse/brown = 2,
														/mob/living/simple_mob/animal/passive/mouse/gray = 2,
														/mob/living/simple_mob/animal/passive/mouse/white = 2,
														/mob/living/simple_mob/animal/passive/mouse/rat/strong = 3), // CHOMPEdit
												list(/mob/living/simple_mob/animal/passive/bird/black_bird = 1,
														/mob/living/simple_mob/animal/passive/bird/azure_tit = 1,
														/mob/living/simple_mob/animal/passive/bird/european_robin = 1,
														/mob/living/simple_mob/animal/passive/bird/goldcrest = 1,
														/mob/living/simple_mob/animal/passive/bird/ringneck_dove = 1),
												list(/mob/living/simple_mob/animal/passive/dog/corgi = 4,
														/mob/living/simple_mob/animal/passive/dog/corgi/puppy = 1),
												list(/mob/living/simple_mob/vore/rabbit = 1),
												list(/mob/living/simple_mob/vore/redpanda = 14,
														/mob/living/simple_mob/vore/redpanda/fae = 7,
														/mob/living/simple_mob/vore/redpanda/blue = 1),
												list(/mob/living/simple_mob/animal/passive/cow = 1),
												list(/mob/living/simple_mob/animal/passive/chicken = 4,
														/mob/living/simple_mob/animal/passive/chick = 1),
												list(/mob/living/simple_mob/animal/passive/snake = 2,
														/mob/living/simple_mob/animal/passive/snake/red = 1,
														/mob/living/simple_mob/animal/passive/snake/python = 1)
											),
										list(
												list(/mob/living/simple_mob/vore/horse/big = 7,
														/mob/living/simple_mob/vore/horse = 2),
												list(/mob/living/simple_mob/vore/fennix = 1,
														/mob/living/simple_mob/vore/fennec = 4),
												list(/mob/living/simple_mob/vore/bee = 1),
												list(/mob/living/simple_mob/animal/passive/fox = 1),
												list(/mob/living/simple_mob/vore/sheep = 3,
														/mob/living/simple_mob/animal/goat = 1),
												list(/mob/living/simple_mob/vore/hippo = 1),
												list(/mob/living/simple_mob/vore/alienanimals/dustjumper = 1),
												list(/mob/living/simple_mob/vore/alienanimals/teppi = 1)
											),
										list(
												list(/mob/living/simple_mob/vore/aggressive/frog = 1),
												list(/mob/living/simple_mob/tomato = 1),
												list(/mob/living/simple_mob/vore/wolf = 1),
												list(/mob/living/simple_mob/vore/aggressive/dino = 1),
												list(/mob/living/simple_mob/animal/space/bats = 1)
											),
										list(
												list(/mob/living/simple_mob/animal/space/bear = 1),
												list(/mob/living/simple_mob/vore/aggressive/deathclaw = 1),
												list(/mob/living/simple_mob/vore/otie = 1),
												list(/mob/living/simple_mob/vore/aggressive/panther = 1),
												list(/mob/living/simple_mob/vore/aggressive/rat = 1),
												list(/mob/living/simple_mob/vore/aggressive/giant_snake = 1),
												list(/mob/living/simple_mob/vore/aggressive/corrupthound = 1)
											)
										))


GLOBAL_LIST_INIT(selectable_speech_bubbles, list(
	"default",
	"normal",
	"slime",
	"comm",
	"machine",
	"synthetic",
	"synthetic_evil",
	"cyber",
	"ghost",
	"slime_green",
	"slime_yellow",
	"slime_red",
	"slime_blue",
	"dark",
	"plant",
	"clown",
	"fox",
	"latte_fox",
	"blue_fox",
	"maus",
	"wolf",
	"red_panda",
	"blue_panda",
	"tentacles",
	"heart",
	"textbox",
	"possessed",		// CHOMPEDIT : purdev (spelling changed <3)
	"square",
	"medical",
	"medical_square",
	"cardiogram",
	"security",
	"notepad",
	"science",
	"engineering",
	"cargo"
	))



// AREA GENERATION AND BLUEPRINT STUFF BELOW HERE
// typecacheof(list) and list() are two completely separate things, don't break!

// WHATEVER YOU DO, DO NOT LEAVE THE LAST THING IN THE LIST BELOW HAVE A COMMA OR EVERYTHING EVER WILL BREAK
// ENSURE THE LAST AREA OR TURF LISTED IS SIMPLY "/area/clownhideout" AND NOT "/area/clownhideout," OR YOU WILL IMMEDIATELY DIE

// These lists are, obviously, unfinished.

// ALLOWING BUILDING IN AN AREA:
// If you want someone to be able to build a new area in a place, add the area to the 'GLOB.BUILDABLE_AREA_TYPES' and 'GLOB.blacklisted_areas'
// GLOB.BUILDABLE_AREA_TYPES means they can build an area there. The GLOB.blacklisted_areas means they CAN NOT EXPAND that area. No making space bigger!

// DISALLOW BUILDING/AREA MANIPULATION IN AN AREA (OR A TURF TYPE):
// Likewise, if you want someone to never ever EVER be able to do anything area generation/expansion related to an area
// Then add it to GLOB.SPECIALS and GLOB.area_or_turf_fail_types

// If you want someone to
GLOBAL_LIST_INIT(BUILDABLE_AREA_TYPES, list(
	/area/space,
	/area/mine
//	/area/surface/outside, 	//SC //CHOMP Comment - Actually these are causing compilation error.
//	/area/surface/cave,		//SC
//	/area/tether/surfacebase/outside,	//CHOMP Edit Downstreams, uncomment these if you are using these maps
//	/area/groundbase/unexplored/outdoors,
//	/area/maintenance/groundbase/level1,
//	/area/submap/groundbase/wilderness,
//	/area/groundbase/mining,
//	/area/offmap/aerostat/surface,
//	/area/tether_away/beach,
//	/area/tether_away/cave,
))

GLOBAL_LIST_INIT(blacklisted_areas, typecacheof(list(
	/area/space,
	/area/mine
//	/area/surface/outside,	//SC //CHOMP Comment - Actually these are causing compilation error.
//	/area/surface/cave,		//SC
	//TETHER STUFF BELOW THIS	//CHOMP Edit Downstreams, uncomment these if you are using these maps
//	/area/tether/surfacebase/outside,
	//GROUNDBASE STUFF BELOW THIS
//	/area/groundbase/unexplored/outdoors,
//	/area/maintenance/groundbase/level1,
//	/area/submap/groundbase/wilderness,
//	/area/groundbase/mining,
//	/area/offmap/aerostat/surface,
//	/area/tether_away/beach,
//	/area/tether_away/cave
	)))

GLOBAL_LIST_INIT(SPECIALS, list(
	/turf/space,
	/area/shuttle,
	/area/admin,
	/area/arrival,
	/area/centcom,
	/area/asteroid,
	/area/tdome,
	/area/syndicate_station,
	/area/wizard_station,
	/area/prison,
	/area/holodeck,
	/area/turbolift,
	/area/tether/elevator,
	/turf/unsimulated/wall/planetary,
	/area/submap/virgo2,
	/area/submap/event,
	/area/submap/casino_event,
	/area/vr
	// /area/derelict //commented out, all hail derelict-rebuilders!
))

GLOBAL_LIST_INIT(area_or_turf_fail_types, typecacheof(list(
	/turf/space,
	/area/shuttle,
	/area/admin,
	/area/arrival,
	/area/centcom,
	/area/asteroid,
	/area/tdome,
	/area/syndicate_station,
	/area/wizard_station,
	/area/prison,
	/area/holodeck,
	/turf/simulated/wall/elevator,
	/area/turbolift,
	/area/tether/elevator,
	/turf/unsimulated/wall/planetary,
	/area/submap/virgo2,
	/area/submap/event,
	/area/submap/casino_event,
	/area/vr //CHOMPedit
	)))

//GRIPPERS!!!
#define BASIC_GRIPPER \
	/obj/item/cell, \
	/obj/item/airlock_electronics, \
	/obj/item/tracker_electronics, \
	/obj/item/module/power_control, \
	/obj/item/bluespace_crystal, \
	/obj/item/stock_parts, \
	/obj/item/frame, \
	/obj/item/camera_assembly, \
	/obj/item/tank, \
	/obj/item/circuitboard, \
	/obj/item/smes_coil, \
	/obj/item/fuel_assembly, \
	/obj/item/stack/tile/floor

#define OMNI_GRIPPER \
	/obj/item

#define MINER_GRIPPER \
	/obj/item/cell, \
	/obj/item/stock_parts

#define SECURITY_GRIPPER \
	/obj/item/paper, \
	/obj/item/paper_bundle, \
	/obj/item/pen, \
	/obj/item/sample, \
	/obj/item/forensics/sample_kit, \
	/obj/item/taperecorder, \
	/obj/item/rectape, \
	/obj/item/uv_light

#define PAPERWORK_GRIPPER \
	/obj/item/clipboard, \
	/obj/item/paper, \
	/obj/item/paper_bundle, \
	/obj/item/card/id, \
	/obj/item/book, \
	/obj/item/newspaper

#define MEDICAL_GRIPPER \
	/obj/item/reagent_containers/glass, \
	/obj/item/storage/pill_bottle, \
	/obj/item/reagent_containers/pill, \
	/obj/item/reagent_containers/blood, \
	/obj/item/nif, \
	/obj/item/stack/material/phoron, \
	/obj/item/tank/anesthetic, \
	/obj/item/disk/body_record

#define RESEARCH_GRIPPER \
	/obj/item/cell, \
	/obj/item/stock_parts, \
	/obj/item/mmi, \
	/obj/item/robot_parts, \
	/obj/item/borg/upgrade, \
	/obj/item/flash, \
	/obj/item/disk, \
	/obj/item/circuitboard, \
	/obj/item/reagent_containers/glass, \
	/obj/item/assembly/prox_sensor, \
	/obj/item/healthanalyzer, \
	/obj/item/slime_cube, \
	/obj/item/slime_crystal, \
	/obj/item/disposable_teleporter/slime, \
	/obj/item/slimepotion, \
	/obj/item/slime_extract, \
	/obj/item/reagent_containers/food/snacks/monkeycube

#define CIRCUIT_GRIPPER \
	/obj/item/cell/device, \
	/obj/item/electronic_assembly, \
	/obj/item/assembly/electronic_assembly, \
	/obj/item/clothing/under/circuitry, \
	/obj/item/clothing/gloves/circuitry, \
	/obj/item/clothing/glasses/circuitry, \
	/obj/item/clothing/shoes/circuitry, \
	/obj/item/clothing/head/circuitry, \
	/obj/item/clothing/ears/circuitry, \
	/obj/item/clothing/suit/circuitry, \
	/obj/item/implant/integrated_circuit, \
	/obj/item/integrated_circuit

#define SERVICE_GRIPPER \
	/obj/item/reagent_containers/glass, \
	/obj/item/reagent_containers/food, \
	/obj/item/seeds, \
	/obj/item/grown, \
	/obj/item/trash, \
	/obj/item/reagent_containers/cooking_container

#define GRAVEYARD_GRIPPER \
	/obj/item/seeds, \
	/obj/item/grown, \
	/obj/item/material/gravemarker

#define SCENE_GRIPPER \
	/obj/item/capture_crystal, \
	/obj/item/clothing, \
	/obj/item/implanter, \
	/obj/item/disk/nifsoft/compliance, \
	/obj/item/handcuffs, \
	/obj/item/toy, \
	/obj/item/petrifier, \
	/obj/item/dice, \
	/obj/item/casino_platinum_chip, \
	/obj/item/spacecasinocash

#define ORGAN_GRIPPER \
	/obj/item/organ, \
	/obj/item/nif

#define ROBOTICS_ORGAN_GRIPPER \
	/obj/item/organ/external, \
	/obj/item/organ/internal/brain, \
	/obj/item/organ/internal/cell, \
	/obj/item/organ/internal/eyes/robot, \
	/obj/item/nif

#define EXOSUIT_GRIPPER \
	/obj/item/mecha_parts/part, \
	/obj/item/mecha_parts/micro/part, \
	/obj/item/mecha_parts/mecha_equipment, \
	/obj/item/mecha_parts/mecha_tracking, \
	/obj/item/mecha_parts/component

#define SHEET_GRIPPER \
	/obj/item/stack/material

GLOBAL_LIST_INIT(all_borg_multitool_options, list(
	/obj/item/tool/screwdriver/cyborg,
	/obj/item/tool/wrench/cyborg,
	/obj/item/tool/crowbar/cyborg,
	/obj/item/tool/wirecutters/cyborg,
	/obj/item/multitool/cyborg,
	/obj/item/weldingtool/electric/mounted/cyborg,
	/obj/item/surgical/retractor/cyborg,
	/obj/item/surgical/hemostat/cyborg,
	/obj/item/surgical/cautery/cyborg,
	/obj/item/surgical/surgicaldrill/cyborg,
	/obj/item/surgical/scalpel/cyborg,
	/obj/item/surgical/circular_saw/cyborg,
	/obj/item/surgical/bonegel/cyborg,
	/obj/item/surgical/FixOVein/cyborg,
	/obj/item/surgical/bonesetter/cyborg,
	/obj/item/surgical/bioregen/cyborg,
	/obj/item/autopsy_scanner,
	/obj/item/material/minihoe/cyborg,
	/obj/item/material/knife/machete/hatchet/cyborg,
	/obj/item/analyzer/plant_analyzer/cyborg,
	/obj/item/material/knife/cyborg,
	/obj/item/robot_harvester,
	/obj/item/material/kitchen/rollingpin/cyborg,
	/obj/item/reagent_containers/spray,
))

GLOBAL_LIST_INIT(material_synth_list, list(
								METAL_SYNTH = /datum/matter_synth/metal,
								PLASTEEL_SYNTH = /datum/matter_synth/plasteel,
								GLASS_SYNTH = /datum/matter_synth/glass,
								WOOD_SYNTH = /datum/matter_synth/wood,
								PLASTIC_SYNTH = /datum/matter_synth/plastic,
								WIRE_SYNTH = /datum/matter_synth/wire,
								CLOTH_SYNTH = /datum/matter_synth/cloth
							))
