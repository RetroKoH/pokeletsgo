GymLeaderDataPointers:
	dw BrockGymData
	dw MistyGymData
	dw LtSurgeGymData
	dw ErikaGymData
	dw KogaGymData
	dw SabrinaGymData
	dw BlaineGymData

; LEAGUE BATTLES: Gym leaders will choose 3 out of 6 randomly. Three from the first pool. Two from the second, and their main last.
	; first byte is level of all pokemon in this selection pool
	; all the next bytes are pokemon species

BrockGymData: ; ZERO BADGES (In sequential order)
	db 1, GEODUDE, OMANYTE, ZUBAT
	db 2, KABUTO,  VULPIX
	db 3, ONIX
; ONE BADGE
	db 18, GEODUDE, OMANYTE, ZUBAT
	db 19, KABUTO,  VULPIX
	db 21, ONIX
; TWO BADGES
	db 25, GEODUDE, OMANYTE, GOLBAT
	db 26, KABUTO,  VULPIX
	db 28, ONIX
; THREE BADGES
	db 31, GRAVELER, OMANYTE, GOLBAT
	db 33, KABUTO,  VULPIX
	db 34, ONIX
; FOUR BADGES
	db 38, GRAVELER, OMANYTE, GOLBAT
	db 39, KABUTO,  NINETALES
	db 40, ONIX
; FIVE BADGES
	db 42, GRAVELER, OMANYTE, CROBAT
	db 44, KABUTO,  NINETALES
	db 45, ONIX
; SIX BADGES
	db 45, GOLEM, OMASTAR, CROBAT
	db 46, KABUTOPS,  NINETALES
	db 48, ONIX
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, GOLEM, OMASTAR, CROBAT
	db 54, KABUTOPS,  NINETALES
	db 55, ONIX

MistyGymData: ; ZERO BADGES
	db 11, PSYDUCK, SEEL, EXEGGCUTE
	db 12, HORSEA,  DIGLETT
	db 14, STARYU
; ONE BADGE (In sequential order)
	db 18, PSYDUCK, SEEL, EXEGGCUTE
	db 19, HORSEA,  DIGLETT
	db 21, STARMIE
; TWO BADGES
	db 25, PSYDUCK, SEEL, EXEGGCUTE
	db 26, HORSEA,  DUGTRIO
	db 28, STARMIE
; THREE BADGES
	db 31, GOLDUCK, SEEL, EXEGGUTOR
	db 33, HORSEA,  DUGTRIO
	db 34, STARMIE
; FOUR BADGES
	db 38, GOLDUCK, DEWGONG, EXEGGUTOR
	db 39, SEADRA,  DUGTRIO
	db 40, STARMIE
; FIVE BADGES
	db 42, GOLDUCK, DEWGONG, EXEGGUTOR
	db 44, SEADRA,  DUGTRIO
	db 45, STARMIE
; SIX BADGES
	db 45, GOLDUCK, DEWGONG, EXEGGUTOR
	db 46, KINGDRA, DUGTRIO
	db 48, STARMIE
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, GOLDUCK, DEWGONG, EXEGGUTOR
	db 54, KINGDRA, DUGTRIO
	db 55, STARMIE

LtSurgeGymData: ; ZERO BADGES
	db 11, VOLTORB, MAGNEMITE, TANGELA
	db 12, ELEKID,  POLIWAG
	db 14, PIKACHU
; ONE BADGE
	db 18, VOLTORB, MAGNEMITE, TANGELA
	db 19, ELECTABUZZ, POLIWAG
	db 21, PIKACHU
; TWO BADGES (In sequential order)
	db 25, VOLTORB, MAGNEMITE, TANGELA
	db 26, ELECTABUZZ, POLIWHIRL
	db 28, RAICHU
; THREE BADGES
	db 31, VOLTORB, MAGNEMITE, TANGELA
	db 33, ELECTABUZZ, POLIWHIRL
	db 34, RAICHU
; FOUR BADGES
	db 38, ELECTRODE, MAGNETON, TANGROWTH
	db 39, ELECTABUZZ, POLIWHIRL
	db 40, RAICHU
; FIVE BADGES
	db 42, ELECTRODE, MAGNETON, TANGROWTH
	db 44, ELECTABUZZ, POLIWHIRL
	db 45, RAICHU
; SIX BADGES
	db 45, ELECTRODE, MAGNETON, TANGROWTH
	db 46, ELECTIVIRE, POLIWRATH
	db 48, RAICHU
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, ELECTRODE, MAGNETON, TANGROWTH
	db 54, ELECTIVIRE, POLIWRATH
	db 55, RAICHU

ErikaGymData:
; ZERO BADGES
	db 11, PARAS, CLEFAIRY, TANGELA
	db 12, BELLSPROUT, EEVEE
	db 14, ODDISH
; ONE BADGE
	db 18, PARAS, CLEFAIRY, TANGELA
	db 19, BELLSPROUT, EEVEE
	db 21, GLOOM
; TWO BADGES
	db 25, PARAS, CLEFAIRY, TANGELA
	db 26, WEEPINBELL, VAPOREON
	db 28, GLOOM
; THREE BADGES (In sequential order)
	db 31, PARASECT, CLEFABLE, TANGELA
	db 33, WEEPINBELL, VAPOREON
	db 34, VILEPLUME
; FOUR BADGES
	db 38, PARASECT, CLEFABLE, TANGROWTH
	db 39, WEEPINBELL, VAPOREON
	db 40, VILEPLUME
; FIVE BADGES
	db 42, PARASECT, CLEFABLE, TANGROWTH
	db 44, VICTREEBEL, VAPOREON
	db 45, VILEPLUME
; SIX BADGES
	db 45, PARASECT, CLEFABLE, TANGROWTH
	db 46, VICTREEBEL, VAPOREON
	db 48, VILEPLUME
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, PARASECT, CLEFABLE, TANGROWTH
	db 54, VICTREEBEL, VAPOREON
	db 55, VILEPLUME

KogaGymData:
; ZERO BADGES
	db 11, KOFFING, ZUBAT, LAPRAS
	db 12, GRIMER, DROWZEE
	db 14, VENONAT
; ONE BADGE
	db 18, KOFFING, ZUBAT, LAPRAS
	db 19, GRIMER, DROWZEE
	db 21, VENONAT
; TWO BADGES
	db 25, KOFFING, ZUBAT, LAPRAS
	db 26, GRIMER, HYPNO
	db 28, VENONAT
; THREE BADGES
	db 31, KOFFING, GOLBAT, LAPRAS
	db 33, GRIMER, HYPNO
	db 34, VENOMOTH
; FOUR BADGES (In sequential order)
	db 38, WEEZING, GOLBAT, LAPRAS
	db 39, MUK, HYPNO
	db 40, VENOMOTH
; FIVE BADGES
	db 42, WEEZING, CROBAT, LAPRAS
	db 44, MUK, HYPNO
	db 45, VENOMOTH
; SIX BADGES
	db 45, WEEZING, CROBAT, LAPRAS
	db 46, MUK, HYPNO
	db 48, VENOMOTH
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, WEEZING, CROBAT, LAPRAS
	db 54, MUK, HYPNO
	db 55, VENOMOTH

SabrinaGymData:
; ZERO BADGES
	db 13, SLOWPOKE, MIME_JR, VENONAT     ; Sabrina strongly dislikes conflict and fighting. She only fights to hone her power, or if she's threatened.
	db 14, SMOOCHUM, IGGLYBUFF            ; She is mentally in sync with all of her Pokemon. All of them can make use of Psychic power in one way or another.
	db 16, KADABRA                        ; She always stays holed up in her gym, though she may telepathically connect to the player in some instances.
; ONE BADGE                                      ; She is stoic in nature, and her Pokemon are somewhat slow to accumulate Happiness, though she does care for them well.
	db 18, SLOWPOKE, MIME_JR, VENONAT
	db 19, SMOOCHUM, IGGLYBUFF            ; Slowbro sparks Sabrina's curiousity, due to legends of its yawns bringing rain. she is determined to unlock its hidden potential.
	db 21, KADABRA                        ; The Mime family of Pokemon are a favorite of hers. She utilizes them to protect her Gym and family from intruders.
; TWO BADGES                                     ; Venomoth is a longtime favorite of Sabrina's. It has Psychic power, and can counter Dark types too.
	db 25, SLOWPOKE, MIME_JR, VENONAT     ; Jynx is a utility Pokemon Sabrina likes to utilize. She especially likes to use it against Dragons.
	db 26, JYNX, JIGGLYPUFF               ; Wigglytuff was brought onto Sabrina's team as it also counters Fighting types. She adores the Fairy-types, overall.
	db 28, KADABRA                        ; Alakazam is her signature Pokemon, and is her primary form of transportation, via Teleport.
; THREE BADGES
	db 31, SLOWPOKE, MIME_JR, VENOMOTH
	db 33, JYNX, JIGGLYPUFF
	db 34, KADABRA
; FOUR BADGES
	db 38, SLOWPOKE, MR_MIME, VENOMOTH
	db 39, JYNX, JIGGLYPUFF
	db 40, KADABRA
; FIVE BADGES (In sequential order)
	db 42, SLOWBRO, MR_MIME, VENOMOTH
	db 44, JYNX, WIGGLYTUFF
	db 45, ALAKAZAM
; SIX BADGES
	db 45, SLOWBRO, MR_MIME, VENOMOTH
	db 46, JYNX, WIGGLYTUFF
	db 48, ALAKAZAM
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, SLOWBRO, MR_MIME, VENOMOTH
	db 54, JYNX, WIGGLYTUFF
	db 55, ALAKAZAM

BlaineGymData:
; ZERO BADGES
	db 11, MAGBY, PONYTA, PARAS
	db 12, VULPIX, KANGASKHAN
	db 14, GROWLITHE
; ONE BADGE
	db 18, MAGMAR, PONYTA, PARAS
	db 19, VULPIX, KANGASKHAN
	db 21, GROWLITHE
; TWO BADGES
	db 25, MAGMAR, PONYTA, PARASECT
	db 26, VULPIX, KANGASKHAN
	db 28, GROWLITHE
; THREE BADGES
	db 31, MAGMAR, PONYTA, PARASECT
	db 33, VULPIX, KANGASKHAN
	db 34, GROWLITHE
; FOUR BADGES
	db 38, MAGMAR, PONYTA, PARASECT
	db 39, VULPIX, KANGASKHAN
	db 40, GROWLITHE
; FIVE BADGES
	db 42, MAGMORTAR, RAPIDASH, PARASECT
	db 44, NINETALES, KANGASKHAN
	db 45, ARCANINE
; SIX BADGES (In sequential order)
	db 45, MAGMORTAR, RAPIDASH, PARASECT
	db 46, NINETALES, KANGASKHAN
	db 48, ARCANINE
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, MAGMORTAR, RAPIDASH, PARASECT
	db 54, NINETALES, KANGASKHAN
	db 55, ARCANINE
