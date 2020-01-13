; pokemon's overworld sprites
const_value = 0

	const SPRITE_MON       ; $0
	const SPRITE_BALL_M    ; $1
	const SPRITE_HELIX     ; $2
	const SPRITE_FAIRY     ; $3
	const SPRITE_BIRD_M    ; $4
	const SPRITE_WATER     ; $5
	const SPRITE_BUG       ; $6
	const SPRITE_GRASS     ; $7
	const SPRITE_SNAKE     ; $8
	const SPRITE_QUADRUPED ; $9

; overworld sprites
const_value = 1

	const SPRITE_RED                       ; $01
	const SPRITE_BLUE                      ; $02
	const SPRITE_OAK                       ; $03
	const SPRITE_BUG_CATCHER               ; $04
	const SPRITE_SLOWBRO                   ; $05
	const SPRITE_LASS                      ; $06
	const SPRITE_BLACK_HAIR_BOY_1          ; $07
	const SPRITE_LITTLE_GIRL               ; $08
	const SPRITE_BIRD                      ; $09
	const SPRITE_FAT_BALD_GUY              ; $0a
	const SPRITE_GAMBLER                   ; $0b
	const SPRITE_BLACK_HAIR_BOY_2          ; $0c
	const SPRITE_GIRL                      ; $0d
	const SPRITE_HIKER                     ; $0e
	const SPRITE_FOULARD_WOMAN             ; $0f
	const SPRITE_GENTLEMAN                 ; $10
	const SPRITE_DAISY                     ; $11
	const SPRITE_BIKER                     ; $12
	const SPRITE_SAILOR                    ; $13
	const SPRITE_COOK                      ; $14
	const SPRITE_BIKE_SHOP_GUY             ; $15
	const SPRITE_MR_FUJI                   ; $16
	const SPRITE_GIOVANNI                  ; $17
	const SPRITE_ROCKET                    ; $18
	const SPRITE_MEDIUM                    ; $19
	const SPRITE_WAITER                    ; $1a
	const SPRITE_ERIKA                     ; $1b
	const SPRITE_MOM_GEISHA                ; $1c
	const SPRITE_BRUNETTE_GIRL             ; $1d
	const SPRITE_LANCE                     ; $1e
	const SPRITE_OAK_SCIENTIST_AIDE        ; $1f
	const SPRITE_OAK_AIDE                  ; $20
	const SPRITE_ROCKER                    ; $21
	const SPRITE_SWIMMER                   ; $22
	const SPRITE_WHITE_PLAYER              ; $23
	const SPRITE_GYM_HELPER                ; $24
	const SPRITE_OLD_PERSON                ; $25
	const SPRITE_MART_GUY                  ; $26
	const SPRITE_FISHER                    ; $27
	const SPRITE_OLD_MEDIUM_WOMAN          ; $28
	const SPRITE_NURSE                     ; $29
	const SPRITE_CABLE_CLUB_WOMAN          ; $2a
	const SPRITE_MR_MASTERBALL             ; $2b
	const SPRITE_LAPRAS_GIVER              ; $2c
	const SPRITE_WARDEN                    ; $2d
	const SPRITE_SS_CAPTAIN                ; $2e
	const SPRITE_FISHER2                   ; $2f
	const SPRITE_BLACKBELT                 ; $30
	const SPRITE_GUARD                     ; $31
	const SPRITE_COP_GUARD                 ; $32
	const SPRITE_MOM                       ; $33
	const SPRITE_BALDING_GUY               ; $34
	const SPRITE_YOUNG_BOY                 ; $35
	const SPRITE_GAMEBOY_KID               ; $36
	const SPRITE_GAMEBOY_KID_COPY          ; $37
	const SPRITE_CLEFAIRY                  ; $38
	const SPRITE_AGATHA                    ; $39
	const SPRITE_BRUNO                     ; $3a
	const SPRITE_LORELEI                   ; $3b
	const SPRITE_SEEL                      ; $3c
	const SPRITE_BALL                      ; $3d
	const SPRITE_OMANYTE                   ; $3e
	const SPRITE_BOULDER                   ; $3f
	const SPRITE_PAPER_SHEET               ; $40
	const SPRITE_BOOK_MAP                  ; $41
	const SPRITE_CLIPBOARD                 ; $42
	const SPRITE_SNORLAX                   ; $43
	const SPRITE_OLD_AMBER_COPY            ; $44
	const SPRITE_OLD_AMBER                 ; $45
	const SPRITE_POKEDEX                   ; $46 Was SPRITE_LYING_OLD_MAN_UNUSED_1
	const SPRITE_TOWN_MAP                  ; $47 Was SPRITE_LYING_OLD_MAN_UNUSED_2
	const SPRITE_LYING_OLD_MAN             ; $48

; different kinds of people events
ITEM    EQU $80
TRAINER EQU $40

OW_POKEMON EQU $80

BOULDER_MOVEMENT_BYTE_2 EQU $10

; sprite facing directions
SPRITE_FACING_DOWN  EQU $00
SPRITE_FACING_UP    EQU $04
SPRITE_FACING_LEFT  EQU $08
SPRITE_FACING_RIGHT EQU $0C

; Handles sprite attributes

ATK_PAL_GREY    EQU 0
ATK_PAL_BLUE    EQU 1
ATK_PAL_RED     EQU 2
ATK_PAL_BROWN   EQU 3
ATK_PAL_YELLOW  EQU 4
ATK_PAL_GREEN   EQU 5
ATK_PAL_ICE     EQU 6
ATK_PAL_PURPLE	EQU 7
; 8: color based on attack type
; 9: don't change color palette (assume it's already set properly from elsewhere)


SPR_PAL_ORANGE	EQU 0
SPR_PAL_BLUE	EQU 1
SPR_PAL_GREEN	EQU 2
SPR_PAL_BROWN	EQU 3
SPR_PAL_PURPLE  EQU 4
SPR_PAL_EMOJI   EQU 5
SPR_PAL_TREE    EQU 6
SPR_PAL_ROCK    EQU 7
SPR_PAL_RANDOM  EQU 8