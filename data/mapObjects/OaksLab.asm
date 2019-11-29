OaksLab_Object:
	db $3 ; border block

	db 2 ; warps
	warp 4, 11, 2, -1
	warp 5, 11, 2, -1

	db 0 ; signs

	db 10 ; objects
	object SPRITE_BLUE,     4, 3,  STAY, NONE, 1, OPP_SONY1, 1
	object SPRITE_BALL,     6, 3,  STAY, NONE, 2  ; Pikachu Ball
	object SPRITE_BALL,     8, 3,  STAY, NONE, 3  ; Eevee Ball
	object SPRITE_OAK,      5, 2,  STAY, DOWN, 4  ; Oak (Main)
	object SPRITE_POKEDEX,  2, 1,  STAY, NONE, 5  ; Pokedex
	object SPRITE_POKEDEX,  3, 1,  STAY, NONE, 6  ; Pokedex
	object SPRITE_OAK,      5, 10, STAY, UP,   7  ; Oak (Intro)
	object SPRITE_GIRL,     1, 9,  WALK, 1,    8  ; person
	object SPRITE_OAK_AIDE, 2, 10, STAY, NONE, 9  ; person
	object SPRITE_OAK_AIDE, 8, 10, STAY, NONE, 10 ; person

	; warp-to
	warp_to 4, 11, OAKS_LAB_WIDTH
	warp_to 5, 11, OAKS_LAB_WIDTH
