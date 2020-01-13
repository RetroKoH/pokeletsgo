EFFECT_NORMAL_HIT EQU NO_ADDITIONAL_EFFECT
EFFECT_MULTI_HIT EQU TWO_TO_FIVE_ATTACKS_EFFECT
EFFECT_BURN_HIT EQU BURN_SIDE_EFFECT1
EFFECT_FREEZE_HIT EQU FREEZE_SIDE_EFFECT
EFFECT_PARALYZE_HIT EQU PARALYZE_SIDE_EFFECT1
EFFECT_FORCE_SWITCH EQU SWITCH_AND_TELEPORT_EFFECT
EFFECT_RAMPAGE EQU THRASH_PETAL_DANCE_EFFECT

Moves:
; Characteristics of each move. [Let's Go Edit: Gen 7 Move Update]

move: macro
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 ; category
	db \6 percent ; accuracy
	db \7 ; pp
	db \8 percent ; effect chance
endm

; entries correspond to constants/move_constants.asm
	;MOVE ID/ANIMATION	EFFECT CODE				POWER	TYPE		CATEGORY	ACC		PP	EFFECT ACCURACY
	move POUND,			EFFECT_NORMAL_HIT,		 40,	NORMAL,		PHYSICAL,	100,	35,	 0 ; NO_ADDITIONAL_EFFECT
MoveEnd:
	move KARATE_CHOP,	EFFECT_NORMAL_HIT,		 50,	FIGHTING,	PHYSICAL,	100,	25,	 0 ; Changed to Fighting type
	move DOUBLESLAP,	EFFECT_MULTI_HIT,		 15,	NORMAL,		PHYSICAL,	 85,	10,	 0 ; TWO_TO_FIVE_ATTACKS_EFFECT
	move COMET_PUNCH,	EFFECT_MULTI_HIT,		 18,	NORMAL,		PHYSICAL,	 85,	15,	 0
	move MEGA_PUNCH,	EFFECT_NORMAL_HIT,		 80,	NORMAL,		PHYSICAL,	 85,	20,	 0
	move PAY_DAY,		PAY_DAY_EFFECT,			 40,	NORMAL,		PHYSICAL,	100,	20,	 0 ; PAY_DAY_EFFECT
	move FIRE_PUNCH,	EFFECT_BURN_HIT,		 75,	FIRE,		PHYSICAL,	100,	15,	10 ; BURN_SIDE_EFFECT1
	move ICE_PUNCH,		EFFECT_FREEZE_HIT,		 75,	ICE,		PHYSICAL,	100,	15,	10 ; FREEZE_SIDE_EFFECT
	move THUNDERPUNCH,	EFFECT_PARALYZE_HIT,	 75,	ELECTRIC,	PHYSICAL,	100,	15,	10 ; PARALYZE_SIDE_EFFECT1
	move SCRATCH,		EFFECT_NORMAL_HIT,		 40,	NORMAL,		PHYSICAL,	100,	35,	 0
	move VICEGRIP,		EFFECT_NORMAL_HIT,		 55,	NORMAL,		PHYSICAL,	100,	30,	 0
	move GUILLOTINE,	OHKO_EFFECT,			  1,	NORMAL,		PHYSICAL,	 30,	 5,	 0 ; OHKO_EFFECT
	move RAZOR_WIND,	CHARGE_EFFECT,			 80,	NORMAL,		SPECIAL,	100,	10,	 0 ; CHARGE_EFFECT -> EFFECT_RAZOR_WIND, Acc changed to 100%
	move SWORDS_DANCE,	ATTACK_UP2_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	20,	 0 ; ATTACK_UP2_EFFECT PP Changed to 20
	move CUT,			EFFECT_NORMAL_HIT,		 50,	NORMAL,		PHYSICAL,	 95,	30,	 0
	move GUST,			EFFECT_NORMAL_HIT,		 40,	FLYING,		SPECIAL,	100,	35,	 0 ; Changed to Flying Type
	move WING_ATTACK,	EFFECT_NORMAL_HIT,		 60,	FLYING,		PHYSICAL,	100,	35,	 0 ; Power changed to 60
	move WHIRLWIND,		EFFECT_FORCE_SWITCH,	  0,	NORMAL,		STATUS_M,	100,	20,	 0 ; SWITCH_AND_TELEPORT_EFFECT - ; ROAR should skip accuracy checks, unless DIG/FLY. Affects Protected. In wild, will fail if target level is higher.
	move FLY,			FLY_EFFECT,		 		 90,	FLYING,		PHYSICAL,	 95,	15,	 0 ; Power changed to 90
	move BIND,			TRAPPING_EFFECT,		 15,	NORMAL,		PHYSICAL,	 85,	20,	 0 ; Acc changed to 85
	move SLAM,			EFFECT_NORMAL_HIT,		 80,	NORMAL,		PHYSICAL,	 75,	20,	 0
	move VINE_WHIP,		EFFECT_NORMAL_HIT,		 45,	GRASS,		PHYSICAL,	100,	25,	 0 ; Power changed to 45, PP changed to 25
	move STOMP,			FLINCH_SIDE_EFFECT2,	 65,	NORMAL,		PHYSICAL,	100,	20,	30
	move DOUBLE_KICK,	ATTACK_TWICE_EFFECT,	 30,	FIGHTING,	PHYSICAL,	100,	30,	 0
	move MEGA_KICK,		EFFECT_NORMAL_HIT,		120,	NORMAL,		PHYSICAL,	 75,	 5,	 0
	move JUMP_KICK,		JUMP_KICK_EFFECT,		100,	FIGHTING,	PHYSICAL,	 95,	10,	 0 ; Power changed to 100, PP changed to 10
	move ROLLING_KICK,	FLINCH_SIDE_EFFECT2,	 60,	FIGHTING,	PHYSICAL,	 85,	15,	30
	move SAND_ATTACK,	ACCURACY_DOWN1_EFFECT,    0,	GROUND,		STATUS_M,	100,	15,	 0 ; Changed to Ground Type
	move HEADBUTT,		FLINCH_SIDE_EFFECT2,	 70,	NORMAL,		PHYSICAL,	100,	15,	30
	move HORN_ATTACK,	EFFECT_NORMAL_HIT,	 	 65,	NORMAL,		PHYSICAL,	100,	25,	 0
	move FURY_ATTACK,	EFFECT_MULTI_HIT,		 15,	NORMAL,		PHYSICAL,	 85,	20,	 0
	move HORN_DRILL,	OHKO_EFFECT,			  1,	NORMAL,		PHYSICAL,	 30,	 5,	 0
	move TACKLE,		EFFECT_NORMAL_HIT,		 40,	NORMAL,		PHYSICAL,	100,	35,	 0 ; Power changed to 40. Acc changed to 100
	move BODY_SLAM,		PARALYZE_SIDE_EFFECT2,	 85,	NORMAL,		PHYSICAL,	100,	15,	30
	move WRAP,			TRAPPING_EFFECT,		 15,	NORMAL,		PHYSICAL,	 90,	20,	 0 ; Accuracy changed to 90
	move TAKE_DOWN,		RECOIL_EFFECT,			 90,	NORMAL,		PHYSICAL,	 85,	20,	 0
	move THRASH,		EFFECT_RAMPAGE,			120,	NORMAL,		PHYSICAL,	100,	10,	 0 ; THRASH_PETAL_DANCE_EFFECT Power changed to 120, PP changed to 10
	move DOUBLE_EDGE,	RECOIL_EFFECT,			100,	NORMAL,		PHYSICAL,	100,	15,	 0 ; Base Power changed to 120
	move TAIL_WHIP,		DEFENSE_DOWN1_EFFECT,	  0,	NORMAL,		STATUS_M,	100,	30,	 0
	move POISON_STING,	POISON_SIDE_EFFECT1,	 15,	POISON,		PHYSICAL,	100,	35,	30
	move TWINEEDLE,		TWINEEDLE_EFFECT,		 25,	BUG,		PHYSICAL,	100,	20,	20
	move PIN_MISSILE,	EFFECT_MULTI_HIT,		 25,	BUG,		PHYSICAL,	 95,	20,	 0 ; Base power changed to 25, acc changed to 95
	move LEER,			DEFENSE_DOWN1_EFFECT,	  0,	NORMAL,		STATUS_M,	100,	30,	 0
	move BITE,			FLINCH_SIDE_EFFECT1,	 60,	DARK,		PHYSICAL,	100,	25,	30 ; changed to Dark type
	move GROWL,			ATTACK_DOWN1_EFFECT,	  0,	NORMAL,		STATUS_M,	100,	40,	 0
	move ROAR,			EFFECT_FORCE_SWITCH,	  0,	NORMAL,		STATUS_M,	100,	20,	 0 ; ROAR should skip accuracy checks, unless DIG/FLY. Affects Protected. In wild, will fail if target level is higher.
	move SING,			SLEEP_EFFECT,			  0,	NORMAL,		STATUS_M,	 55,	15,	 0
	move SUPERSONIC,	CONFUSION_EFFECT,		  0,	NORMAL,		STATUS_M,	 55,	20,	 0
	move SONICBOOM,		SPECIAL_DAMAGE_EFFECT,	  1,	NORMAL,		SPECIAL,	 90,	20,	 0 ; Always deals 20 HP damage
	move DISABLE,		DISABLE_EFFECT,			  0,	NORMAL,		STATUS_M,	100,	20,	 0 ; Acc changed to 100
	move ACID,			DEFENSE_DOWN_SIDE_EFFECT,40,	POISON,		SPECIAL,	100,	30,	10
	move EMBER,			EFFECT_BURN_HIT,		 40,	FIRE,		SPECIAL,	100,	25,	10
	move FLAMETHROWER,	EFFECT_BURN_HIT,		 90,	FIRE,		SPECIAL,	100,	15,	10 ; Base Power lowered to 90
	move MIST,			MIST_EFFECT,			  0,	ICE,		STATUS_M,	100,	30,	 0
	move WATER_GUN,		EFFECT_NORMAL_HIT,		 40,	WATER,		SPECIAL,	100,	25,	 0
	move HYDRO_PUMP,	EFFECT_NORMAL_HIT,		110,	WATER,		SPECIAL,	 80,	 5,	 0 ; Base power lowered to 110
	move SURF,			EFFECT_NORMAL_HIT,		 90,	WATER,		SPECIAL,	100,	15,	 0 ; Base power lowered to 90
	move ICE_BEAM,		EFFECT_FREEZE_HIT,		 90,	ICE,		SPECIAL,	100,	10,     10 ; Base power lowered to 90
	move BLIZZARD,		EFFECT_FREEZE_HIT,		110,	ICE,		SPECIAL,	 70,	 5,	10 ; Base power is now 110, Acc lowered to 70
	move PSYBEAM,		CONFUSION_SIDE_EFFECT,	 65,	PSYCHIC,	SPECIAL,	100,	20,	10
	move BUBBLEBEAM,	SPEED_DOWN_SIDE_EFFECT,	 65,	WATER,		SPECIAL,	100,	20,	10
	move AURORA_BEAM,	ATTACK_DOWN_SIDE_EFFECT, 65,	ICE,		SPECIAL,	100,	20,	10
	move HYPER_BEAM,	HYPER_BEAM_EFFECT,		150,	NORMAL,		SPECIAL,	 90,	 5,	 0
	move PECK,			EFFECT_NORMAL_HIT,		 35,	FLYING,		PHYSICAL,	100,	35,	 0
	move DRILL_PECK,	EFFECT_NORMAL_HIT,		 80,	FLYING,		PHYSICAL,	100,	20,	 0
	move SUBMISSION,	RECOIL_EFFECT,			 80,	FIGHTING,	PHYSICAL,	 80,	20,	 0 ; PP lowered to 20
	move LOW_KICK,		FLINCH_SIDE_EFFECT2,	 50,	FIGHTING,	PHYSICAL,	100,	20,	30 ; Acc is now 100% Change to weight kick
	move COUNTER,		EFFECT_NORMAL_HIT,		  1,	FIGHTING,	PHYSICAL,	100,	20,	 0 ; Change to EFFECT_COUNTER. Make it effective against all physical attacks.
	move SEISMIC_TOSS,	SPECIAL_DAMAGE_EFFECT,	  1,	FIGHTING,	PHYSICAL,	100,	20,	 0
	move STRENGTH,		EFFECT_NORMAL_HIT,		 80,	NORMAL,		PHYSICAL,	100,	15,	 0
	move ABSORB,		DRAIN_HP_EFFECT,		 40,	GRASS,		SPECIAL,	100,	15,	 0 ; Power raised to 40. PP lowered to 15
	move MEGA_DRAIN,	DRAIN_HP_EFFECT,		 75,	GRASS,		SPECIAL,	100,	10,	 0 ; Power raised to 75
	move LEECH_SEED,	LEECH_SEED_EFFECT,		  0,	GRASS,		STATUS_M,	 90,	10,	 0
	move GROWTH,		GROWTH_EFFECT,			  0,	NORMAL,		STATUS_M,	100,	20,	 0 ; PP is now 20. Should raise BOTH ATK and Sp ATK 1 stage
	move RAZOR_LEAF,	EFFECT_NORMAL_HIT,		 55,	GRASS,		PHYSICAL,	 95,	25,	 0
	move SOLARBEAM,		CHARGE_EFFECT,			200,	GRASS,		SPECIAL,	100,	10,	 0 ; Power boosted to 200, due to lack of weather boosting
	move POISONPOWDER,	POISON_EFFECT,			  0,	POISON,		STATUS_M,	 75,	35,	 0
	move STUN_SPORE,	PARALYZE_EFFECT,		  0,	GRASS,		STATUS_M,	 75,	30,	 0
	move SLEEP_POWDER,	SLEEP_EFFECT,			  0,	GRASS,		STATUS_M,	 75,	15,	 0
	move PETAL_DANCE,	EFFECT_RAMPAGE,			120,	GRASS,		SPECIAL,	100,	10,	 0 ; Power up to 120. PP down to 10
	move STRING_SHOT,	SPEED_DOWN1_EFFECT,		  0,	BUG,		STATUS_M,	 95,	40,	 0
	move DRAGON_RAGE,	SPECIAL_DAMAGE_EFFECT,	  1,	DRAGON,		SPECIAL,	100,	10,	 0
	move FIRE_SPIN,		TRAPPING_EFFECT,		 35,	FIRE,		SPECIAL,	 85,	15,	 0 ; Power now 35. Acc now 85. Can now thaw Frozen targets
	move THUNDERSHOCK,	EFFECT_PARALYZE_HIT,	 40,	ELECTRIC,	SPECIAL,	100,	30,	10
	move THUNDERBOLT,	EFFECT_PARALYZE_HIT,	 90,	ELECTRIC,	SPECIAL,	100,	15,	10 ; Power lowered to 90
	move THUNDER_WAVE,	PARALYZE_EFFECT,		  0,	ELECTRIC,	STATUS_M,	 90,	20,	 0 ; Acc lowered to 90
	move THUNDER,		EFFECT_PARALYZE_HIT,	110,	ELECTRIC,	SPECIAL,	 70,	10,	30 ; Power lowered to 110
	move ROCK_THROW,	EFFECT_NORMAL_HIT,		 50,	ROCK,		PHYSICAL,	 90,	15,	 0 ; Acc raised to 90
	move EARTHQUAKE,	EFFECT_NORMAL_HIT,		100,	GROUND,		PHYSICAL,	100,	10,	 0
	move FISSURE,		OHKO_EFFECT,			  1,	GROUND,		PHYSICAL,	 30,	 5,	 0
	move DIG,			CHARGE_EFFECT,			 80,	GROUND,		PHYSICAL,	100,	10,	 0 ; Power lowered to 80
	move TOXIC,			POISON_EFFECT,			  0,	POISON,		STATUS_M,	 90,	10,	 0 ; Acc raised to 90
	move CONFUSION,		CONFUSION_SIDE_EFFECT,	 50,	PSYCHIC,	SPECIAL,	100,	25,	10
	move PSYCHIC_M,		SPECIAL_DOWN_SIDE_EFFECT,90,	PSYCHIC,	SPECIAL,	100,	10,	10
	move HYPNOSIS,		SLEEP_EFFECT,			  0,	PSYCHIC,	STATUS_M,	 60,	20,	 0
	move MEDITATE,		ATTACK_UP1_EFFECT,		  0,	PSYCHIC,	STATUS_M,	100,	40,	 0
	move AGILITY,		SPEED_UP2_EFFECT,		  0,	PSYCHIC,	STATUS_M,	100,	30,	 0
	move QUICK_ATTACK,	EFFECT_NORMAL_HIT,		 40,	NORMAL,		PHYSICAL,	100,	30,	 0
	move RAGE,			RAGE_EFFECT,			 20,	NORMAL,		PHYSICAL,	100,	20,	 0 ; Use Gen 2 mechanics
	move TELEPORT,		EFFECT_FORCE_SWITCH,	  0,	PSYCHIC,	STATUS_M,	100,	20,	 0 ; Works like LGPE
	move NIGHT_SHADE,	SPECIAL_DAMAGE_EFFECT,	  0,	GHOST,		STATUS_M,	100,	15,	 0
	move MIMIC,			MIMIC_EFFECT,			  0,	NORMAL,		STATUS_M,	100,	10,	 0 ; Use Gen 2 mechanics, skip acc check
	move SCREECH,		DEFENSE_DOWN2_EFFECT,	  0,	NORMAL,		STATUS_M,	 85,	40,	 0
	move DOUBLE_TEAM,	EVASION_UP1_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	15,	 0
	move RECOVER,		HEAL_EFFECT,			  0,	NORMAL,		STATUS_M,	100,	10,	 0 ; PP lowered to 10
	move HARDEN,		DEFENSE_UP1_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	30,	 0
	move MINIMIZE,		EVASION_UP1_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	10,	 0 ; PP lowered to 10
	move SMOKESCREEN,	ACCURACY_DOWN1_EFFECT,	  0,	NORMAL,		STATUS_M,	100,	20,	 0
	move CONFUSE_RAY,	CONFUSION_EFFECT,		  0,	GHOST,		STATUS_M,	100,	10,	 0
	move WITHDRAW,		DEFENSE_UP1_EFFECT,		  0,	WATER,		STATUS_M,	100,	40,	 0
	move DEFENSE_CURL,	DEFENSE_UP1_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	40,	 0
	move BARRIER,		DEFENSE_UP2_EFFECT,		  0,	PSYCHIC,	STATUS_M,	100,	20,	 0 ; PP lowered to 20
	move LIGHT_SCREEN,	LIGHT_SCREEN_EFFECT,	  0,	PSYCHIC,	STATUS_M,	100,	30,	 0
	move HAZE,			HAZE_EFFECT,			  0,	ICE,		STATUS_M,	100,	30,	 0
	move REFLECT,		REFLECT_EFFECT,			  0,	PSYCHIC,	STATUS_M,	100,	20,	 0
	move FOCUS_ENERGY,	FOCUS_ENERGY_EFFECT,	  0,	NORMAL,		STATUS_M,	100,	30,	 0
	move BIDE,			BIDE_EFFECT,			  0,	NORMAL,		PHYSICAL,	100,	10,	 0 ; Type effective, bypasses accuracy check.
	move METRONOME,		METRONOME_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	10,	 0 ; Make so it cannot call certain moves
	move MIRROR_MOVE,	MIRROR_MOVE_EFFECT,		  0,	FLYING,		STATUS_M,	100,	20,	 0
	move SELFDESTRUCT,	EXPLODE_EFFECT,			200,	NORMAL,		PHYSICAL,	100,	 5,	 0 ; Power now 200, no longer halves defense
	move EGG_BOMB,		EFFECT_NORMAL_HIT,		100,	NORMAL,		PHYSICAL,	 75,	10,	 0
	move LICK,			PARALYZE_SIDE_EFFECT2,	 30,	GHOST,		PHYSICAL,	100,	30,	30 ; Power now 30
	move SMOG,			POISON_SIDE_EFFECT2,	 30,	POISON,		SPECIAL,	 70,	20,	40 ; Power now 30
	move SLUDGE,		POISON_SIDE_EFFECT2,	 65,	POISON,		SPECIAL,	100,	20,	30
	move BONE_CLUB,		FLINCH_SIDE_EFFECT1,	 65,	GROUND,		PHYSICAL,	 85,	20,	10
	move FIRE_BLAST,	BURN_SIDE_EFFECT2,		110,	FIRE,		SPECIAL,	 85,	 5,	10 ; Power lowered to 110
	move WATERFALL,		EFFECT_NORMAL_HIT,		 80,	WATER,		PHYSICAL,	100,	15,	 0
	move CLAMP,			TRAPPING_EFFECT,		 35,	WATER,		PHYSICAL,	 85,	15,	 0 ; 85% acc, 15 PP
	move SWIFT,			SWIFT_EFFECT,			 60,	NORMAL,		SPECIAL,	100,	20,	 0
	move SKULL_BASH,	CHARGE_EFFECT,			130,	NORMAL,		PHYSICAL,	100,	10,	 0 ; Power 130. PP 10
	move SPIKE_CANNON,	EFFECT_MULTI_HIT,		 20,	NORMAL,		PHYSICAL,	100,	15,	 0
	move CONSTRICT,		SPEED_DOWN_SIDE_EFFECT,	 10,	NORMAL,		PHYSICAL,	100,	35,	10
	move AMNESIA,		SPECIAL_UP2_EFFECT,		  0,	PSYCHIC,	STATUS_M,	100,	20,	 0
	move KINESIS,		ACCURACY_DOWN1_EFFECT,	  0,	PSYCHIC,	STATUS_M,	 80,	15,	 0
	move SOFTBOILED,	HEAL_EFFECT,			  0,	NORMAL,		STATUS_M,	100,	10,	 0
	move HI_JUMP_KICK,	JUMP_KICK_EFFECT,		130,	FIGHTING,	PHYSICAL,	 90,	10,	 0 ; Power 130. PP 10
	move GLARE,			PARALYZE_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	30,	 0 ; now 100% acc
	move DREAM_EATER,	DREAM_EATER_EFFECT,		100,	PSYCHIC,	SPECIAL,	100,	15,	 0
	move POISON_GAS,	POISON_EFFECT,			  0,	POISON,		STATUS_M,	 90,	40,	 0 ; now 90% acc
	move BARRAGE,		EFFECT_MULTI_HIT,		 15,	NORMAL,		PHYSICAL,	 85,	20,	 0
	move LEECH_LIFE,	DRAIN_HP_EFFECT,		 80,	BUG,		PHYSICAL,	100,	10,	10 ; Power 80. 10 PP
	move LOVELY_KISS,	SLEEP_EFFECT,			  0,	NORMAL,		STATUS_M,	 75,	10,	 0
	move SKY_ATTACK,	CHARGE_EFFECT,			200,	FLYING,		PHYSICAL,	 90,	 5,	 0 ; Buffed to 200 power
	move TRANSFORM,		TRANSFORM_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	10,	 0
	move BUBBLE,		SPEED_DOWN_SIDE_EFFECT,	 40,	WATER,		SPECIAL,	100,	30,	10 ; BP now 40
	move DIZZY_PUNCH,	CONFUSION_SIDE_EFFECT,	 70,	NORMAL,		PHYSICAL,	100,	10,	20
	move SPORE,			SLEEP_EFFECT,			  0,	GRASS,		STATUS_M,	100,	15,	 0
	move FLASH,			ACCURACY_DOWN1_EFFECT,	  0,	NORMAL,		STATUS_M,	100,	20,	 0 ; 100% acc
	move PSYWAVE,		SPECIAL_DAMAGE_EFFECT,	  1,	PSYCHIC,	SPECIAL,	100,	15,	 0 ; 100% acc
	move SPLASH,		SPLASH_EFFECT,			  0,	NORMAL,		STATUS_M,	100,	40,	 0
	move ACID_ARMOR,	DEFENSE_UP2_EFFECT,		  0,	POISON,		STATUS_M,	100,	20,	 0 ; PP lowered to 20
	move CRABHAMMER,	EFFECT_NORMAL_HIT,		100,	WATER,		PHYSICAL,	 90,	10,	 0 ; 100 BP, 90% acc
	move EXPLOSION,		EXPLODE_EFFECT,			250,	NORMAL,		PHYSICAL,	100,	 5,	 0 ; BP 250. no longer halves defense
	move FURY_SWIPES,	EFFECT_MULTI_HIT,		 18,	NORMAL,		PHYSICAL,	 80,	15,	 0
	move BONEMERANG,	ATTACK_TWICE_EFFECT,	 50,	GROUND,		PHYSICAL,	 90,	10,	 0
	move REST,			HEAL_EFFECT,			  0,	PSYCHIC,	STATUS_M,	100,	10,	 0
	move ROCK_SLIDE,	FLINCH_SIDE_EFFECT1,	 75,	ROCK,		PHYSICAL,	 90,	10,	30 ; Change to flinch hit
	move HYPER_FANG,	FLINCH_SIDE_EFFECT1,	 80,	NORMAL,		PHYSICAL,	 90,	15,	10
	move SHARPEN,		ATTACK_UP1_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	30,	 0
	move CONVERSION,	CONVERSION_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	30,	 0
	move TRI_ATTACK,	EFFECT_NORMAL_HIT,		 80,	NORMAL,		SPECIAL,	100,	10,	20 ; change to its own effect
	move SUPER_FANG,	SUPER_FANG_EFFECT,		  1,	NORMAL,		PHYSICAL,	 90,	10,	 0
	move SLASH,			EFFECT_NORMAL_HIT,		 70,	NORMAL,		PHYSICAL,	100,	20,	 0
	move SUBSTITUTE,	SUBSTITUTE_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	10,	 0
	move STRUGGLE,		RECOIL_EFFECT,			 50,	NORMAL,		PHYSICAL,	100,	 1,	 0 ; 1PP, Bypasses accuracy, no longer Normal type damage. Mirror Move cannot copy.
; NEW MOVES
	move SLUDGE,		POISON_SIDE_EFFECT2,	 90,	POISON,		SPECIAL,	100,	10,	30 ; SLUDGE_BOMB
	move THRASH,		EFFECT_RAMPAGE,			120,	DRAGON,		PHYSICAL,	100,	10,	 0 ; OUTRAGE
	move HEADBUTT,		EFFECT_NORMAL_HIT,		120,	BUG,		PHYSICAL,	 85,	10,	 0 ; MEGAHORN
	move SLAM,			DEFENSE_DOWN_SIDE_EFFECT,100,	STEEL,		PHYSICAL,	 75,	15,	30 ; IRON TAIL
	move BITE,			DEFENSE_DOWN_SIDE_EFFECT,80,	DARK,		PHYSICAL,	100,	15,	30 ; CRUNCH
	move COUNTER,		EFFECT_NORMAL_HIT,		  1,	PSYCHIC,	SPECIAL,	100,	20,	 0 ; MIRROR_COAT - See COUNTER
	move NIGHT_SHADE,	SPECIAL_DOWN_SIDE_EFFECT,80,	GHOST,		SPECIAL,	100,	15,	20 ; SHADOW BALL
	move TACKLE,		EFFECT_NORMAL_HIT,	 40,	NORMAL,		PHYSICAL,	100,	10,	 0 ; FAKE OUT
	move EMBER,		EFFECT_BURN_HIT,	 95,	FIRE,		SPECIAL,	 90,	10,	10 ; HEAT WAVE
	;move FLAMETHROWER,	BURN_SIDE_EFFECT,	  0,	FIRE,		STATUS_M,	 85,	15,	 0 ; WILL O WISP
	move TACKLE,		EFFECT_NORMAL_HIT,	 70,	NORMAL,		PHYSICAL,	100,	20,	 0 ; FACADE - DOUBLE POWER IF STATUS IS NOT OK
	move TACKLE,		EFFECT_NORMAL_HIT,	120,	FIGHTING,	PHYSICAL,	100,	 5,	 0 ; SUPERPOWER
	move KARATE_CHOP,	EFFECT_NORMAL_HIT,	 75,	FIGHTING,	PHYSICAL,	100,	15,	 0 ; BRICK BREAK
	move SING,			SLEEP_EFFECT,		  0,	NORMAL,		STATUS_M,	100,	10,	 0 ; YAWN
	move RECOVER,		HEAL_EFFECT,		  0,	FLYING,		STATUS_M,	100,	10,	 0 ; ROOST - Add effect to remove Flying-type
	move POUND,			EFFECT_NORMAL_HIT,	 30,	NORMAL,		PHYSICAL,	100,	10,	 0 ; FEINT - Hits through Protect
	move QUICK_ATTACK,	EFFECT_NORMAL_HIT,	 70,	BUG,		PHYSICAL,	100,	20,	 0 ; U-TURN - Switch Hit
	move POUND,			EFFECT_NORMAL_HIT,	 70,	DARK,		PHYSICAL,	100,	 5,	 0 ; SUCKER PUNCH
	move TACKLE,		EFFECT_NORMAL_HIT,	120,	FIRE,		PHYSICAL,	100,	15,	 0 ; FLARE BLITZ
	move POISON_STING,	POISON_SIDE_EFFECT2, 80,	POISON,		PHYSICAL,	100,	20,	30 ; POISON JAB
	move CONFUSE_RAY,	FLINCH_SIDE_EFFECT2, 80,	DARK,		SPECIAL,	100,	15,	30 ; DARK PULSE
	move SLASH,			FLINCH_SIDE_EFFECT2, 75,	FLYING,		SPECIAL,	 95,	15,	30 ; AIR SLASH
	move VICEGRIP,		EFFECT_NORMAL_HIT,	 80,	BUG,		PHYSICAL,	100,	15,	 0 ; X-SCISSOR
	move SONICBOOM,		EFFECT_NORMAL_HIT,	 90,	BUG,		SPECIAL,	100,	10,	 0 ; BUG BUZZ
	move ICE_BEAM,		EFFECT_NORMAL_HIT,	 85,	DRAGON,		SPECIAL,	100,	10,	 0 ; DRAGON PULSE
	;NASTYPLOT
	move TWINEEDLE,		EFFECT_NORMAL_HIT,	 40,	ICE,		PHYSICAL,	100,	30,	 0 ; ICE SHARD
	move ICE_BEAM,		EFFECT_NORMAL_HIT,	 80,	STEEL,		SPECIAL,	100,	10,	 0 ; FLASH CANNON
	move VINE_WHIP,		EFFECT_NORMAL_HIT,	120,	GRASS,		PHYSICAL,	 85,	10,	 0 ; POWER WHIP
	;STEALTH ROCK
	move WATERFALL,		EFFECT_NORMAL_HIT,	 40,	WATER,		PHYSICAL,	100,	20,	 0 ; AQUA JET
	;QUIVERDANCE move
	move POUND,			EFFECT_NORMAL_HIT,	 95,	DARK,		PHYSICAL,	100,	15,	 0 ; FOUL PLAY
	move SMOG,			EFFECT_NORMAL_HIT,	 50,	POISON,		SPECIAL,	100,	15,	 0 ; CLEAR SMOG
	move WATER_GUN,		EFFECT_NORMAL_HIT,	 80,	WATER,		SPECIAL,	100,	15,	 0 ; SCALD
	;SHELLSMASH move POUND,		EFFECT_NORMAL_HIT,	  0,	DARK,		PHYSICAL,	100,	15,	 0 ; SHELLSMASH
	move SLAM,			EFFECT_NORMAL_HIT,	 60,	DRAGON,		PHYSICAL,	 90,	10,	 0 ; DRAGON TAIL
	move DIG,			EFFECT_NORMAL_HIT,	 80,	GROUND,		PHYSICAL,	 95,	10,	 0 ; DRILL RUN
	move SCRATCH,		EFFECT_NORMAL_HIT,	 90,	FAIRY,		PHYSICAL,	 90,	10,	 0 ; PLAY ROUGH
	move FLASH,			EFFECT_NORMAL_HIT,	 95,	FAIRY,		SPECIAL,	100,	15,	 0 ; MOONBLAST
	move TRI_ATTACK,	EFFECT_NORMAL_HIT,	 80,	FAIRY,		SPECIAL,	100,	10,	 0 ; DAZZLE GLEAM
	move STOMP,			EFFECT_NORMAL_HIT,	120,	STEEL,		PHYSICAL,	100,	 5,	 0 ; DUO IRONBASH  - 60, double hit
