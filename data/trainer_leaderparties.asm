GymLeaderDataPointers:
	dw BrockGymData
	dw MistyGymData
	dw LtSurgeGymData
	dw ErikaGymData
	dw KogaGymData
	dw SabrinaGymData
	dw BlaineGymData
	dw GiovanniGymData

; LEAGUE BATTLES: Gym leaders will choose 3 out of 6 randomly. Three from the first pool. Two from the second, and their main last.
	; first byte is level of all pokemon in this selection pool
	; all the next bytes are pokemon species
	; null-terminated

BrockGymData: ; ZERO BADGES (In sequential order)
	db 11, GEODUDE, OMANYTE, ZUBAT, 0
	db 12, KABUTO,  VULPIX, 0
	db 14, ONIX, 0
; ONE BADGE
	db 18, GEODUDE, OMANYTE, ZUBAT, 0
	db 19, KABUTO,  VULPIX, 0
	db 21, ONIX, 0
; TWO BADGES
	db 25, GEODUDE, OMANYTE, GOLBAT, 0
	db 26, KABUTO,  VULPIX, 0
	db 28, ONIX, 0
; THREE BADGES
	db 31, GRAVELER, OMANYTE, GOLBAT, 0
	db 33, KABUTO,  VULPIX, 0
	db 34, ONIX, 0
; FOUR BADGES
	db 38, GRAVELER, OMANYTE, GOLBAT, 0
	db 39, KABUTO,  NINETALES, 0
	db 40, ONIX, 0
; FIVE BADGES
	db 42, GRAVELER, OMANYTE, CROBAT, 0
	db 44, KABUTO,  NINETALES, 0
	db 45, ONIX, 0
; SIX BADGES
	db 45, GOLEM, OMASTAR, CROBAT, 0
	db 46, KABUTOPS,  NINETALES, 0
	db 48, ONIX, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, GOLEM, OMASTAR, CROBAT, 0
	db 54, KABUTOPS,  NINETALES, 0
	db 55, ONIX, 0

MistyGymData: ; ZERO BADGES
	db 11, PSYDUCK, SEEL, EXEGGCUTE, 0
	db 12, HORSEA,  DIGLETT, 0
	db 14, STARYU, 0
; ONE BADGE (In sequential order)
	db 18, PSYDUCK, SEEL, EXEGGCUTE, 0
	db 19, HORSEA,  DIGLETT, 0
	db 21, STARMIE, 0
; TWO BADGES
	db 25, PSYDUCK, SEEL, EXEGGCUTE, 0
	db 26, HORSEA,  DUGTRIO, 0
	db 28, STARMIE, 0
; THREE BADGES
	db 31, GOLDUCK, SEEL, EXEGGUTOR, 0
	db 33, HORSEA,  DUGTRIO, 0
	db 34, STARMIE, 0
; FOUR BADGES
	db 38, GOLDUCK, DEWGONG, EXEGGUTOR, 0
	db 39, SEADRA,  DUGTRIO, 0
	db 40, STARMIE, 0
; FIVE BADGES
	db 42, GOLDUCK, DEWGONG, EXEGGUTOR, 0
	db 44, SEADRA,  DUGTRIO, 0
	db 45, STARMIE, 0
; SIX BADGES
	db 45, GOLDUCK, DEWGONG, EXEGGUTOR, 0
	db 46, KINGDRA, DUGTRIO, 0
	db 48, STARMIE, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, GOLDUCK, DEWGONG, EXEGGUTOR, 0
	db 54, KINGDRA, DUGTRIO, 0
	db 55, STARMIE, 0

LtSurgeGymData: ; ZERO BADGES
	db 11, VOLTORB, MAGNEMITE, TANGELA, 0
	db 12, ELEKID,  POLIWAG, 0
	db 14, PIKACHU, 0
; ONE BADGE
	db 18, VOLTORB, MAGNEMITE, TANGELA, 0
	db 19, ELECTABUZZ, POLIWAG, 0
	db 21, PIKACHU, 0
; TWO BADGES (In sequential order)
	db 25, VOLTORB, MAGNEMITE, TANGELA, 0
	db 26, ELECTABUZZ, POLIWHIRL, 0
	db 28, RAICHU, 0
; THREE BADGES
	db 31, VOLTORB, MAGNEMITE, TANGELA, 0
	db 33, ELECTABUZZ, POLIWHIRL, 0
	db 34, RAICHU, 0
; FOUR BADGES
	db 38, ELECTRODE, MAGNETON, TANGROWTH, 0
	db 39, ELECTABUZZ, POLIWHIRL, 0
	db 40, RAICHU, 0
; FIVE BADGES
	db 42, ELECTRODE, MAGNETON, TANGROWTH, 0
	db 44, ELECTABUZZ, POLIWHIRL, 0
	db 45, RAICHU, 0
; SIX BADGES
	db 45, ELECTRODE, MAGNETON, TANGROWTH, 0
	db 46, ELECTIVIRE, POLIWRATH, 0
	db 48, RAICHU, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, ELECTRODE, MAGNETON, TANGROWTH, 0
	db 54, ELECTIVIRE, POLIWRATH, 0
	db 55, RAICHU, 0

ErikaGymData:
; ZERO BADGES
	db 11, PARAS, CLEFAIRY, TANGELA, 0
	db 12, BELLSPROUT, EEVEE, 0
	db 14, ODDISH, 0
; ONE BADGE
	db 18, PARAS, CLEFAIRY, TANGELA, 0
	db 19, BELLSPROUT, EEVEE, 0
	db 21, GLOOM, 0
; TWO BADGES
	db 25, PARAS, CLEFAIRY, TANGELA, 0
	db 26, WEEPINBELL, VAPOREON, 0
	db 28, GLOOM, 0
; THREE BADGES (In sequential order)
	db 31, PARASECT, CLEFABLE, TANGELA, 0
	db 33, WEEPINBELL, VAPOREON, 0
	db 34, VILEPLUME, 0
; FOUR BADGES
	db 38, PARASECT, CLEFABLE, TANGROWTH, 0
	db 39, WEEPINBELL, VAPOREON, 0
	db 40, VILEPLUME, 0
; FIVE BADGES
	db 42, PARASECT, CLEFABLE, TANGROWTH, 0
	db 44, VICTREEBEL, VAPOREON, 0
	db 45, VILEPLUME, 0
; SIX BADGES
	db 45, PARASECT, CLEFABLE, TANGROWTH, 0
	db 46, VICTREEBEL, VAPOREON, 0
	db 48, VILEPLUME, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, PARASECT, CLEFABLE, TANGROWTH, 0
	db 54, VICTREEBEL, VAPOREON, 0
	db 55, VILEPLUME, 0

KogaGymData:
; ZERO BADGES
	db 11, KOFFING, ZUBAT, LAPRAS, 0
	db 12, GRIMER, DROWZEE, 0
	db 14, VENONAT, 0
; ONE BADGE
	db 18, KOFFING, ZUBAT, LAPRAS, 0
	db 19, GRIMER, DROWZEE, 0
	db 21, VENONAT, 0
; TWO BADGES
	db 25, KOFFING, ZUBAT, LAPRAS, 0
	db 26, GRIMER, HYPNO, 0
	db 28, VENONAT, 0
; THREE BADGES
	db 31, KOFFING, GOLBAT, LAPRAS, 0
	db 33, GRIMER, HYPNO, 0
	db 34, VENOMOTH, 0
; FOUR BADGES (In sequential order)
	db 38, WEEZING, GOLBAT, LAPRAS, 0
	db 39, MUK, HYPNO, 0
	db 40, VENOMOTH, 0
; FIVE BADGES
	db 42, WEEZING, CROBAT, LAPRAS, 0
	db 44, MUK, HYPNO, 0
	db 45, VENOMOTH, 0
; SIX BADGES
	db 45, WEEZING, CROBAT, LAPRAS, 0
	db 46, MUK, HYPNO, 0
	db 48, VENOMOTH, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, WEEZING, CROBAT, LAPRAS, 0
	db 54, MUK, HYPNO, 0
	db 55, VENOMOTH, 0

SabrinaGymData:
; ZERO BADGES
	db 13, SLOWPOKE, MIME_JR, VENONAT, 0     ; Sabrina strongly dislikes conflict and fighting. She only fights to hone her power, or if she's threatened.
	db 14, SMOOCHUM, IGGLYBUFF, 0            ; She is mentally in sync with all of her Pokemon. All of them can make use of Psychic power in one way or another.
	db 16, KADABRA, 0                        ; She always stays holed up in her gym, though she may telepathically connect to the player in some instances.
; ONE BADGE                                      ; She is stoic in nature, and her Pokemon are somewhat slow to accumulate Happiness, though she does care for them well.
	db 18, SLOWPOKE, MIME_JR, VENONAT, 0
	db 19, SMOOCHUM, IGGLYBUFF, 0            ; Slowbro sparks Sabrina's curiousity, due to legends of its yawns bringing rain. she is determined to unlock its hidden potential.
	db 21, KADABRA, 0                        ; The Mime family of Pokemon are a favorite of hers. She utilizes them to protect her Gym and family from intruders.
; TWO BADGES                                     ; Venomoth is a longtime favorite of Sabrina's. It has Psychic power, and can counter Dark types too.
	db 25, SLOWPOKE, MIME_JR, VENONAT, 0     ; Jynx is a utility Pokemon Sabrina likes to utilize. She especially likes to use it against Dragons.
	db 26, JYNX, JIGGLYPUFF, 0               ; Wigglytuff was brought onto Sabrina's team as it also counters Fighting types. She adores the Fairy-types, overall.
	db 28, KADABRA, 0                        ; Alakazam is her signature Pokemon, and is her primary form of transportation, via Teleport.
; THREE BADGES
	db 31, SLOWPOKE, MIME_JR, VENOMOTH, 0
	db 33, JYNX, JIGGLYPUFF, 0
	db 34, KADABRA, 0
; FOUR BADGES
	db 38, SLOWPOKE, MR_MIME, VENOMOTH, 0
	db 39, JYNX, JIGGLYPUFF, 0
	db 40, KADABRA, 0
; FIVE BADGES (In sequential order)
	db 42, SLOWBRO, MR_MIME, VENOMOTH, 0
	db 44, JYNX, WIGGLYTUFF, 0
	db 45, ALAKAZAM, 0
; SIX BADGES
	db 45, SLOWBRO, MR_MIME, VENOMOTH, 0
	db 46, JYNX, WIGGLYTUFF, 0
	db 48, ALAKAZAM, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, SLOWBRO, MR_MIME, VENOMOTH, 0
	db 54, JYNX, WIGGLYTUFF, 0
	db 55, ALAKAZAM, 0

BlaineGymData:
; ZERO BADGES
	db 11, MAGBY, PONYTA, PARAS, 0
	db 12, VULPIX, KANGASKHAN, 0
	db 14, GROWLITHE, 0
; ONE BADGE
	db 18, MAGMAR, PONYTA, PARAS, 0
	db 19, VULPIX, KANGASKHAN, 0
	db 21, GROWLITHE, 0
; TWO BADGES
	db 25, MAGMAR, PONYTA, PARASECT, 0
	db 26, VULPIX, KANGASKHAN, 0
	db 28, GROWLITHE, 0
; THREE BADGES
	db 31, MAGMAR, PONYTA, PARASECT, 0
	db 33, VULPIX, KANGASKHAN, 0
	db 34, GROWLITHE, 0
; FOUR BADGES
	db 38, MAGMAR, PONYTA, PARASECT, 0
	db 39, VULPIX, KANGASKHAN, 0
	db 40, GROWLITHE, 0
; FIVE BADGES
	db 42, MAGMORTAR, RAPIDASH, PARASECT, 0
	db 44, NINETALES, KANGASKHAN, 0
	db 45, ARCANINE, 0
; SIX BADGES (In sequential order)
	db 45, MAGMORTAR, RAPIDASH, PARASECT, 0
	db 46, NINETALES, KANGASKHAN, 0
	db 48, ARCANINE, 0
; SEVEN BADGES (SHOULDN'T BE ACCESSIBLE)
	db 53, MAGMORTAR, RAPIDASH, PARASECT, 0
	db 54, NINETALES, KANGASKHAN, 0
	db 55, ARCANINE, 0

GiovanniGymData: ; Giovanni is always the last leader, and always uses six Pokemon
	db $FF, 50,DUGTRIO, 52,TAUROS, 53,PERSIAN, 53,NIDOQUEEN, 55,NIDOKING, 55,RHYDON, 0
