/*
//////////////////////////////////////

Shivering

	No change to hidden.
	Increases resistance.
	Increases stage speed.
	Little transmittable.
	Low level.

Bonus
	Cools down your body.

//////////////////////////////////////
*/

/datum/symptom/shivering
	name = "Shivering"
	stealth = 0
	resistance = 2
	stage_speed = 2
	transmittable = 2
	level = 2
	severity = 2

/datum/symptom/shivering/Activate(datum/disease/advance/A)
	..()
	if(prob(SYMPTOM_ACTIVATION_PROB))
		var/mob/living/L = A.affected_mob
		to_chat(L, span_warning(pick("You feel cold.", "You start shivering.")))
		if(L.bodytemperature > BODYTEMP_COLD_DAMAGE_LIMIT)
			Chill(L, A)
	return

/datum/symptom/shivering/proc/Chill(mob/living/M, datum/disease/advance/A)
	var/get_cold = (sqrtor0(16+A.totalStealth()*2))+(sqrtor0(21+A.totalResistance()*2))
	M.bodytemperature = max(M.bodytemperature - (get_cold * A.stage), BODYTEMP_COLD_DAMAGE_LIMIT + 1)
	return 1
