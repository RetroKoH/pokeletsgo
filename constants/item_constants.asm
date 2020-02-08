const_value = 1

	const POKE_BALL     ; $01
	const GREAT_BALL    ; $02
	const ULTRA_BALL    ; $03
	const MASTER_BALL   ; $04
	const SAFARI_BALL   ; $05
	const FAST_BALL		; $06
	const LEVEL_BALL	; $07
	const LURE_BALL		; $08
	const HEAVY_BALL	; $09
	const LOVE_BALL		; $0A
	const FRIEND_BALL	; $0B
	const MOON_BALL		; $0C
	const SNAG_BALL		; $0D
	const POTION		; $0E	
	const SUPER_POTION	; $0F
	const HYPER_POTION	; $10
	const MAX_POTION	; $11
	const ANTIDOTE		; $12
	const BURN_HEAL		; $13
	const ICE_HEAL		; $14
	const AWAKENING		; $15
	const PARLYZ_HEAL	; $16
	const FULL_HEAL		; $17
	const FULL_RESTORE	; $18
	const REVIVE		; $19
	const MAX_REVIVE	; $1A
	const FRESH_WATER	; $1B
	const SODA_POP		; $1C
	const LEMONADE		; $1D
	const MOOMOOMILK	; $1E
	const PP_UP         ; $1F
	const PP_MAX		; $20
	const ETHER         ; $21
	const MAX_ETHER     ; $22
	const ELIXER        ; $23
	const MAX_ELIXER    ; $24
	const HP_UP         ; $25
	const PROTEIN       ; $26
	const IRON          ; $27
	const CARBOS        ; $28
	const CALCIUM       ; $29
	const ZINC			; $2A
	const RARE_CANDY    ; $2B
	const X_ATTACK      ; $2C
	const X_DEFEND      ; $2D
	const X_SPEED       ; $2E
	const X_SPECIAL     ; $2F
	const X_SPDEF 		; $30
	const X_ACCURACY    ; $31
	const DIRE_HIT      ; $32
	const GUARD_SPEC    ; $33
	const REPEL         ; $34
	const SUPER_REPEL   ; $35
	const MAX_REPEL     ; $36
	const LURE_ITEM		; $37
	const SUPER_LURE	; $38
	const MAX_LURE		; $39
	const ESCAPE_ROPE   ; $3A
	const POKE_DOLL     ; $3B
	const FIRE_STONE    ; $3C
	const THUNDER_STONE ; $3D
	const WATER_STONE   ; $3E
	const LEAF_STONE    ; $3F
	const ICE_STONE 	; $40
	const SUN_STONE		; $41
	const MOON_STONE	; $42
	const KINGS_ROCK	; $43
	const METAL_COAT	; $44
	const DRAGON_SCALE	; $45
	const UPGRADE		; $46
	const DUBIOUS_DISC	; $47
	const DOME_FOSSIL   ; $48
	const HELIX_FOSSIL	; $49
	const OLD_AMBER		; $4A
	const PEARL			; $4B
	const BIG_PEARL		; $4C
	const STAR_PIECE	; $4D
	const STARDUST		; $4E
	const NUGGET		; $4F
	const BIG_NUGGET	; $50

; Everything onward is key item
	const OAKS_PARCEL	; $51
	const TOWN_MAP		; $52
	const TM_CASE		; $53
	const POKEMON_BOX	; $54
	const ITEMFINDER    ; $55
	const EXP_ALL       ; $56
	const S_S_TICKET    ; $57
	const OLD_ROD       ; $58
	const GOOD_ROD      ; $59
	const SUPER_ROD     ; $5A
	const VS_SEEKER		; $5B
	const BIKE_VOUCHER  ; $5C	
	const BICYCLE		; $5D
	const COIN_CASE     ; $5E
	const LIFT_KEY      ; $5F
	const CARD_KEY      ; $60
	const SILPH_SCOPE   ; $61
	const POKE_FLUTE    ; $62
	const GOLD_TEETH    ; $63
	const SECRET_KEY    ; $64
	const SHINY_CHARM   ; $65
	const OLD_SEA_MAP   ; $66
	const MEGA_STONE_X  ; $67
	const MEGA_STONE_Y  ; $68
	const MELTAN_BOX	; $69
; Pseudo Items
	const POKEDEX       ; $6C
	const SURFBOARD     ; $6D
	const SAFARI_BAIT	; $6A
	const SAFARI_ROCK	; $6B
	const COIN          ; USED in Hidden Objects.asm for hidden coins

; Items past this point are not "normal" items, so mark the end of the normal list
NUM_NORMAL_ITEMS = const_value + -1

; Only used for elevator menus
const_value = $54

	const FLOOR_B2F     ; $54
	const FLOOR_B1F     ; $55
	const FLOOR_1F      ; $56
	const FLOOR_2F      ; $57
	const FLOOR_3F      ; $58
	const FLOOR_4F      ; $59
	const FLOOR_5F      ; $5A
	const FLOOR_6F      ; $5B
	const FLOOR_7F      ; $5C
	const FLOOR_8F      ; $5D
	const FLOOR_9F      ; $5E
	const FLOOR_10F     ; $5F
	const FLOOR_11F     ; $60
	const FLOOR_B4F     ; $61

; TMs - Don't call actual item scripts
const_value = $C4

	const HM_01         ; $C4
	const HM_02         ; $C5
	const HM_03         ; $C6
	const HM_04         ; $C7
	const HM_05         ; $C8
	const TM_01         ; $C9
	const TM_02         ; $CA
	const TM_03         ; $CB
	const TM_04         ; $CC
	const TM_05         ; $CD
	const TM_06         ; $CE
	const TM_07         ; $CF
	const TM_08         ; $D0
	const TM_09         ; $D1
	const TM_10         ; $D2
	const TM_11         ; $D3
	const TM_12         ; $D4
	const TM_13         ; $D5
	const TM_14         ; $D6
	const TM_15         ; $D7
	const TM_16         ; $D8
	const TM_17         ; $D9
	const TM_18         ; $DA
	const TM_19         ; $DB
	const TM_20         ; $DC
	const TM_21         ; $DD
	const TM_22         ; $DE
	const TM_23         ; $DF
	const TM_24         ; $E0
	const TM_25         ; $E1
	const TM_26         ; $E2
	const TM_27         ; $E3
	const TM_28         ; $E4
	const TM_29         ; $E5
	const TM_30         ; $E6
	const TM_31         ; $E7
	const TM_32         ; $E8
	const TM_33         ; $E9
	const TM_34         ; $EA
	const TM_35         ; $EB
	const TM_36         ; $EC
	const TM_37         ; $ED
	const TM_38         ; $EE
	const TM_39         ; $EF
	const TM_40         ; $F0
	const TM_41         ; $F1
	const TM_42         ; $F2
	const TM_43         ; $F3
	const TM_44         ; $F4
	const TM_45         ; $F5
	const TM_46         ; $F6
	const TM_47         ; $F7
	const TM_48         ; $F8
	const TM_49         ; $F9
	const TM_50         ; $FA

; For now, I won't use the Crystal macro... maybe don't need it.
;add_tm: MACRO
;if !DEF(TM01)
;TM01 EQU const_value
;	enum_start 1
;endc
;	define _\@_1, "TM_\1"
;	const _\@_1
;	enum \1_TMNUM
;ENDM
const_value = 1

	const TM_HEADBUTT
	const TM_TAUNT
	const TM_HELPING_HAND
	const TM_TELEPORT
	const TM_REST
	const TM_LIGHT_SCREEN
	const TM_PROTECT
	const TM_SUBSTITUTE
	const TM_REFLECT
	const TM_DIG
	const TM_WILL_O_WISP
	const TM_FACADE
	const TM_BRICK_BREAK
	const TM_FLY
	const TM_SEISMIC_TOSS
	const TM_THUNDER_WAVE
	const TM_DRAGON_TAIL
	const TM_U_TURN
	const TM_IRON_TAIL
	const TM_DARK_PULSE
	const TM_FOUL_PLAY
	const TM_ROCK_SLIDE
	const TM_THUNDERPUNCH
	const TM_X_SCISSOR
	const TM_WATERFALL
	const TM_POISON_JAB
	const TM_TOXIC
	const TM_TRI_ATTACK
	const TM_SCALD
	const TM_BULK_UP
	const TM_FIRE_PUNCH
	const TM_DAZZLEGLEAM
	const TM_CALM_MIND
	const TM_DRAGON_PULSE
	const TM_ICE_PUNCH
	const TM_THUNDERBOLT
	const TM_FLAMETHROWER
	const TM_THUNDER
	const TM_OUTRAGE
	const TM_PSYCHIC
	const TM_EARTHQUAKE
	const TM_SELFDESTRUCT
	const TM_SHADOW_BALL
	const TM_PLAY_ROUGH
	const TM_SOLARBEAM
	const TM_FIRE_BLAST
	const TM_SURF
	const TM_HYPER_BEAM
	const TM_SUPERPOWER
	const TM_ROOST
	const TM_BLIZZARD
	const TM_SLUDGE_BOMB
	const TM_MEGA_DRAIN
	const TM_FLASH_CANNON
	const TM_ICE_BEAM
	const TM_STEALTH_ROCK
	const TM_PAY_DAY
	const TM_DRILL_RUN
	const TM_DREAM_EATER
	const TM_MEGAHORN