; Helper functions for oak intro

GetNidorinoPalID:
	call ClearScreen
	ld a, PAL_NIDORINO
	jr GotIntroMonPalID

GetRedPalID:
	call ClearScreen
	ld a, PAL_HERO
	jr GotIntroTrainerPalID

GetRivalPalID:
	call ClearScreen
	ld a, PAL_GARY1
	jr GotIntroTrainerPalID

GotIntroMonPalID:
	ld e,0
	ld d,a

	ld a,2
	ld [rSVBK],a
	CALL_INDIRECT LoadPokemonPalette
	xor a
	ld [rSVBK],a
	ret

GotIntroTrainerPalID:
	ld e,0
	ld d,a

	ld a,2
	ld [rSVBK],a
	CALL_INDIRECT LoadTrainerPalette
	xor a
	ld [rSVBK],a
	ret

