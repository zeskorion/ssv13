/datum/disease2/disease
	var/infectionchance = 70
	var/speed = 1
	var/spreadtype = "Blood" // Can also be "Contact" or "Airborne"
	var/stage = 1
	var/stageprob = 10
	var/dead = 0
	var/clicks = 0
	var/uniqueID = 0
	var/list/datum/disease2/effectholder/effects = list()
	var/antigen = list() // 16 bits describing the antigens, when one bit is set, a cure with that bit can dock here
	var/max_stage = 4
	var/list/affected_species = list(SPECIES_HUMAN,SPECIES_UNATHI,SPECIES_SKRELL,SPECIES_TAJARAN)
	var/resistance = 10 // % chance a disease will resist cure, up to 100
	var/name // CHOMPEdit - For custom built diseases.

/datum/disease2/disease/New()
	uniqueID = rand(0,10000)
	..()

/datum/disease2/disease/proc/makerandom(var/severity=1)
	var/list/excludetypes = list()
	for(var/i=1 ; i <= max_stage ; i++ )
		var/datum/disease2/effectholder/holder = new /datum/disease2/effectholder
		holder.stage = i
		holder.getrandomeffect(severity, excludetypes)
		excludetypes += holder.effect.type
		effects += holder
	uniqueID = rand(0,10000)
	switch(severity)
		if(1)
			infectionchance = 1
		if(2)
			infectionchance = rand(10,20)
		else
			infectionchance = rand(60,90)

	antigen = list(pick(ALL_ANTIGENS))
	antigen |= pick(ALL_ANTIGENS)
	spreadtype = prob(70) ? "Airborne" : "Contact"
	resistance = rand(15,70)

	if(severity >= 2 && prob(33))
		resistance += 10

	if(GLOB.all_species.len)
		affected_species = get_all_infectable_species() // CHOMPEdit

/proc/get_infectable_species()
	var/list/meat = list()
	var/list/res = list()
	for (var/specie in GLOB.all_species)
		var/datum/species/S = GLOB.all_species[specie]
		if(!S.get_virus_immune())
			meat += S
	if(meat.len)
		var/num = rand(1,meat.len)
		for(var/i=0,i<num,i++)
			var/datum/species/picked = pick_n_take(meat)
			res |= picked.name
			if(picked.greater_form)
				res |= picked.greater_form
			if(picked.primitive_form)
				res |= picked.primitive_form
	return res

/datum/disease2/disease/proc/activate(var/mob/living/carbon/mob)
	if(dead)
		cure(mob)
		return

	if(mob.stat == 2)
		return
	if(stage <= 1 && clicks == 0) 	// with a certain chance, the mob may become immune to the disease before it starts properly
		if(prob(5))
			mob.antibodies |= antigen // 20% immunity is a good chance IMO, because it allows finding an immune person easily

	// Some species are flat out immune to organic viruses.
	var/mob/living/carbon/human/H = mob
	if(istype(H) && H.species.get_virus_immune(H))
		cure(mob)
		return

	if(mob.radiation > 50)
		if(prob(1))
			majormutate()

	//Space antibiotics have a good chance to stop disease completely
	if(mob.chem_effects[CE_ANTIBIOTIC])
		if(stage == 1 && prob(70-resistance))
			src.cure(mob)
		else
			resistance += rand(1,9)

	//VOREStation Add Start - Corophazine can treat higher stages
	var/antibiotics = mob.chem_effects[CE_ANTIBIOTIC]
	if(antibiotics == ANTIBIO_SUPER)
		if(prob(70))
			src.cure(mob)
	//VOREStation Add End

	//Resistance is capped at 90 without being manually set to 100
	if(resistance > 90 && resistance < 100)
		resistance = 90


	//Virus food speeds up disease progress
	if(mob.reagents.has_reagent("virusfood"))
		mob.reagents.remove_reagent("virusfood",0.1)
		clicks += 10

	if(prob(1) && prob(stage)) // Increasing chance of curing as the virus progresses
		src.cure(mob)
		mob.antibodies |= src.antigen

	//Moving to the next stage
	if(clicks > max(stage*100, 200) && prob(10))
		if((stage <= max_stage) && prob(5)) // ~20% of viruses will be cured by the end of S4 with this
			src.cure(mob)
			mob.antibodies |= src.antigen
		stage++
		clicks = 0

	//Do nasty effects
	for(var/datum/disease2/effectholder/e in effects)
		if(prob(33))
			e.runeffect(mob,stage)

	//Short airborne spread
	if(src.spreadtype == "Airborne")
		for(var/mob/living/carbon/M in oview(1,mob))
			if(airborne_can_reach(get_turf(mob), get_turf(M)))
				infect_virus2(M,src)

	//fever
	mob.bodytemperature = max(mob.bodytemperature, min(310+5*min(stage,max_stage) ,mob.bodytemperature+5*min(stage,max_stage)))
	clicks+=speed

/datum/disease2/disease/proc/cure(var/mob/living/carbon/mob)
	for(var/datum/disease2/effectholder/e in effects)
		e.effect.deactivate(mob)
	mob.virus2.Remove("[uniqueID]")
	BITSET(mob.hud_updateflag, STATUS_HUD)

/datum/disease2/disease/proc/minormutate()
	//uniqueID = rand(0,10000)
	var/datum/disease2/effectholder/holder = pick(effects)
	holder.minormutate()
	//infectionchance = min(50,infectionchance + rand(0,10))

/datum/disease2/disease/proc/majormutate()
	uniqueID = rand(0,10000)
	name = null // CHOMPEdit - Not the same one anymore.
	var/datum/disease2/effectholder/holder = pick(effects)
	var/list/exclude = list()
	for(var/datum/disease2/effectholder/D in effects)
		if(D != holder)
			exclude += D.effect.type
	holder.majormutate(exclude)
	if (prob(5) && prob(100-resistance)) // The more resistant the disease,the lower the chance of randomly developing the antibodies
		antigen = list(pick(ALL_ANTIGENS))
		antigen |= pick(ALL_ANTIGENS)
	if (prob(5) && GLOB.all_species.len)
		affected_species = get_infectable_species()
	if (prob(10))
		resistance += rand(1,9)
		if(resistance > 90 && resistance < 100)
			resistance = 90

/datum/disease2/disease/proc/getcopy()
	var/datum/disease2/disease/disease = new /datum/disease2/disease
	disease.infectionchance = infectionchance
	disease.spreadtype = spreadtype
	disease.stageprob = stageprob
	disease.antigen   = antigen
	disease.uniqueID = uniqueID
	disease.name = name // CHOMPEdit - Copy our name as well.
	disease.resistance = resistance
	disease.affected_species = affected_species.Copy()
	for(var/datum/disease2/effectholder/holder in effects)
		var/datum/disease2/effectholder/newholder = new /datum/disease2/effectholder
		newholder.effect = new holder.effect.type
		newholder.effect.generate(holder.effect.data)
		newholder.chance = holder.chance
		newholder.cure = holder.cure
		newholder.multiplier = holder.multiplier
		newholder.happensonce = holder.happensonce
		newholder.stage = holder.stage
		disease.effects += newholder
	return disease

/datum/disease2/disease/proc/issame(var/datum/disease2/disease/disease)
	var/list/types = list()
	var/list/types2 = list()
	for(var/datum/disease2/effectholder/d in effects)
		types += d.effect.type
	var/equal = 1

	for(var/datum/disease2/effectholder/d in disease.effects)
		types2 += d.effect.type

	for(var/type in types)
		if(!(type in types2))
			equal = 0

	if (antigen != disease.antigen)
		equal = 0
	return equal

/proc/virus_copylist(var/list/datum/disease2/disease/viruses)
	var/list/res = list()
	for (var/ID in viruses)
		var/datum/disease2/disease/V = viruses[ID]
		res["[V.uniqueID]"] = V.getcopy()
	return res


var/global/list/virusDB = list()

/datum/disease2/disease/proc/name()
	if(name) // CHOMPEdit - Lets use our name
		.= "[name]"
	else // CHOMPEdit - ...unless we're an undiscovered disease.
		.= "stamm #[add_zero("[uniqueID]", 4)]"
	if ("[uniqueID]" in virusDB)
		var/datum/data/record/V = virusDB["[uniqueID]"]
		.= V.fields["name"]

/datum/disease2/disease/proc/get_basic_info()
	var/t = ""
	for(var/datum/disease2/effectholder/E in effects)
		t += ", [E.effect.name]"
	return "[name()] ([copytext(t,3)])"

/datum/disease2/disease/proc/get_info()
	var/r = {"
	<small>Analysis determined the existence of a GNAv2-based viral lifeform.</small><br>
	<u>Designation:</u> [name()]<br>
	<u>Antigen:</u> [antigens2string(antigen)]<br>
	<u>Transmitted By:</u> [spreadtype]<br>
	<u>Rate of Progression:</u> [stageprob * 10]<br>
	<u>Antibiotic Resistance</u> [resistance]% <br>
	<u>Species Affected:</u> [jointext(affected_species, ", ")]<br>
"}

	r += "<u>Symptoms:</u><br>"
	for(var/datum/disease2/effectholder/E in effects)
		r += "([E.stage]) [E.effect.name]    "
		r += "<small><u>Strength:</u> [E.multiplier >= 3 ? "Severe" : E.multiplier > 1 ? "Above Average" : "Average"]    "
		r += "<u>Aggressiveness:</u> [E.chance * 15]</small><br>"

	return r

/datum/disease2/disease/proc/get_tgui_info()
	. = list(
		"name" = name(),
		"spreadtype" = spreadtype,
		"antigen" = antigens2string(antigen),
		"rate" = stageprob * 10,
		"resistance" = resistance,
		"species" = jointext(affected_species, ", "),
		"ref" = "\ref[src]",
	)

	var/list/symptoms = list()
	for(var/datum/disease2/effectholder/E in effects)
		symptoms.Add(list(list(
			"stage" = E.stage,
			"name" = E.effect.name,
			"strength" = "[E.multiplier >= 3 ? "Severe" : E.multiplier > 1 ? "Above Average" : "Average"]",
			"aggressiveness" = E.chance * 15,
		)))
	.["symptoms"] = symptoms

/datum/disease2/disease/proc/addToDB()
	if ("[uniqueID]" in virusDB)
		return 0
	var/datum/data/record/v = new()
	v.fields["id"] = uniqueID
	v.fields["name"] = name()
	v.fields["description"] = get_info()
	v.fields["tgui_description"] = get_tgui_info()
	v.fields["tgui_description"]["record"] = "\ref[v]"
	v.fields["antigen"] = antigens2string(antigen)
	v.fields["spread type"] = spreadtype
	virusDB["[uniqueID]"] = v
	return 1

/proc/virus2_lesser_infection()
	var/list/candidates = list()	//list of candidate keys

	for(var/mob/living/carbon/human/G in player_list)
		if(G.client && G.stat != DEAD && !isbelly(G.loc))
			candidates += G

	if(!candidates.len)	return

	candidates = shuffle(candidates)

	infect_mob_random_lesser(candidates[1])

/proc/virus2_greater_infection()
	var/list/candidates = list()	//list of candidate keys

	for(var/mob/living/carbon/human/G in player_list)
		if(G.client && G.stat != DEAD && !isbelly(G.loc))
			candidates += G
	if(!candidates.len)	return

	candidates = shuffle(candidates)

	infect_mob_random_greater(candidates[1])

/proc/virology_letterhead(var/report_name)
	return {"
		<center><h1><b>[report_name]</b></h1></center>
		<center><small><i>[station_name()] Virology Lab</i></small></center>
		<hr>
"}

/datum/disease2/disease/proc/can_add_symptom(type)
	for(var/datum/disease2/effectholder/H in effects)
		if(H.effect.type == type)
			return 0

	return 1
