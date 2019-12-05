; this function temporarily makes the starters (Pikachu and Eevee) seen
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	ld a, %00000010;01001011 ; set starter flags
	ld [wPokedexOwned+3], a
	ld a, %00100000
	ld [wPokedexOwned+19], a
	predef ShowPokedexData
	xor a ; unset starter flags
	ld [wPokedexOwned+3], a
	ld [wPokedexOwned+19], a
	ret

;11111111 11111111 11111111 00000010 32
;11111111 11111111 11111111 00000010 64
;11111111 11111111 11111111 00000010 96
;11111111 11111111 11111111 00000010 128
;11111111 11111111 11111111 00100000 160
