/turf/open/floor/plating/vampgrass/random // All
	MAP_SWITCH(icon_state = "grass1", icon_state = "grass_autodec")
	var/autodecor = list(/obj/structure/flora/ausbushes,
		/obj/structure/small_vamprocks)
	var/autodecor_list = list()

/turf/open/floor/plating/vampgrass/random/grass // Just grass
	MAP_SWITCH(icon_state = "grass1", icon_state = "grass_autodec_grass")
	autodecor = list(/obj/structure/flora/ausbushes/fullgrass, /obj/structure/flora/ausbushes/shortgrass, /obj/structure/flora/ausbushes/sparsegrass, /obj/structure/flora/grass/green)


/turf/open/floor/plating/vampgrass/random/bushes // No rocks
	MAP_SWITCH(icon_state = "grass1", icon_state = "grass_autodec_bushes")
	autodecor = list(/obj/structure/flora/ausbushes)


/turf/open/floor/plating/vampgrass/random/rocks // Just rocks
	MAP_SWITCH(icon_state = "grass1", icon_state = "grass_autodec_rocks")
	autodecor = list(/obj/structure/small_vamprocks)


/turf/open/floor/plating/vampgrass/random/proc/spawn_autodecor(turf/T)
	for(var/O in autodecor) // O = list of types
		var/list/L = typesof(O) // L = all subtypes of current O
		for(var/D in L) // D = a single type in L
			autodecor_list += D // Add D to the list of candidates to spawn

	if(prob(33)) // Chance might need tweaked
		var/decor = safepick(autodecor_list) // Pick a candidate
		new decor (T)


/turf/open/floor/plating/vampgrass/random/Initialize(mapload)
	. = ..()

	spawn_autodecor(src)

/turf/open/floor/plating/vampgrass/random/snow
	MAP_SWITCH(icon_state = "snow1", icon_state = "snow_autodec")

/turf/open/floor/plating/vampgrass/random/snow/Initialize(mapload)
	. = ..()
	icon_state = "snow[rand(1,14)]"

/turf/open/floor/plating/vampgrass/random/snow/grass
	MAP_SWITCH(icon_state = "snow1", icon_state = "snow_autodec_grass")
	autodecor = list(/obj/structure/flora/ausbushes/fullgrass, /obj/structure/flora/ausbushes/shortgrass, /obj/structure/flora/ausbushes/sparsegrass, /obj/structure/flora/grass/green)

/turf/open/floor/plating/vampgrass/random/snow/bushes // No rocks
	MAP_SWITCH(icon_state = "snow1", icon_state = "snow_autodec_bushes")
	autodecor = list(/obj/structure/flora/ausbushes)


/turf/open/floor/plating/vampgrass/random/snow/rocks // Just rocks
	MAP_SWITCH(icon_state = "snow1", icon_state = "snow_autodec_rocks")
	autodecor = list(/obj/structure/small_vamprocks)
