/*
 *	Brass Tools
 */

//Crowbar
/obj/item/tool/crowbar/brass
	icon_state = "crowbar_brass"
	item_state = "crowbar"

//Cutters
/obj/item/tool/wirecutters/brass
	icon_state = "cutters_brass"
	item_state = "cutters_yellow"
	random_color = FALSE // CHOMPFix, no more not-brass brass tools.

//Screwdriver
/obj/item/tool/screwdriver/brass
	icon_state = "screwdriver_brass"
	item_state = "screwdriver_black"
	random_color = FALSE // CHOMPFix, no more not-brass brass tools.

//Wrench
/obj/item/tool/wrench/brass
	icon_state = "wrench_brass"
	item_state = "wrench_brass"

//Welder
/obj/item/weldingtool/brass
	name = "brass welding tool"
	desc = "A welder made from brass fittings."
	icon_state = "brasswelder"
	max_fuel = 20
	origin_tech = list(TECH_ENGINEERING = 2, TECH_PHORON = 2)
	matter = list(MAT_STEEL = 70, MAT_GLASS = 60)
