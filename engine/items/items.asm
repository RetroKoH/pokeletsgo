UseItem_:
	ld a, 1
	ld [wActionResultOrTookBattleTurn], a ; initialise to success value
	ld a, [wcf91]                         ; a contains item_ID
	cp HM_01                              ; is this item a TM/HM?
	jp nc, ItemUseTMHM                    ; if yes, branch
	ld hl, ItemUsePtrTable
	dec a
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

ItemUsePtrTable:
	dw PokeBallEffect		; POKE_BALL
	dw PokeBallEffect		; GREAT_BALL
	dw PokeBallEffect		; ULTRA_BALL
	dw PokeBallEffect		; MASTER_BALL
	dw PokeBallEffect		; SAFARI_BALL
	dw PokeBallEffect		; FAST_BALL
	dw PokeBallEffect		; LEVEL_BALL
	dw PokeBallEffect		; LURE_BALL
	dw PokeBallEffect		; HEAVY_BALL
	dw PokeBallEffect		; LOVE_BALL
	dw PokeBallEffect		; FRIEND_BALL
	dw PokeBallEffect		; MOON_BALL
	dw PokeBallEffect		; SNAG_BALL
	dw RestoreHPEffect		; POTION
	dw RestoreHPEffect		; SUPER_POTION
	dw RestoreHPEffect		; HYPER_POTION
	dw RestoreHPEffect		; MAX_POTION
	dw StatusHealingEffect	; ANTIDOTE
	dw StatusHealingEffect	; BURN_HEAL
	dw StatusHealingEffect	; ICE_HEAL
	dw StatusHealingEffect	; AWAKENING
	dw StatusHealingEffect	; PARLYZ_HEAL
	dw StatusHealingEffect	; FULL_HEAL
	dw RestoreHPEffect		; FULL_RESTORE
	dw ReviveEffect			; REVIVE
	dw ReviveEffect			; MAX_REVIVE
	dw RestoreHPEffect		; FRESH_WATER
	dw RestoreHPEffect		; SODA_POP
	dw RestoreHPEffect		; LEMONADE
	dw RestoreHPEffect		; MOOMOOMILK
	dw EffectPPUp			; PP_UP
	dw EffectPPUp			; PP_MAX
	dw ItemUsePPRestore  ; ETHER
	dw ItemUsePPRestore  ; MAX_ETHER
	dw ItemUsePPRestore  ; ELIXER
	dw ItemUsePPRestore  ; MAX_ELIXER
	dw VitaminEffect    ; HP_UP
	dw VitaminEffect    ; PROTEIN
	dw VitaminEffect    ; IRON
	dw VitaminEffect    ; CARBOS
	dw VitaminEffect    ; CALCIUM
	dw UnusableItem     ; ZINC
	dw VitaminEffect    ; RARE_CANDY
	dw ItemUseXStat      ; X_ATTACK
	dw ItemUseXStat      ; X_DEFEND
	dw ItemUseXStat      ; X_SPEED
	dw ItemUseXStat      ; X_SPECIAL
	dw ItemUseXStat      ; X_SP_DEF
	dw ItemUseXAccuracy  ; X_ACCURACY
	dw ItemUseDireHit    ; DIRE_HIT
	dw ItemUseGuardSpec  ; GUARD_SPEC
	dw ItemUseRepel      ; REPEL
	dw ItemUseSuperRepel ; SUPER_REPEL
	dw ItemUseMaxRepel   ; MAX_REPEL
	dw ItemUseRepel      ; LURE
	dw ItemUseSuperRepel ; SUPER_LURE
	dw ItemUseMaxRepel   ; MAX_LURE
	dw ItemUseEscapeRope ; ESCAPE_ROPE
	dw ItemUsePokedoll   ; POKE_DOLL
	dw EvoItemEffect   ; FIRE_STONE
	dw EvoItemEffect   ; THUNDER_STONE
	dw EvoItemEffect   ; WATER_STONE
	dw EvoItemEffect   ; LEAF_STONE
	dw EvoItemEffect   ; ICE_STONE
	dw EvoItemEffect   ; SUN_STONE
	dw EvoItemEffect   ; MOON_STONE
	dw EvoItemEffect   ; KINGS_ROCK
	dw EvoItemEffect   ; METAL_COAT
	dw EvoItemEffect   ; DRAGON_SCALE
	dw EvoItemEffect   ; UPGRADE
	dw EvoItemEffect   ; DUBIOUS_DISC
	dw UnusableItem      ; DOME_FOSSIL
	dw UnusableItem      ; HELIX_FOSSIL
	dw UnusableItem      ; OLD_AMBER
	dw UnusableItem      ; PEARL
	dw UnusableItem      ; BIG_PEARL
	dw UnusableItem      ; STAR_PIECE
	dw UnusableItem      ; STARDUST
	dw UnusableItem      ; NUGGET
	dw UnusableItem      ; BIG_NUGGET

	dw ItemUseOaksParcel	; OAKS_PARCEL
	dw ItemUseTownMap		; TOWN_MAP
	dw UnusableItem			; TM_CASE
	dw UnusableItem			; POKEMON_BOX
	dw ItemUseItemfinder	; ITEMFINDER
	dw UnusableItem			; EXP_SHARE
	dw UnusableItem      ; S_S_TICKET
	dw ItemUseOldRod     ; OLD_ROD
	dw ItemUseGoodRod    ; GOOD_ROD
	dw ItemUseSuperRod   ; SUPER_ROD
	dw UnusableItem      ; VS_SEEKER
	dw UnusableItem      ; BIKE_VOUCHER
	dw ItemUseBicycle    ; BICYCLE
	dw ItemUseCoinCase   ; COIN_CASE
	dw UnusableItem      ; LIFT_KEY
	dw UnusableItem      ; CARD_KEY ; ItemUseCardKey was unused.
	dw UnusableItem      ; SILPH_SCOPE
	dw ItemUsePokeflute  ; POKE_FLUTE
	dw UnusableItem      ; GOLD_TEETH
	dw UnusableItem      ; SECRET_KEY
	dw UnusableItem      ; SHINY_CHARM
	dw UnusableItem      ; OLD_SEA_MAP
	dw UnusableItem      ; MEGA_STONE_X
	dw UnusableItem      ; MEGA_STONE_Y
	dw UnusableItem      ; MELTANBOX

	dw ItemUsePokedex	; POKEDEX
	dw ItemUseSurfboard	; SURFBOARD
	dw ItemUseBait       ; BAIT
	dw ItemUseRock       ; ROCK

PokeBallEffect:
	ld a, [wIsInBattle]
	and a
	jp z, ItemUseNotTime ; Balls can't be used out of battle.

	dec a
	jp nz, ThrowBallAtTrainerMon ; Balls can't catch trainers' Pokémon.

	; If this is for the old man battle, skip checking if the party & box are full.
	ld a, [wBattleType]
	dec a
	jr z, .canUseBall

	ld a, [wPartyCount] ; is party full?
	cp PARTY_LENGTH
	jr nz, .canUseBall
	ld a, [wNumInBox] ; is box full?
	cp MONS_PER_BOX
	jp z, BoxFullCannotThrowBall

.canUseBall
	xor a
	ld [wCapturedMonSpecies], a
	ld a, [wBattleType]
	cp BATTLE_TYPE_SAFARI
	jr nz, .skipSafariZoneCode

.safariZone
	ld hl, wNumSafariBalls
	dec [hl] ; remove a Safari Ball

.skipSafariZoneCode
	call RunDefaultPaletteCommand

	ld a, $43 ; successful capture value
	ld [wPokeBallAnimData], a

	call LoadScreenTilesFromBuffer1
	ld hl, ItemUseText00
	call PrintText

	; If the player is fighting an unidentified ghost, set the value that indicates
	; the Pokémon can't be caught and skip the capture calculations.
	callab IsGhostBattle
	ld b, $10 ; can't be caught value
	jp z, .setAnimData

	ld a, [wBattleType]
	dec a
	jr nz, .notOldManBattle

.oldManBattle
	ld hl, wCurTrainerName
	ld de, wPlayerName
	ld bc, NAME_LENGTH
	call CopyData ; save the player's name in the Wild Monster data (part of the Cinnabar Island Missingno. glitch)
	jp .captured

.notOldManBattle
; If the player is fighting the ghost Marowak, set the value that indicates the
; Pokémon can't be caught and skip the capture calculations.
	ld a, [wCurMap]
	cp POKEMON_TOWER_6F
	jr nz, .loop
	ld a, [wEnemyMonSpecies2]
	cp MAROWAK
	ld b, $10 ; can't be caught value
	jp z, .setAnimData

; Get the first random number. Let it be called Rand1.
; Rand1 must be within a certain range according the kind of ball being thrown.
; The ranges are as follows.
; Poké Ball:         [0, 255]
; Great Ball:        [0, 200]
; Ultra/Safari Ball: [0, 150]
; Loop until an acceptable number is found.
.loop
	call Random
	ld b, a

	; Get the item ID.
	ld hl, wcf91
	ld a, [hl]

	; The Master Ball always succeeds.
	cp MASTER_BALL
	jp z, .captured

	; Anything will do for the basic Poké Ball.
	cp POKE_BALL
	jr z, .checkForAilments

	; If it's a Great/Ultra/Safari Ball and Rand1 is greater than 200, try again.
	ld a, 200
	cp b
	jr c, .loop

	; Less than or equal to 200 is good enough for a Great Ball.
	ld a, [hl]
	cp GREAT_BALL
	jr z, .checkForAilments

	; If it's an Ultra/Safari Ball and Rand1 is greater than 150, try again.
	ld a, 150
	cp b
	jr c, .loop

.checkForAilments
; Pokémon can be caught more easily with a status ailment.
; Depending on the status ailment, a certain value will be subtracted from
; Rand1. Let this value be called Status.
; The larger Status is, the more easily the Pokémon can be caught.
; no status ailment:     Status = 0
; Burn/Paralysis/Poison: Status = 12
; Freeze/Sleep:          Status = 25
; If Status is greater than Rand1, the Pokémon will be caught for sure.
	ld a, [wEnemyMonStatus]
	and a
	jr z, .skipAilmentValueSubtraction ; no ailments
	and 1 << FRZ | SLP
	ld c, 12
	jr z, .notFrozenOrAsleep
	ld c, 25
.notFrozenOrAsleep
	ld a, b
	sub c
	jp c, .captured
	ld b, a

.skipAilmentValueSubtraction
	push bc ; save (Rand1 - Status)

	; Calculate MaxHP * 255.
	xor a
	ld [H_MULTIPLICAND], a
	ld hl, wEnemyMonMaxHP
	ld a, [hli]
	ld [H_MULTIPLICAND + 1], a
	ld a, [hl]
	ld [H_MULTIPLICAND + 2], a
	ld a, 255
	ld [H_MULTIPLIER], a
	call Multiply

	; Determine BallFactor. It's 8 for Great Balls and 12 for the others.
	ld a, [wcf91]
	cp GREAT_BALL
	ld a, 12
	jr nz, .skip1
	ld a, 8

.skip1
; Note that the results of all division operations are floored.
; Calculate (MaxHP * 255) / BallFactor.
	ld [H_DIVISOR], a
	ld b, 4 ; number of bytes in dividend
	call Divide

	; Divide the enemy's current HP by 4. HP is not supposed to exceed 999 so
	; the result should fit in a. If the division results in a quotient of 0,
	; change it to 1.
	ld hl, wEnemyMonHP
	ld a, [hli]
	ld b, a
	ld a, [hl]
	srl b
	rr a
	srl b
	rr a
	and a
	jr nz, .skip2
	inc a

.skip2
; Let W = ((MaxHP * 255) / BallFactor) / max(HP / 4, 1). Calculate W.
	ld [H_DIVISOR], a
	ld b, 4
	call Divide

	; If W > 255, store 255 in [H_QUOTIENT + 3].
	; Let X = min(W, 255) = [H_QUOTIENT + 3].
	ld a, [H_QUOTIENT + 2]
	and a
	jr z, .skip3
	ld a, 255
	ld [H_QUOTIENT + 3], a

.skip3
	pop bc ; b = Rand1 - Status

	; If Rand1 - Status > CatchRate, the ball fails to capture the Pokémon.
	ld a, [wEnemyMonActualCatchRate]
	cp b
	jr c, .failedToCapture

	; If W > 255, the ball captures the Pokémon.
	ld a, [H_QUOTIENT + 2]
	and a
	jr nz, .captured

	call Random ; Let this random number be called Rand2.

	; If Rand2 > X, the ball fails to capture the Pokémon.
	ld b, a
	ld a, [H_QUOTIENT + 3]
	cp b
	jr c, .failedToCapture

.captured
	jr .skipShakeCalculations

.failedToCapture
	ld a, [H_QUOTIENT + 3]
	ld [wPokeBallCaptureCalcTemp], a ; Save X.

	; Calculate CatchRate * 100.
	xor a
	ld [H_MULTIPLICAND], a
	ld [H_MULTIPLICAND + 1], a
	ld a, [wEnemyMonActualCatchRate]
	ld [H_MULTIPLICAND + 2], a
	ld a, 100
	ld [H_MULTIPLIER], a
	call Multiply

	; Determine BallFactor2.
	; Poké Ball:         BallFactor2 = 255
	; Great Ball:        BallFactor2 = 200
	; Ultra/Safari Ball: BallFactor2 = 150
	ld a, [wcf91]
	ld b, 255
	cp POKE_BALL
	jr z, .skip4
	ld b, 200
	cp GREAT_BALL
	jr z, .skip4
	ld b, 150
	cp ULTRA_BALL
	jr z, .skip4

.skip4
; Let Y = (CatchRate * 100) / BallFactor2. Calculate Y.
	ld a, b
	ld [H_DIVISOR], a
	ld b, 4
	call Divide

	; If Y > 255, there are 3 shakes.
	; Note that this shouldn't be possible.
	; The maximum value of Y is (255 * 100) / 150 = 170.
	ld a, [H_QUOTIENT + 2]
	and a
	ld b, $63 ; 3 shakes
	jr nz, .setAnimData

	; Calculate X * Y.
	ld a, [wPokeBallCaptureCalcTemp]
	ld [H_MULTIPLIER], a
	call Multiply

	; Calculate (X * Y) / 255.
	ld a, 255
	ld [H_DIVISOR], a
	ld b, 4
	call Divide

	; Determine Status2.
	; no status ailment:     Status2 = 0
	; Burn/Paralysis/Poison: Status2 = 5
	; Freeze/Sleep:          Status2 = 10
	ld a, [wEnemyMonStatus]
	and a
	jr z, .skip5
	and 1 << FRZ | SLP
	ld b, 5
	jr z, .addAilmentValue
	ld b, 10

.addAilmentValue
; If the Pokémon has a status ailment, add Status2.
	ld a, [H_QUOTIENT + 3]
	add b
	ld [H_QUOTIENT + 3], a

.skip5
; Finally determine the number of shakes.
; Let Z = ((X * Y) / 255) + Status2 = [H_QUOTIENT + 3].
; The number of shakes depend on the range Z is in.
; 0  ≤ Z < 10: 0 shakes (the ball misses)
; 10 ≤ Z < 30: 1 shake
; 30 ≤ Z < 70: 2 shakes
; 70 ≤ Z:      3 shakes
	ld a, [H_QUOTIENT + 3]
	cp 10
	ld b, $20
	jr c, .setAnimData
	cp 30
	ld b, $61
	jr c, .setAnimData
	cp 70
	ld b, $62
	jr c, .setAnimData
	ld b, $63

.setAnimData
	ld a, b
	ld [wPokeBallAnimData], a

.skipShakeCalculations
	ld c, 20
	call DelayFrames

	; Do the animation.
	ld a, TOSS_ANIM
	ld [wAnimationID], a
	xor a
	ld [H_WHOSETURN], a
	ld [wAnimationType], a
	ld [wDamageMultipliers], a
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
	predef MoveAnimation
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a

	; Determine the message to display from the animation.
	ld a, [wPokeBallAnimData]
	cp $10
	ld hl, PokeBallEffectText00
	jp z, .printMessage
	cp $20
	ld hl, PokeBallEffectText01
	jp z, .printMessage
	cp $61
	ld hl, PokeBallEffectText02
	jp z, .printMessage
	cp $62
	ld hl, PokeBallEffectText03
	jp z, .printMessage
	cp $63
	ld hl, PokeBallEffectText04
	jp z, .printMessage

	; Save current HP.
	ld hl, wEnemyMonHP
	ld a, [hli]
	push af
	ld a, [hli]
	push af

	; Save status ailment.
	inc hl
	ld a, [hl]
	push af

	push hl

	; If the Pokémon is transformed, the Pokémon is assumed to be a Ditto.
	; This is a bug because a wild Pokémon could have used Transform via
	; Mirror Move even though the only wild Pokémon that knows Transform is Ditto.
	ld hl, wEnemyBattleStatus3
	bit TRANSFORMED, [hl]
	jr z, .notTransformed
	ld a, DITTO
	ld [wEnemyMonSpecies2], a
	jr .skip6

.notTransformed
; If the Pokémon is not transformed, set the transformed bit and copy the
; DVs to wTransformedEnemyMonOriginalDVs so that LoadEnemyMonData won't generate
; new DVs.
	set TRANSFORMED, [hl]
	ld hl, wTransformedEnemyMonOriginalDVs
	ld a, [wEnemyMonDVs]
	ld [hli], a
	ld a, [wEnemyMonDVs + 1]
	ld [hl], a

.skip6
	ld a, [wcf91]
	push af
	ld a, [wEnemyMonSpecies2]
	ld [wcf91], a 				; mon being captured
	ld a, [wEnemyMonLevel]
	ld [wCurEnemyLVL], a 		; mon's level
	callab LoadEnemyMonData
	pop af
	ld [wcf91], a
	pop hl
	pop af
	ld [hld], a
	dec hl
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	ld a, [wEnemyMonSpecies]
	ld [wCapturedMonSpecies], a ; wCapturedMonSpecies is the captured mon
	ld [wcf91], a				; two fields filled in with the captured species
	ld [wd11e], a
	ld a, [wBattleType]

; We are going to change this. If the player hasn't caught one yet, the old man will
; give him a Rattata
	dec a ; is this the old man battle?
	jr z, .oldManCaughtMon ; if so, don't give the player the caught Pokémon

	ld hl, PokeBallEffectText05
	call PrintText
	; added to gain EXP on catch
	ld a, [wWhichPokemon]
	push af
	callba GiveEXPToMonsThatNeedIt
	pop af
	ld [wWhichPokemon], a
; Repeating these lines reloads the captured mon species,
; fixing the bug where caught mon changed to a Pokemon that leveled up
	ld a, [wEnemyMonSpecies]
	ld [wcf91], a				; two fields filled in with the captured species
	ld [wd11e], a
	;resume old routine

; Add the caught Pokémon to the Pokédex.
	ld a, [wd11e]
	dec a
	ld c, a
	ld b, FLAG_TEST
	ld hl, wPokedexOwned
	predef FlagActionPredef
	ld a, c
	push af
	ld a, [wd11e]
	dec a
	ld c, a
	ld b, FLAG_SET
	predef FlagActionPredef
	pop af

	and a ; was the Pokémon already in the Pokédex?
	jr nz, .skipShowingPokedexData ; if so, don't show the Pokédex data

	ld hl, PokeBallEffectText06
	call PrintText
	call ClearSprites
	ld a, [wEnemyMonSpecies]
	ld [wd11e], a
	predef ShowPokedexData

.skipShowingPokedexData
	ld a, [wPartyCount]
	cp PARTY_LENGTH ; is party full?
	jr z, .sendToBox
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	call ClearSprites
	call AddPartyMon
	jr .done

.sendToBox
	call ClearSprites
	call SendNewMonToBox
	ld hl, PokeBallEffectText07
	CheckEvent EVENT_MET_BILL
	jr nz, .printTransferredToPCText
	ld hl, PokeBallEffectText08
.printTransferredToPCText
	call PrintText
	jr .done

.oldManCaughtMon
	ld hl, PokeBallEffectText05

.printMessage
	call PrintText
	call ClearSprites

.done
	ld a, [wBattleType]
	and a ; is this the old man battle?
	ret nz ; if so, don't remove a ball from the bag

; Remove a ball from the bag.
	ld hl, wNumBagItems
	inc a
	ld [wItemQuantity], a
	jp RemoveItemFromInventory

PokeBallEffectText00:
;"It dodged the thrown ball!"
;"This pokemon can't be caught"
	TX_FAR _ItemUseBallText00
	db "@"
PokeBallEffectText01:
;"You missed the pokemon!"
	TX_FAR _ItemUseBallText01
	db "@"
PokeBallEffectText02:
;"Darn! The pokemon broke free!"
	TX_FAR _ItemUseBallText02
	db "@"
PokeBallEffectText03:
;"Aww! It appeared to be caught!"
	TX_FAR _ItemUseBallText03
	db "@"
PokeBallEffectText04:
;"Shoot! It was so close too!"
	TX_FAR _ItemUseBallText04
	db "@"
PokeBallEffectText05:
;"All right! {MonName} was caught!"
;play sound
	TX_FAR _ItemUseBallText05
	TX_SFX_CAUGHT_MON
	TX_BLINK
	db "@"
PokeBallEffectText07:
;"X was transferred to Bill's PC"
	TX_FAR _ItemUseBallText07
	db "@"
PokeBallEffectText08:
;"X was transferred to someone's PC"
	TX_FAR _ItemUseBallText08
	db "@"

PokeBallEffectText06:
;"New DEX data will be added..."
;play sound
	TX_FAR _ItemUseBallText06
	TX_SFX_DEX_PAGE_ADDED
	TX_BLINK
	db "@"

BallMultiplierFunctionTable:
; table of routines that increase or decrease the catch rate based on
; which ball is used in a certain situation.
	dbw GREAT_BALL,   GreatBallMultiplier
	dbw ULTRA_BALL,   UltraBallMultiplier
	dbw SAFARI_BALL,  GreatBallMultiplier ; Safari Ball uses the Great Ball multiplier
	dbw HEAVY_BALL,   HeavyBallMultiplier
	dbw LEVEL_BALL,   LevelBallMultiplier
	dbw LURE_BALL,    LureBallMultiplier
	dbw FAST_BALL,    FastBallMultiplier
	dbw MOON_BALL,    MoonBallMultiplier
	dbw LOVE_BALL,    LoveBallMultiplier
	db $FF ; end

GreatBallMultiplier:
HeavyBallMultiplier: ; Temporarily
LureBallMultiplier:
FastBallMultiplier:
; multiply catch rate by 1.5
	ld a, b
	srl a
	add b
	ld b, a
	ret nc
	ld b, $ff
	ret

UltraBallMultiplier:
MoonBallMultiplier:
LoveBallMultiplier:
; multiply catch rate by 2
	sla b
	ret nc
	ld b, $ff
	ret

LevelBallMultiplier:
; multiply catch rate by 8 if player mon level / 4 > enemy mon level
; multiply catch rate by 4 if player mon level / 2 > enemy mon level
; multiply catch rate by 2 if player mon level > enemy mon level
	ld a, [wBattleMonLevel]
	ld c, a
	ld a, [wEnemyMonLevel]
	cp c
	ret nc ; if player is lower level, we're done here
	sla b
	jr c, .max

	srl c
	cp c
	ret nc ; if player/2 is lower level, we're done here
	sla b
	jr c, .max

	srl c
	cp c
	ret nc ; if player/4 is lower level, we're done here
	sla b
	ret nc

.max
	ld b, $ff
	ret

RestoreHPEffect:
	ld a, [wPartyCount]
	and a
	jp z, .emptyParty
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
	ld a, USE_ITEM_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	ld a, [wPseudoItemID]
	and a ; using Softboiled?
	jr z, .notUsingSoftboiled
; if using softboiled
	call GoBackToPartyMenu
	jr .getPartyMonDataAddress

.emptyParty
	ld hl, EmptyPartyText
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	jp PrintText

.notUsingSoftboiled
	call DisplayPartyMenu
.getPartyMonDataAddress
	jp c, .canceledItemUse
	ld hl, wPartyMons
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wWhichPokemon]
	call AddNTimes
	ld a, [wWhichPokemon]
	ld [wUsedItemOnWhichPokemon], a
	ld d, a
	ld a, [wcf91]
	ld e, a
	ld [wd0b5], a
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a
	ld a, [wPseudoItemID]
	and a ; using Softboiled?
	jr z, .healHP
; if using softboiled
	ld a, [wWhichPokemon]
	cp d ; is the pokemon trying to use softboiled on itself?
	jr z, RestoreHPEffect ; if so, force another choice

.healHP
	inc hl ; hl = address of current HP
	ld a, [hli]
	ld b, a
	ld [wHPBarOldHP+1], a
	ld a, [hl]
	ld c, a
	ld [wHPBarOldHP], a ; current HP stored at wHPBarOldHP (2 bytes, big-endian)
	or b
	jp z, .healingItemNoEffect ; if fainted, healing item cannot be used
;.compareCurrentHPToMaxHP
	push hl
	push bc
	ld bc, wPartyMon1MaxHP - (wPartyMon1HP + 1)
	add hl, bc ; hl now points to max HP
	pop bc
	ld a, [hli]
	cp b
	jr nz, .skipComparingLSB ; no need to compare the LSB's if the MSB's don't match
	ld a, [hl]
	cp c
.skipComparingLSB
	pop hl
	jr nz, .notFullHP
.fullHP ; if the pokemon's current HP equals its max HP
	ld a, [wcf91]
	cp FULL_RESTORE ; Branch if this is NOT Full Restore
	jp nz, .healingItemNoEffect ; Regular HP healing items are useless here.
	inc hl
	inc hl
	ld a, [hld] ; status ailment
	and a ; does the pokemon have a status ailment?
	jp z, .healingItemNoEffect ; if not, it cannot be used
	ld a, FULL_HEAL
	ld [wcf91], a ; The FULL_RESTORE now becomes a Full Heal
	dec hl
	dec hl
	dec hl
	jp .cureStatusAilment
.notFullHP ; if the pokemon's current HP doesn't equal its max HP
	xor a
	ld [wLowHealthAlarm], a ;disable low health alarm
	ld [wChannelSoundIDs + Ch4], a
	push hl
	push de
	ld bc, wPartyMon1MaxHP - (wPartyMon1HP + 1)
	add hl, bc ; hl now points to max HP
	ld a, [hli]
	ld [wHPBarMaxHP+1], a
	ld a, [hl]
	ld [wHPBarMaxHP], a ; max HP stored at wHPBarMaxHP (2 bytes, big-endian)
	ld a, [wPseudoItemID]
	and a ; using Softboiled?
	jp z, .notUsingSoftboiled2
; if using softboiled
	ld hl, wHPBarMaxHP
	ld a, [hli]
	push af
	ld a, [hli]
	push af
	ld a, [hli]
	push af
	ld a, [hl]
	push af
	ld hl, wPartyMon1MaxHP
	ld a, [wWhichPokemon]
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld a, [hli]
	ld [wHPBarMaxHP + 1], a
	ld [H_DIVIDEND], a
	ld a, [hl]
	ld [wHPBarMaxHP], a
	ld [H_DIVIDEND + 1], a
	ld a, 5
	ld [H_DIVISOR], a
	ld b, 2 ; number of bytes
	call Divide ; get 1/5 of max HP of pokemon that used Softboiled
	ld bc, (wPartyMon1HP + 1) - (wPartyMon1MaxHP + 1)
	add hl, bc ; hl now points to LSB of current HP of pokemon that used Softboiled
; subtract 1/5 of max HP from current HP of pokemon that used Softboiled
	ld a, [H_QUOTIENT + 3]
	push af
	ld b, a
	ld a, [hl]
	ld [wHPBarOldHP], a
	sub b
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [H_QUOTIENT + 2]
	ld b, a
	ld a, [hl]
	ld [wHPBarOldHP+1], a
	sbc b
	ld [hl], a
	ld [wHPBarNewHP+1], a
	coord hl, 4, 1
	ld a, [wWhichPokemon]
	ld bc, 2 * SCREEN_WIDTH
	call AddNTimes ; calculate coordinates of HP bar of pokemon that used Softboiled
	ld a, SFX_HEAL_HP
	call PlaySoundWaitForCurrent
	ld a, [hFlags_0xFFF6]
	set 0, a
	ld [hFlags_0xFFF6], a
	ld a, $02
	ld [wHPBarType], a
	predef UpdateHPBar2 ; animate HP bar decrease of pokemon that used Softboiled
	ld a, [hFlags_0xFFF6]
	res 0, a
	ld [hFlags_0xFFF6], a
	pop af
	ld b, a ; store heal amount (1/5 of max HP)
	ld hl, wHPBarOldHP + 1
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	pop af
	ld [hld], a
	pop af
	ld [hl], a
	jr .addHealAmount

.notUsingSoftboiled2
	ld a, [wcf91]

	ld b, 20 ; Potion heal amount
	cp POTION
	jr z, .addHealAmount

	ld b, 50 ; Super Potion heal amount
	cp SUPER_POTION
	jr z, .addHealAmount

	ld b, 120 ; Hyper Potion heal amount
	cp HYPER_POTION
	jr z, .addHealAmount

	ld b, 50 ; Fresh Water heal amount
	cp FRESH_WATER
	jr z, .addFriendship

	ld b, 60 ; Soda Pop heal amount
	cp SODA_POP
	jr z, .addFriendship

	ld b, 80 ; Lemonade heal amount
	cp LEMONADE
	jr z, .addFriendship

	ld b, 100 ; MooMoo Milk heal amount

; Exclusively for non-medicinal vending drinks
.addFriendship
	push hl
	push de
	push bc
	callabd_ModifyFriendship FRIENDSHIP_USEDITEM
	pop bc
	pop de
	pop hl

	; fallthrough. Heal afterward
.addHealAmount
	pop de
	pop hl
	ld a, [hl]
	add b
	ld [hld], a
	ld [wHPBarNewHP], a
	ld a, [hl]
	ld [wHPBarNewHP+1], a
	jr nc, .noCarry
	inc [hl]
	ld a, [hl]
	ld [wHPBarNewHP + 1], a
.noCarry
	push de
	inc hl
	ld d, h
	ld e, l ; de now points to current HP
	ld hl, (wPartyMon1MaxHP + 1) - (wPartyMon1HP + 1)
	add hl, de ; hl now points to max HP
	ld a, [hld]
	ld b, a
	ld a, [de]
	sub b
	dec de
	ld b, [hl]
	ld a, [de]
	sbc b
	jr nc, .setCurrentHPToMaxHp ; if current HP exceeds max HP after healing
	ld a, [wcf91]
	cp MAX_POTION
	jr nc, .setCurrentHPToMaxHp ; if using a Max Potion or Full Restore
	jr .updateInBattleData ; if not, skip
.setCurrentHPToMaxHp
	ld a, [hli]
	ld [de], a
	ld [wHPBarNewHP+1], a
	inc de
	ld a, [hl]
	ld [de], a
	ld [wHPBarNewHP], a
	dec de
; doneHealingPartyHP done updating the pokemon's current HP in the party data structure
	ld a, [wcf91]
	cp FULL_RESTORE
	jr nz, .updateInBattleData
	ld bc, wPartyMon1Status - (wPartyMon1MaxHP + 1)
	add hl, bc
	xor a
	ld [hl], a ; remove the status ailment in the party data
.updateInBattleData
	ld h, d
	ld l, e
	pop de
	ld a, [wPlayerMonNumber]
	cp d ; is pokemon the item was used on active in battle?
	jr nz, .calculateHPBarCoords
; copy party HP to in-battle HP
	ld a, [hli]
	ld [wBattleMonHP], a
	ld a, [hld]
	ld [wBattleMonHP + 1], a
	ld a, [wcf91]
	cp FULL_RESTORE
	jr nz, .calculateHPBarCoords
	xor a
	ld [wBattleMonStatus], a ; remove the status ailment in the in-battle pokemon data
.calculateHPBarCoords
	ld hl, wOAMBuffer + $90
	ld bc, 2 * SCREEN_WIDTH
	inc d
.calculateHPBarCoordsLoop
	add hl, bc
	dec d
	jr nz, .calculateHPBarCoordsLoop
	jr .doneHealing
.healingItemNoEffect
	call ItemUseNoEffect
	jp .done
.cureStatusAilment
	ld bc, wPartyMon1Status - wPartyMon1
	add hl, bc ; hl now points to status
	lb bc, FULL_HEAL_MSG, $ff ; Full Heal
	ld a, [hl] ; pokemon's status
	and c ; does the pokemon have a status ailment the item can cure?
	jp z, .healingItemNoEffect
; if the pokemon has a status the item can heal
	xor a
	ld [hl], a ; remove the status ailment in the party data
	ld a, b
	ld [wPartyMenuTypeOrMessageID], a ; the message to display for the item used
	ld a, [wPlayerMonNumber]
	cp d ; is pokemon the item was used on active in battle?
	jp nz, .doneHealing
; if it is active in battle
	xor a
	ld [wBattleMonStatus], a ; remove the status ailment in the in-battle pokemon data
	push hl
	ld hl, wPlayerBattleStatus3
	res BADLY_POISONED, [hl] ; heal Toxic status
	pop hl

.doneHealing
	ld a, [wPseudoItemID]
	and a ; using Softboiled?
	jr nz, .skipRemovingItem ; no item to remove if using Softboiled
	push hl
	call RemoveUsedItem
	pop hl

.skipRemovingItem
	ld a, [hFlags_0xFFF6]
	set 0, a
	ld [hFlags_0xFFF6], a
	ld a, $02
	ld [wHPBarType], a
	predef UpdateHPBar2 ; animate the HP bar lengthening
	ld a, [hFlags_0xFFF6]
	res 0, a
	ld [hFlags_0xFFF6], a
	ld a, FULL_HEAL_MSG
	ld [wPartyMenuTypeOrMessageID], a
	ld a, [wcf91]
	cp FULL_HEAL
	jr z, .playStatusAilmentCuringSound
; HP healing plays this sound and displays recovered HP
	ld a, SFX_HEAL_HP
	call PlaySoundWaitForCurrent
	ld a, POTION_MSG
	ld [wPartyMenuTypeOrMessageID], a
	jr .showHealingItemMessage
.playStatusAilmentCuringSound
; Full Restore status heal plays this sound (unlikely to occur)
	ld a, SFX_HEAL_AILMENT
	call PlaySoundWaitForCurrent
.showHealingItemMessage
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	call ClearScreen
	dec a
	ld [wUpdateSpritesEnabled], a
	call RedrawPartyMenu ; redraws the party menu and displays the message
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	ld c, 50
	call DelayFrames
	call WaitForTextScrollButtonPress
	jr .done
.canceledItemUse
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	pop af
	pop af
.done
	ld a, [wPseudoItemID]
	and a ; using Softboiled?
	ret nz ; if so, return
	call GBPalWhiteOut
	call z, RunDefaultPaletteCommand
	ld a, [wIsInBattle]
	and a
	ret nz
	jp ReloadMapData

StatusHealingEffect:
	ld a, [wPartyCount]
	and a
	jp z, .emptyParty
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
	ld a, USE_ITEM_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	jr .notEmptyParty
.emptyParty
	ld hl, EmptyPartyText
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	jp PrintText
.notEmptyParty
	call DisplayPartyMenu
	jp c, .canceledItemUse
	ld hl, wPartyMons
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wWhichPokemon]
	call AddNTimes
	ld a, [wWhichPokemon]
	ld [wUsedItemOnWhichPokemon], a
	ld d, a
	ld a, [wcf91]
	ld e, a
	ld [wd0b5], a
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a
	jr .cureStatusAilment
.healingItemNoEffect
	call ItemUseNoEffect
	jp .done
.cureStatusAilment
	ld bc, wPartyMon1Status - wPartyMon1
	add hl, bc ; hl now points to status
	ld a, [wcf91]
	lb bc, ANTIDOTE_MSG, 1 << PSN
	cp ANTIDOTE
	jr z, .checkMonStatus
	lb bc, BURN_HEAL_MSG, 1 << BRN
	cp BURN_HEAL
	jr z, .checkMonStatus
	lb bc, ICE_HEAL_MSG, 1 << FRZ
	cp ICE_HEAL
	jr z, .checkMonStatus
	lb bc, AWAKENING_MSG, SLP
	cp AWAKENING
	jr z, .checkMonStatus
	lb bc, PARALYZ_HEAL_MSG, 1 << PAR
	cp PARLYZ_HEAL
	jr z, .checkMonStatus
	lb bc, FULL_HEAL_MSG, $ff ; Full Heal
.checkMonStatus
	ld a, [hl] ; pokemon's status
	and c ; does the pokemon have a status ailment the item can cure?
	jp z, .healingItemNoEffect
	; if the pokemon has a status the item can heal
	xor a
	ld [hl], a ; remove the status ailment in the party data
	ld a, b
	ld [wPartyMenuTypeOrMessageID], a ; the message to display for the item used
	ld a, [wPlayerMonNumber]
	cp d ; is pokemon the item was used on active in battle?
	jp nz, .doneHealing
	; if it is active in battle
	xor a
	ld [wBattleMonStatus], a ; remove the status ailment in the in-battle pokemon data
	push hl
	ld hl, wPlayerBattleStatus3
	res BADLY_POISONED, [hl] ; heal Toxic status
	pop hl

.doneHealing
	push hl
	call RemoveUsedItem
	pop hl
;playStatusAilmentCuringSound
	ld a, SFX_HEAL_AILMENT
	call PlaySoundWaitForCurrent
;.showHealingItemMessage
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	call ClearScreen
	dec a
	ld [wUpdateSpritesEnabled], a
	call RedrawPartyMenu ; redraws the party menu and displays the message
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	ld c, 50
	call DelayFrames
	call WaitForTextScrollButtonPress
	jr .done
.canceledItemUse
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	pop af
	pop af
.done
	call GBPalWhiteOut
	call z, RunDefaultPaletteCommand
	ld a, [wIsInBattle]
	and a
	ret nz
	jp ReloadMapData

VitaminEffect:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	ld a, [wPartyCount]
	and a
	jp z, .emptyParty
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
	ld a, USE_ITEM_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	jr .notEmptyParty
.emptyParty
	ld hl, EmptyPartyText
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	jp PrintText
.notEmptyParty
	call DisplayPartyMenu
	jp c, .canceledItemUse
	ld hl, wPartyMons
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wWhichPokemon]
	call AddNTimes
	ld a, [wWhichPokemon]
	ld [wUsedItemOnWhichPokemon], a
	ld d, a
	ld a, [wcf91]
	ld e, a
	ld [wd0b5], a
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a
;.useVitamin
	push hl
	ld a, [hl]
	ld [wd0b5], a
	ld [wd11e], a
	ld bc, wPartyMon1Level - wPartyMon1
	add hl, bc ; hl now points to level
	ld a, [hl] ; a = level
	ld [wCurEnemyLVL], a ; store level
	call GetMonHeader
	push de
	ld a, d
	ld hl, wPartyMonNicks
	call GetPartyMonName
	pop de
	pop hl
	ld a, [wcf91]
	cp RARE_CANDY
	jp z, .useRareCandy
	push hl
	sub HP_UP
	add a
	ld bc, wPartyMon1HPExp - wPartyMon1
	add hl, bc
	add l
	ld l, a
	jr nc, .noCarry2
	inc h
.noCarry2
	ld a, 10
	ld b, a
	inc hl
	ld a, [hl] ; a = LSB (was MSB) of stat experience of the appropriate stat
	cp 200 ; is there already at least 200 stat experience?
	jr nc, .vitaminNoEffect ; if so, vitamins can't add any more
	add b ; add 10 stat experience
	cp 200
	jr c, .noCarry3 ; a carry should be impossible here, so this will always jump
	ld a, 200
.noCarry3
	ld [hl], a
	pop hl
	call .recalculateStats
	ld hl, VitaminText
	ld a, [wcf91]
	sub HP_UP - 1
	ld c, a
.statNameLoop ; loop to get the address of the name of the stat the vitamin increases
	dec c
	jr z, .gotStatName
.statNameInnerLoop
	ld a, [hli]
	ld b, a
	ld a, $50
	cp b
	jr nz, .statNameInnerLoop
	jr .statNameLoop
.gotStatName
	ld de, wcf4b
	ld bc, 10
	call CopyData ; copy the stat's name to wcf4b
	ld a, SFX_HEAL_AILMENT
	call PlaySound
	ld hl, VitaminStatRoseText
	call PrintText
	jp RemoveUsedItem
.vitaminNoEffect
	pop hl
	ld hl, VitaminNoEffectText
	call PrintText
	jp GBPalWhiteOut
.recalculateStats
	ld bc, wPartyMon1Stats - wPartyMon1
	add hl, bc
	ld d, h
	ld e, l ; de now points to stats
	ld bc, (wPartyMon1Exp + 2) - wPartyMon1Stats
	add hl, bc ; hl now points to LSB of experience
	ld b, 1
	jp CalcStats ; recalculate stats
.useRareCandy
	push hl
	ld bc, wPartyMon1Level - wPartyMon1
	add hl, bc ; hl now points to level
	ld a, [hl] ; a = level
	cp MAX_LEVEL
	jr z, .vitaminNoEffect ; can't raise level above 100
	inc a
	ld [hl], a ; store incremented level
	ld [wCurEnemyLVL], a
	push hl
	push de
	ld d, a
	callab CalcExperience ; calculate experience for next level and store it at $ff96
	pop de
	pop hl
	ld bc, wPartyMon1Exp - wPartyMon1Level
	add hl, bc ; hl now points to MSB of experience
; update experience to minimum for new level
	ld a, [hExperience]
	ld [hli], a
	ld a, [hExperience + 1]
	ld [hli], a
	ld a, [hExperience + 2]
	ld [hl], a
	pop hl
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
	push de
	push hl
	ld bc, wPartyMon1MaxHP - wPartyMon1
	add hl, bc ; hl now points to MSB of max HP
	ld a, [hli]
	ld b, a
	ld c, [hl]
	pop hl
	push bc
	push hl
	call .recalculateStats
	pop hl
	ld bc, (wPartyMon1MaxHP + 1) - wPartyMon1
	add hl, bc ; hl now points to LSB of max HP
	pop bc
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a ; bc = the amount of max HP gained from leveling up
; add the amount gained to the current HP
	ld de, (wPartyMon1HP + 1) - wPartyMon1MaxHP
	add hl, de ; hl now points to LSB of current HP
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a
	ld a, RARE_CANDY_MSG
	ld [wPartyMenuTypeOrMessageID], a
	call RedrawPartyMenu
	pop de
	ld a, d
	ld [wWhichPokemon], a
	ld a, e
	ld [wd11e], a
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	call LoadMonData
	ld d, $01
	callab PrintStatsBox ; display new stats text box
	call WaitForTextScrollButtonPress ; wait for button press
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	predef LearnMoveFromLevelUp ; learn level up move, if any
	xor a
	ld [wForceEvolution], a
	callabd_ModifyFriendship FRIENDSHIP_GAINLEVEL
	callab TryEvolvingMon ; evolve pokemon, if appropriate
	ld a, $01
	ld [wUpdateSpritesEnabled], a
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a
	jp RemoveUsedItem
.canceledItemUse
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	pop af
	pop af
.done
	call GBPalWhiteOut
	call z, RunDefaultPaletteCommand
	ld a, [wIsInBattle]
	and a
	ret nz
	jp ReloadMapData

VitaminStatRoseText:
	TX_FAR _VitaminStatRoseText
	db "@"

VitaminNoEffectText:
	TX_FAR _VitaminNoEffectText
	db "@"

VitaminText:
	db "HEALTH@"
	db "ATTACK@"
	db "DEFENSE@"
	db "SPEED@"
	db "SPECIAL@"

ReviveEffect:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	ld a, [wPartyCount]
	and a
	jp z, .emptyParty
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
	ld a, USE_ITEM_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	jr .notEmptyParty
.emptyParty
	ld hl, EmptyPartyText
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	jp PrintText
.notEmptyParty
	call DisplayPartyMenu
	jp c, .canceledItemUse
	ld hl, wPartyMons
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wWhichPokemon]
	call AddNTimes
	ld a, [wWhichPokemon]
	ld [wUsedItemOnWhichPokemon], a
	ld d, a
	ld a, [wcf91]
	ld e, a
	ld [wd0b5], a
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a
;.healHP
	inc hl ; hl = address of current HP
	ld a, [hli]
	ld b, a
	ld [wHPBarOldHP+1], a
	ld a, [hl]
	ld c, a
	ld [wHPBarOldHP], a ; current HP stored at wHPBarOldHP (2 bytes, big-endian)
	or b
	jp nz, .healingItemNoEffect
;.updateInBattleFaintedData
	ld a, [wIsInBattle]
	and a
	jr z, .compareCurrentHPToMaxHP
	push hl
	push de
	push bc
	ld a, [wUsedItemOnWhichPokemon]
	ld c, a
	ld hl, wPartyFoughtCurrentEnemyFlags
	ld b, FLAG_TEST
	predef FlagActionPredef
	ld a, c
	and a
	jr z, .next
	ld a, [wUsedItemOnWhichPokemon]
	ld c, a
	ld hl, wPartyGainExpFlags
	ld b, FLAG_SET
	predef FlagActionPredef
.next
	pop bc
	pop de
	pop hl
.compareCurrentHPToMaxHP
	push hl
	push bc
	ld bc, wPartyMon1MaxHP - (wPartyMon1HP + 1)
	add hl, bc ; hl now points to max HP
	pop bc
	ld a, [hli]
	cp b
	jr nz, .skipComparingLSB ; no need to compare the LSB's if the MSB's don't match
	ld a, [hl]
	cp c
.skipComparingLSB
	pop hl
	jr z, .healingItemNoEffect ; no effect if hp is full
;.notFullHP ; if the pokemon's current HP doesn't equal its max HP
	xor a
	ld [wLowHealthAlarm], a ;disable low health alarm
	ld [wChannelSoundIDs + Ch4], a
	push hl
	push de
	ld bc, wPartyMon1MaxHP - (wPartyMon1HP + 1)
	add hl, bc ; hl now points to max HP
	ld a, [hli]
	ld [wHPBarMaxHP+1], a
	ld a, [hl]
	ld [wHPBarMaxHP], a ; max HP stored at wHPBarMaxHP (2 bytes, big-endian)

	ld a, [wcf91]
	cp MAX_REVIVE
	jr z, .setCurrentHPToMaxHp ; if using a Max Revive
;.setCurrentHPToHalfMaxHP
	dec hl
	dec de
	ld a, [hli]
	srl a
	ld [de], a
	ld [wHPBarNewHP+1], a
	ld a, [hl]
	rr a
	inc de
	ld [de], a
	ld [wHPBarNewHP], a
	dec de
	jr .doneHealingPartyHP
.setCurrentHPToMaxHp
	ld a, [hli]
	ld [de], a
	ld [wHPBarNewHP+1], a
	inc de
	ld a, [hl]
	ld [de], a
	ld [wHPBarNewHP], a
	dec de
.doneHealingPartyHP ; done updating the pokemon's current HP in the party data structure
	ld bc, wPartyMon1Status - (wPartyMon1MaxHP + 1)
	add hl, bc
	xor a
	ld [hl], a ; remove the status ailment in the party data
.updateInBattleData
	ld h, d
	ld l, e
	pop de
	ld a, [wPlayerMonNumber]
	cp d ; is pokemon the item was used on active in battle?
	jr nz, .calculateHPBarCoords
; copy party HP to in-battle HP
	ld a, [hli]
	ld [wBattleMonHP], a
	ld a, [hld]
	ld [wBattleMonHP + 1], a
	xor a
	ld [wBattleMonStatus], a ; remove the status ailment in the in-battle pokemon data
.calculateHPBarCoords
	ld hl, wOAMBuffer + $90
	ld bc, 2 * SCREEN_WIDTH
	inc d
.calculateHPBarCoordsLoop
	add hl, bc
	dec d
	jr nz, .calculateHPBarCoordsLoop
	jr .doneHealing
.healingItemNoEffect
	call ItemUseNoEffect
	jp .done
.doneHealing
	push hl
	call RemoveUsedItem
	pop hl
	ld a, SFX_HEAL_HP
	call PlaySoundWaitForCurrent
	ld a, [hFlags_0xFFF6]
	set 0, a
	ld [hFlags_0xFFF6], a
	ld a, $02
	ld [wHPBarType], a
	predef UpdateHPBar2 ; animate the HP bar lengthening
	ld a, [hFlags_0xFFF6]
	res 0, a
	ld [hFlags_0xFFF6], a
	ld a, REVIVE_MSG
	ld [wPartyMenuTypeOrMessageID], a
.showHealingItemMessage
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	call ClearScreen
	dec a
	ld [wUpdateSpritesEnabled], a
	call RedrawPartyMenu ; redraws the party menu and displays the message
	ld a, 1
	ld [H_AUTOBGTRANSFERENABLED], a
	ld c, 50
	call DelayFrames
	call WaitForTextScrollButtonPress
	jr .done
.canceledItemUse
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	pop af
	pop af
.done
	call GBPalWhiteOut
	call z, RunDefaultPaletteCommand
	ld a, [wIsInBattle]
	and a
	ret nz
	jp ReloadMapData

EmptyPartyText:
	text "You don't have"
	line "any #MON!"
	prompt

ItemUseTownMap:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	jpba DisplayTownMap

ItemUseBicycle:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	ld a, [wWalkBikeSurfState]
	ld [wWalkBikeSurfStateCopy], a
	cp 2 ; is the player surfing?
	jp z, ItemUseNotTime
	dec a ; is player already bicycling?
	jr nz, .tryToGetOnBike
.getOffBike
	call ItemUseReloadOverworldData
	xor a
	ld [wWalkBikeSurfState], a ; change player state to walking
	call PlayDefaultMusic ; play walking music
	ld hl, GotOffBicycleText
	jr .printText
.tryToGetOnBike
	call IsBikeRidingAllowed
	jp nc, NoCyclingAllowedHere
	call ItemUseReloadOverworldData
	xor a ; no keys pressed
	ld [hJoyHeld], a ; current joypad state
	inc a
	ld [wWalkBikeSurfState], a ; change player state to bicycling
	ld hl, GotOnBicycleText
	call PlayDefaultMusic ; play bike riding music
.printText
	jp PrintText

; pseudo-item used for Surf out-of-battle effect
ItemUseSurfboard:
	ld a, [wWalkBikeSurfState]
	ld [wWalkBikeSurfStateCopy], a
	cp 2 ; is the player already surfing?
	jr z, .tryToStopSurfing
.tryToSurf
	call IsNextTileShoreOrWater
	jp c, SurfingAttemptFailed
	ld hl, TilePairCollisionsWater
	call CheckForTilePairCollisions
	jp c, SurfingAttemptFailed
.surf
	call .makePlayerMoveForward
	ld hl, wd730
	set 7, [hl]
	ld a, 2
	ld [wWalkBikeSurfState], a ; change player state to surfing
	call PlayDefaultMusic ; play surfing music
	ld hl, SurfingGotOnText
	jp PrintText
.tryToStopSurfing
	xor a
	ld [hSpriteIndexOrTextID], a
	ld d, 16 ; talking range in pixels (normal range)
	call IsSpriteInFrontOfPlayer2
	res 7, [hl]
	ld a, [hSpriteIndexOrTextID]
	and a ; is there a sprite in the way?
	jr nz, .cannotStopSurfing
	ld hl, TilePairCollisionsWater
	call CheckForTilePairCollisions
	jr c, .cannotStopSurfing
	ld hl, wTilesetCollisionPtr ; pointer to list of passable tiles
	ld a, [hli]
	ld h, [hl]
	ld l, a ; hl now points to passable tiles
	ld a, [wTileInFrontOfPlayer] ; tile in front of the player
	ld b, a
.passableTileLoop
	ld a, [hli]
	cp b
	jr z, .stopSurfing
	cp $ff
	jr nz, .passableTileLoop
.cannotStopSurfing
	ld hl, SurfingNoPlaceToGetOffText
	jp PrintText
.stopSurfing
	call .makePlayerMoveForward
	ld hl, wd730
	set 7, [hl]
	xor a
	ld [wWalkBikeSurfState], a ; change player state to walking
	dec a
	ld [wJoyIgnore], a
	call PlayDefaultMusic ; play walking music
	jp LoadWalkingPlayerSpriteGraphics
; uses a simulated button press to make the player move forward
.makePlayerMoveForward
	ld a, [wPlayerDirection] ; direction the player is going
	bit PLAYER_DIR_BIT_UP, a
	ld b, D_UP
	jr nz, .storeSimulatedButtonPress
	bit PLAYER_DIR_BIT_DOWN, a
	ld b, D_DOWN
	jr nz, .storeSimulatedButtonPress
	bit PLAYER_DIR_BIT_LEFT, a
	ld b, D_LEFT
	jr nz, .storeSimulatedButtonPress
	ld b, D_RIGHT
.storeSimulatedButtonPress
	ld a, b
	ld [wSimulatedJoypadStatesEnd], a
	xor a
	ld [wWastedByteCD39], a
	inc a
	ld [wSimulatedJoypadStatesIndex], a
	ret

SurfingGotOnText:
	TX_FAR _SurfingGotOnText
	db "@"

SurfingNoPlaceToGetOffText:
	TX_FAR _SurfingNoPlaceToGetOffText
	db "@"

; item used for evolution items
EvoItemEffect:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	ld [wEvoStoneItemID], a
	push af
	ld a, EVO_STONE_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	call DisplayPartyMenu
	pop bc
	jr c, .canceledItemUse
	ld a, b
	ld [wcf91], a
	ld a, $01
	ld [wForceEvolution], a
	ld a, SFX_HEAL_AILMENT
	call PlaySoundWaitForCurrent
	call WaitForSoundToFinish
	callab TryEvolvingMon ; try to evolve pokemon
	ld a, [wEvolutionOccurred]
	and a
	jr z, .noEffect
	pop af
	ld [wWhichPokemon], a
	ld hl, wNumBagItems
	ld a, 1 ; remove 1 stone
	ld [wItemQuantity], a
	jp RemoveItemFromInventory
.noEffect
	call ItemUseNoEffect
.canceledItemUse
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item not used
	pop af
	ret

; also used for Dig out-of-battle effect
ItemUseEscapeRope:
	ld a, [wIsInBattle]
	and a
	jr nz, .notUsable
	ld a, [wCurMap]
	cp AGATHAS_ROOM
	jr z, .notUsable
	ld a, [wCurMapTileset]
	ld b, a
	ld hl, EscapeRopeTilesets
.loop
	ld a, [hli]
	cp $ff
	jr z, .notUsable
	cp b
	jr nz, .loop
	ld hl, wd732
	set 3, [hl]
	set 6, [hl]
	ld hl, wd72e
	res 4, [hl]
	ResetEvent EVENT_IN_SAFARI_ZONE
	xor a
	ld [wNumSafariBalls], a
	ld [wSafariZoneGateCurScript], a
	inc a
	ld [wEscapedFromBattle], a
	ld [wActionResultOrTookBattleTurn], a ; item used
	ld a, [wPseudoItemID]
	and a ; using Dig?
	ret nz ; if so, return
	call ItemUseReloadOverworldData
	ld c, 30
	call DelayFrames
	jp RemoveUsedItem
.notUsable
	jp ItemUseNotTime

EscapeRopeTilesets:
	db FOREST, CEMETERY, CAVERN, FACILITY, INTERIOR
	db $ff ; terminator

ItemUseSuperRepel:
	ld b, 200
	jp ItemUseRepelCommon

ItemUseMaxRepel:
	ld b, 250
	jp ItemUseRepelCommon

ItemUseRepel:
	ld b, 100

ItemUseRepelCommon:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime

	; Check if repel is already in effect
	ld a, [wRepelRemainingSteps]
	and a
	jp nz, .repelInEffect

	ld a, b
	ld [wRepelRemainingSteps], a
	jp PrintItemUseTextAndRemoveItem

.repelInEffect ; Load text to explain that the item cannot be used
	ld hl, ItemRepelInEffectText
	jp ItemUseFailed

; handles X Accuracy item
ItemUseXAccuracy:
	ld a, [wIsInBattle]
	and a
	jp z, ItemUseNotTime
	ld hl, wPlayerBattleStatus2
	set USING_X_ACCURACY, [hl] ; X Accuracy bit
	callabd_ModifyFriendship FRIENDSHIP_USEDXITEM
	jp PrintItemUseTextAndRemoveItem

ItemUsePokedoll:
	ld a, [wIsInBattle]
	dec a
	jp nz, ItemUseNotTime
	ld a, $01
	ld [wEscapedFromBattle], a
	jp PrintItemUseTextAndRemoveItem

ItemUseGuardSpec:
	ld a, [wIsInBattle]
	and a
	jp z, ItemUseNotTime
	callabd_ModifyFriendship FRIENDSHIP_USEDXITEM
	ld hl, wPlayerBattleStatus2
	set PROTECTED_BY_MIST, [hl] ; Mist bit
	jp PrintItemUseTextAndRemoveItem

ItemUseDireHit:
	ld a, [wIsInBattle]
	and a
	jp z, ItemUseNotTime
	callabd_ModifyFriendship FRIENDSHIP_USEDXITEM
	ld hl, wPlayerBattleStatus2
	set GETTING_PUMPED, [hl] ; Focus Energy bit
	jp PrintItemUseTextAndRemoveItem

ItemUseXStat:
	ld a, [wIsInBattle]
	and a
	jr nz, .inBattle
	call ItemUseNotTime
	ld a, 2
	ld [wActionResultOrTookBattleTurn], a ; item not used
	ret
.inBattle
	ld hl, wPlayerMoveNum
	ld a, [hli]
	push af ; save [wPlayerMoveNum]
	ld a, [hl]
	push af ; save [wPlayerMoveEffect]
	push hl
	ld a, [wcf91]
	sub X_ATTACK - ATTACK_UP1_EFFECT
	ld [hl], a ; store player move effect
	call PrintItemUseTextAndRemoveItem
	ld a, XSTATITEM_ANIM ; X stat item animation ID
	ld [wPlayerMoveNum], a
	call LoadScreenTilesFromBuffer1 ; restore saved screen
	call Delay3
	xor a
	ld [H_WHOSETURN], a ; set turn to player's turn
	callba StatModifierUpEffect ; do stat increase move

	push af
	callabd_ModifyFriendship FRIENDSHIP_USEDXITEM
	pop af

	pop hl
	pop af
	ld [hld], a ; restore [wPlayerMoveEffect]
	pop af
	ld [hl], a ; restore [wPlayerMoveNum]
	ret

ItemUsePokeflute:
	ld a, [wIsInBattle]
	and a
	jr nz, .inBattle
	; if not in battle
	call ItemUseReloadOverworldData
	ld a, [wCurMap]
	cp ROUTE_12
	jr nz, .notRoute12
	CheckEvent EVENT_BEAT_ROUTE12_SNORLAX
	jr nz, .noSnorlaxToWakeUp
	; if the player hasn't beaten Route 12 Snorlax
	ld hl, Route12SnorlaxFluteCoords
	call ArePlayerCoordsInArray
	jr nc, .noSnorlaxToWakeUp
	ld hl, PlayedFluteHadEffectText
	call PrintText
	SetEvent EVENT_FIGHT_ROUTE12_SNORLAX
	ret
.notRoute12
	cp ROUTE_16
	jr nz, .noSnorlaxToWakeUp
	CheckEvent EVENT_BEAT_ROUTE16_SNORLAX
	jr nz, .noSnorlaxToWakeUp
	; if the player hasn't beaten Route 16 Snorlax
	ld hl, Route16SnorlaxFluteCoords
	call ArePlayerCoordsInArray
	jr nc, .noSnorlaxToWakeUp
	ld hl, PlayedFluteHadEffectText
	call PrintText
	SetEvent EVENT_FIGHT_ROUTE16_SNORLAX
	ret
.noSnorlaxToWakeUp
	ld hl, PlayedFluteNoEffectText
	jp PrintText
.inBattle
	xor a
	ld [wWereAnyMonsAsleep], a
	ld b, ~SLP & $ff
	ld hl, wPartyMon1Status
	call WakeUpEntireParty
	ld a, [wIsInBattle]
	dec a ; is it a trainer battle?
	jr z, .skipWakingUpEnemyParty
	; if it's a trainer battle
	ld hl, wEnemyMon1Status
	call WakeUpEntireParty
.skipWakingUpEnemyParty
	ld hl, wBattleMonStatus
	ld a, [hl]
	and b ; remove Sleep status
	ld [hl], a
	ld hl, wEnemyMonStatus
	ld a, [hl]
	and b ; remove Sleep status
	ld [hl], a
	call LoadScreenTilesFromBuffer2 ; restore saved screen
	ld a, [wWereAnyMonsAsleep]
	and a ; were any pokemon asleep before playing the flute?
	ld hl, PlayedFluteNoEffectText
	jp z, PrintText ; if no pokemon were asleep
	; if some pokemon were asleep
	ld hl, PlayedFluteHadEffectText
	call PrintText
	ld a, [wLowHealthAlarm]
	and $80
	jr nz, .skipMusic
	call WaitForSoundToFinish ; wait for sound to end
	callba Music_PokeFluteInBattle ; play in-battle pokeflute music
.musicWaitLoop ; wait for music to finish playing
	ld a, [wChannelSoundIDs + Ch6]
	and a ; music off?
	jr nz, .musicWaitLoop
.skipMusic
	ld hl, FluteWokeUpText
	jp PrintText

; wakes up all party pokemon
; INPUT:
; hl must point to status of first pokemon in party (player's or enemy's)
; b must equal ~SLP
; [wWereAnyMonsAsleep] should be initialized to 0
; OUTPUT:
; [wWereAnyMonsAsleep]: set to 1 if any pokemon were asleep
WakeUpEntireParty:
	ld de, 44
	ld c, 6
.loop
	ld a, [hl]
	push af
	and SLP ; is pokemon asleep?
	jr z, .notAsleep
	ld a, 1
	ld [wWereAnyMonsAsleep], a ; indicate that a pokemon had to be woken up
.notAsleep
	pop af
	and b ; remove Sleep status
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop
	ret

; Format:
; 00: Y
; 01: X
Route12SnorlaxFluteCoords:
	db 62,9  ; one space West of Snorlax
	db 61,10 ; one space North of Snorlax
	db 63,10 ; one space South of Snorlax
	db 62,11 ; one space East of Snorlax
	db $ff ; terminator

; Format:
; 00: Y
; 01: X
Route16SnorlaxFluteCoords:
	db 10,27 ; one space East of Snorlax
	db 10,25 ; one space West of Snorlax
	db $ff ; terminator

PlayedFluteNoEffectText:
	TX_FAR _PlayedFluteNoEffectText
	db "@"

FluteWokeUpText:
	TX_FAR _FluteWokeUpText
	db "@"

PlayedFluteHadEffectText:
	TX_FAR _PlayedFluteHadEffectText
	TX_BLINK
	TX_ASM
	ld a, [wIsInBattle]
	and a
	jr nz, .done
	; play out-of-battle pokeflute music
	ld a, $ff
	call PlaySound ; turn off music
	ld a, SFX_POKEFLUTE
	ld c, BANK(SFX_Pokeflute)
	call PlayMusic
.musicWaitLoop ; wait for music to finish playing
	ld a, [wChannelSoundIDs + Ch2]
	cp SFX_POKEFLUTE
	jr z, .musicWaitLoop
	call PlayDefaultMusic ; start playing normal music again
.done
	jp TextScriptEnd ; end text

ItemUseOldRod:
	call FishingInit
	jp c, ItemUseNotTime
	lb bc, 5, MAGIKARP
	ld a, $1 ; set bite
	jr RodResponse

ItemUseGoodRod:
	call FishingInit
	jp c, ItemUseNotTime
.RandomLoop
	call Random
	srl a
	jr c, .SetBite
	and %11
	cp 2
	jr nc, .RandomLoop
	; choose which monster appears
	ld hl, GoodRodMons
	add a
	ld c, a
	ld b, 0
	add hl, bc
	ld b, [hl]
	inc hl
	ld c, [hl]
	and a
.SetBite
	ld a, 0
	rla
	xor 1
	jr RodResponse

INCLUDE "data/good_rod.asm"

ItemUseSuperRod:
	call FishingInit
	jp c, ItemUseNotTime
	call ReadSuperRodData
	ld a, e
RodResponse:
	ld [wRodResponse], a

	dec a ; is there a bite?
	jr nz, .next
	; if yes, store level and species data
	ld a, 1
	ld [wMoveMissed], a
	ld a, b ; level
	ld [wCurEnemyLVL], a
	ld a, c ; species
	ld [wCurOpponent], a

.next
	ld hl, wWalkBikeSurfState
	ld a, [hl] ; store the value in a
	push af
	push hl
	ld [hl], 0
	callba FishingAnim
	pop hl
	pop af
	ld [hl], a
	ret

; checks if fishing is possible and if so, runs initialization code common to all rods
; unsets carry if fishing is possible, sets carry if not
FishingInit:
	ld a, [wIsInBattle]
	and a
	jr z, .notInBattle
	scf ; can't fish during battle
	ret
.notInBattle
	call IsNextTileShoreOrWater
	ret c
	ld a, [wWalkBikeSurfState]
	cp 2 ; Surfing?
	jr z, .surfing
	call ItemUseReloadOverworldData
	ld hl, ItemUseText00
	call PrintText
	ld a, SFX_HEAL_AILMENT
	call PlaySound
	ld c, 80
	call DelayFrames
	and a
	ret
.surfing
	scf ; can't fish when surfing
	ret

ItemUseOaksParcel:
	jp ItemUseNotYoursToUse

ItemUseItemfinder:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	call ItemUseReloadOverworldData
	callba HiddenItemNear ; check for hidden items
	ld hl, ItemfinderFoundNothingText
	jr nc, .printText ; if no hidden items
	ld c, 4
.loop
	ld a, SFX_HEALING_MACHINE
	call PlaySoundWaitForCurrent
	ld a, SFX_PURCHASE
	call PlaySoundWaitForCurrent
	dec c
	jr nz, .loop
	ld hl, ItemfinderFoundItemText
.printText
	jp PrintText

ItemfinderFoundItemText:
	TX_FAR _ItemfinderFoundItemText
	db "@"

ItemfinderFoundNothingText:
	TX_FAR _ItemfinderFoundNothingText
	db "@"

EffectPPUp:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime

ItemUsePPRestore:
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	ld [wPPRestoreItem], a
.chooseMon
	xor a
	ld [wUpdateSpritesEnabled], a
	ld a, USE_ITEM_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	call DisplayPartyMenu
	jr nc, .chooseMove
	jp .itemNotUsed
.chooseMove
	ld a, [wPPRestoreItem]
	cp ELIXER
	jp nc, .useElixir ; if Elixir or Max Elixir
	ld a, $02
	ld [wMoveMenuType], a
	ld hl, RaisePPWhichTechniqueText
	ld a, [wPPRestoreItem]
	cp ETHER ; is it a PP Up?
	jr c, .printWhichTechniqueMessage ; if so, print the raise PP message
	ld hl, RestorePPWhichTechniqueText ; otherwise, print the restore PP message
.printWhichTechniqueMessage
	call PrintText
	xor a
	ld [wPlayerMoveListIndex], a
	callab MoveSelectionMenu ; move selection menu
	ld a, 0
	ld [wPlayerMoveListIndex], a
	jr nz, .chooseMon
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call GetSelectedMoveOffset
	push hl
	ld a, [hl]
	ld [wd11e], a
	call GetMoveName
	call CopyStringToCF4B ; copy name to wcf4b
	pop hl
	ld a, [wPPRestoreItem]
	cp ETHER
	jr nc, .useEther ; if Ether or Max Ether
.usePPUp
	ld bc, wPartyMon1PP - wPartyMon1Moves
	add hl, bc
	ld a, [hl] ; move PP
	cp 3 << 6 ; have 3 PP Ups already been used?
	jr c, .PPNotMaxedOut
	ld hl, PPMaxedOutText
	call PrintText
	jr .chooseMove
.PPNotMaxedOut
	ld a, [wPPRestoreItem]
	cp PP_MAX
	jr z, .UsePPMax
	ld a, [hl]
	add 1 << 6 ; increase PP Up count by 1
	ld [hl], a
	ld a, 1 ; 1 PP Up used
	ld [wd11e], a
	jr .ppPrintText
.UsePPMax
	ld a, 3 << 6 ; set PP Up count to 3
	ld [hl], a
	ld a, 3 ; 3 PP Ups used
	ld [wd11e], a
.ppPrintText
	call RestoreBonusPP ; add the bonus PP to current PP
	ld hl, PPIncreasedText
	call PrintText
.done
	pop af
	ld [wWhichPokemon], a
	call GBPalWhiteOut
	call RunDefaultPaletteCommand
	jp RemoveUsedItem
.afterRestoringPP ; after using a (Max) Ether/Elixir
	ld a, [wWhichPokemon]
	ld b, a
	ld a, [wPlayerMonNumber]
	cp b ; is the pokemon whose PP was restored active in battle?
	jr nz, .skipUpdatingInBattleData
	ld hl, wPartyMon1PP
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes
	ld de, wBattleMonPP
	ld bc, 4
	call CopyData ; copy party data to in-battle data
.skipUpdatingInBattleData
	ld a, SFX_HEAL_AILMENT
	call PlaySound
	ld hl, PPRestoredText
	call PrintText
	jr .done
.useEther
	call .restorePP
	jr nz, .afterRestoringPP
	jp .noEffect
; unsets zero flag if PP was restored, sets zero flag if not
; however, this is bugged for Max Ethers and Max Elixirs (see below)
.restorePP
	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	call GetMaxPP
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call GetSelectedMoveOffset
	ld bc, wPartyMon1PP - wPartyMon1Moves
	add hl, bc ; hl now points to move's PP
	ld a, [wMaxPP]
	ld b, a
	ld a, [wPPRestoreItem]
	cp MAX_ETHER
	jr z, .fullyRestorePP
	ld a, [hl] ; move PP
	and %00111111 ; lower 6 bit bits store current PP
	cp b ; does current PP equal max PP?
	ret z ; if so, return
	add 10 ; increase current PP by 10
; b holds the max PP amount and b will hold the new PP amount.
; So, if the new amount meets or exceeds the max amount,
; cap the amount to the max amount by leaving b unchanged.
; Otherwise, store the new amount in b.
	cp b ; does the new amount meet or exceed the maximum?
	jr nc, .storeNewAmount
	ld b, a
.storeNewAmount
	ld a, [hl] ; move PP
	and %11000000 ; PP Up counter bits
	add b
	ld [hl], a
	ret
.fullyRestorePP
	ld a, [hl] ; move PP
; Note that this code has a bug. It doesn't mask out the upper two bits, which
; are used to count how many PP Ups have been used on the move. So, Max Ethers
; and Max Elixirs will not be detected as having no effect on a move with full
; PP if the move has had any PP Ups used on it.
	cp b ; does current PP equal max PP?
	ret z
	jr .storeNewAmount
.useElixir
; decrement the item ID so that ELIXER becomes ETHER and MAX_ELIXER becomes MAX_ETHER
	ld hl, wPPRestoreItem
	dec [hl]
	dec [hl]
	xor a
	ld hl, wCurrentMenuItem
	ld [hli], a
	ld [hl], a ; zero the counter for number of moves that had their PP restored
	ld b, 4
; loop through each move and restore PP
.elixirLoop
	push bc
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call GetSelectedMoveOffset
	ld a, [hl]
	and a ; does the current slot have a move?
	jr z, .nextMove
	call .restorePP
	jr z, .nextMove
	; if some PP was restored
	ld hl, wTileBehindCursor ; counter for number of moves that had their PP restored
	inc [hl]
.nextMove
	ld hl, wCurrentMenuItem
	inc [hl]
	pop bc
	dec b
	jr nz, .elixirLoop
	ld a, [wTileBehindCursor]
	and a ; did any moves have their PP restored?
	jp nz, .afterRestoringPP
.noEffect
	call ItemUseNoEffect
.itemNotUsed
	call GBPalWhiteOut
	call RunDefaultPaletteCommand
	pop af
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	ret

RaisePPWhichTechniqueText:
	TX_FAR _RaisePPWhichTechniqueText
	db "@"

RestorePPWhichTechniqueText:
	TX_FAR _RestorePPWhichTechniqueText
	db "@"

PPMaxedOutText:
	TX_FAR _PPMaxedOutText
	db "@"

PPIncreasedText:
	TX_FAR _PPIncreasedText
	db "@"

PPRestoredText:
	TX_FAR _PPRestoredText
	db "@"

ItemUseTMHM:
	ld a, [wIsInBattle]    ; are we in battle?
	and a                  ; if value is not ZERO (0), we are in battle.
	jp nz, ItemUseNotTime  ; item can't be used in battle. Branch away
	ld a, [wcf91]
	sub TM_01
	push af
	jr nc, .skipAdding
	add 55                 ; if item is an HM, add 55
.skipAdding
	inc a
	ld [wd11e], a
	predef TMToMove        ; get move ID from TM/HM ID
	ld a, [wd11e]
	ld [wMoveNum], a
	call GetMoveName
	call CopyStringToCF4B  ; copy name to wcf4b
	pop af
	ld hl, BootedUpTMText
	jr nc, .printBootedUpMachineText
	ld hl, BootedUpHMText
.printBootedUpMachineText
	call PrintText
	ld hl, TeachMachineMoveText
	call PrintText
	coord hl, 14, 7
	lb bc, 8, 15
	ld a, TWO_OPTION_MENU
	ld [wTextBoxID], a
	call DisplayTextBoxID ; yes/no menu
	ld a, [wCurrentMenuItem]
	and a
	jr z, .useMachine
	ld a, 2
	ld [wActionResultOrTookBattleTurn], a ; item not used
	ret
.useMachine
	ld a, [wWhichPokemon]
	push af
	ld a, [wcf91]
	push af
.chooseMon
	ld hl, wcf4b
	ld de, wTempMoveNameBuffer
	ld bc, 14
	call CopyData ; save the move name because DisplayPartyMenu will overwrite it
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	ld a, TMHM_PARTY_MENU
	ld [wPartyMenuTypeOrMessageID], a
	call DisplayPartyMenu
	push af
	ld hl, wTempMoveNameBuffer
	ld de, wcf4b
	ld bc, 14
	call CopyData
	pop af
	jr nc, .checkIfAbleToLearnMove
; if the player canceled teaching the move
	pop af
	pop af
	call GBPalWhiteOutWithDelay3
	call ClearSprites
	call RunDefaultPaletteCommand
	jp LoadScreenTilesFromBuffer1 ; restore saved screen
.checkIfAbleToLearnMove
	predef CanLearnTM ; check if the pokemon can learn the move
	push bc
	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
	pop bc
	ld a, c
	and a ; can the pokemon learn the move?
	jr nz, .checkIfAlreadyLearnedMove
; if the pokemon can't learn the move
	ld a, SFX_DENIED
	call PlaySoundWaitForCurrent
	ld hl, MonCannotLearnMachineMoveText
	call PrintText
	jr .chooseMon
.checkIfAlreadyLearnedMove
	callab CheckIfMoveIsKnown ; check if the pokemon already knows the move
	jr c, .chooseMon
	predef LearnMove ; teach move
	ld a, [wWhichPokemon]
	ld d, a
	pop af
	ld [wcf91], a
	pop af
	ld [wWhichPokemon], a
	ld a, b
	and a
	ret z

	ld a, [wWhichPokemon]
	push af
	ld a, d
	ld [wWhichPokemon], a
	callabd_ModifyFriendship FRIENDSHIP_LEARNMOVE

	pop af
	ld [wWhichPokemon], a
	ld a, [wcf91]
	ret ; TMs can be used multiple times over
	;call IsItemHM
	;ret c
	;jp RemoveUsedItem

BootedUpTMText:
	TX_FAR _BootedUpTMText
	db "@"

BootedUpHMText:
	TX_FAR _BootedUpHMText
	db "@"

TeachMachineMoveText:
	TX_FAR _TeachMachineMoveText
	db "@"

MonCannotLearnMachineMoveText:
	TX_FAR _MonCannotLearnMachineMoveText
	db "@"

PrintItemUseTextAndRemoveItem:
	ld hl, ItemUseText00
	call PrintText
	ld a, SFX_HEAL_AILMENT
	call PlaySound
	call WaitForTextScrollButtonPress ; wait for button press

RemoveUsedItem:
	ld hl, wNumBagItems
	ld a, 1 ; one item
	ld [wItemQuantity], a
	jp RemoveItemFromInventory

ItemUseNoEffect:
	ld hl, ItemUseNoEffectText
	jr ItemUseFailed

ItemUseNotTime:
	ld hl, ItemUseNotTimeText
	jr ItemUseFailed

ItemUseNotYoursToUse:
	ld hl, ItemUseNotYoursToUseText
	jr ItemUseFailed

ThrowBallAtTrainerMon:
	call RunDefaultPaletteCommand
	call LoadScreenTilesFromBuffer1 ; restore saved screen
	call Delay3
	ld a, TOSS_ANIM
	ld [wAnimationID], a
	predef MoveAnimation ; do animation
	ld hl, ThrowBallAtTrainerMonText1
	call PrintText
	ld hl, ThrowBallAtTrainerMonText2
	call PrintText
	jr RemoveUsedItem

NoCyclingAllowedHere:
	ld hl, NoCyclingAllowedHereText
	jr ItemUseFailed

BoxFullCannotThrowBall:
	ld hl, BoxFullCannotThrowBallText
	jr ItemUseFailed

SurfingAttemptFailed:
	ld hl, NoSurfingHereText

ItemUseFailed:
	xor a
	ld [wActionResultOrTookBattleTurn], a ; item use failed
	jp PrintText

ItemUseNotTimeText:
	TX_FAR _ItemUseNotTimeText
	db "@"

ItemUseNotYoursToUseText:
	TX_FAR _ItemUseNotYoursToUseText
	db "@"

ItemUseNoEffectText:
	TX_FAR _ItemUseNoEffectText
	db "@"

ItemRepelInEffectText:
	TX_FAR _ItemRepelInEffectText
	db "@"

ThrowBallAtTrainerMonText1:
	TX_FAR _ThrowBallAtTrainerMonText1
	db "@"

ThrowBallAtTrainerMonText2:
	TX_FAR _ThrowBallAtTrainerMonText2
	db "@"

NoCyclingAllowedHereText:
	TX_FAR _NoCyclingAllowedHereText
	db "@"

NoSurfingHereText:
	TX_FAR _NoSurfingHereText
	db "@"

BoxFullCannotThrowBallText:
	TX_FAR _BoxFullCannotThrowBallText
	db "@"

ItemUseText00:
	TX_FAR _ItemUseText001
	TX_LINE
	TX_FAR _ItemUseText002
	db "@"

GotOnBicycleText:
	TX_FAR _GotOnBicycleText1
	TX_LINE
	TX_FAR _GotOnBicycleText2
	db "@"

GotOffBicycleText:
	TX_FAR _GotOffBicycleText1
	TX_LINE
	TX_FAR _GotOffBicycleText2
	db "@"

; restores bonus PP (from PP Ups) when healing at a pokemon center
; also, when a PP Up is used, it increases the current PP by one PP Up bonus
; INPUT:
; [wWhichPokemon] = index of pokemon in party
; [wCurrentMenuItem] = index of move (when using a PP Up)
RestoreBonusPP:
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wWhichPokemon]
	call AddNTimes
	push hl
	ld de, wNormalMaxPPList - 1
	predef LoadMovePPs ; loads the normal max PP of each of the pokemon's moves to wNormalMaxPPList
	pop hl
	ld c, wPartyMon1PP - wPartyMon1Moves
	ld b, 0
	add hl, bc ; hl now points to move 1 PP
	ld de, wNormalMaxPPList
	ld b, 0 ; initialize move counter to zero
; loop through the pokemon's moves
.loop
	inc b
	ld a, b
	cp 5 ; reached the end of the pokemon's moves?
	ret z ; if so, return
	ld a, [wUsingPPUp]
	dec a ; using a PP Up?
	jr nz, .skipMenuItemIDCheck
; if using a PP Up, check if this is the move it's being used on
	ld a, [wCurrentMenuItem]
	inc a
	cp b
	jr nz, .nextMove
.skipMenuItemIDCheck
	ld a, [hl]
	and %11000000 ; have any PP Ups been used?
	call nz, AddBonusPP ; if so, add bonus PP
.nextMove
	inc hl
	inc de
	jr .loop

; adds bonus PP from PP Ups to current PP
; 1/5 of normal max PP (capped at 7) is added for each PP Up
; INPUT:
; [de] = normal max PP
; [hl] = move PP
AddBonusPP:
	push bc
	ld a, [de] ; normal max PP of move
	ld [H_DIVIDEND + 3], a
	xor a
	ld [H_DIVIDEND], a
	ld [H_DIVIDEND + 1], a
	ld [H_DIVIDEND + 2], a
	ld a, 5
	ld [H_DIVISOR], a
	ld b, 4
	call Divide
	ld a, [hl] ; move PP
	ld b, a
	swap a
	and %00001111
	srl a
	srl a
	ld c, a ; c = number of PP Ups used
.loop
	ld a, [H_QUOTIENT + 3]
	cp 8 ; is the amount greater than or equal to 8?
	jr c, .addAmount
	ld a, 7 ; cap the amount at 7
.addAmount
	add b
	ld b, a
	ld a, [wUsingPPUp]
	dec a ; is the player using a PP Up right now?
	jr z, .done ; if so, only add the bonus once
	dec c
	jr nz, .loop
.done
	ld [hl], b
	pop bc
	ret

; gets max PP of a pokemon's move (including PP from PP Ups)
; INPUT:
; [wWhichPokemon] = index of pokemon within party/box
; [wMonDataLocation] = pokemon source
; 00: player's party
; 01: enemy's party
; 02: current box
; 03: daycare
; 04: player's in-battle pokemon
; [wCurrentMenuItem] = move index
; OUTPUT:
; [wMaxPP] = max PP
GetMaxPP:
	ld a, [wMonDataLocation]
	and a
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	jr z, .sourceWithMultipleMon
	ld hl, wEnemyMon1Moves
	dec a
	jr z, .sourceWithMultipleMon
	ld hl, wBoxMon1Moves
	ld bc, wBoxMon2 - wBoxMon1
	dec a
	jr z, .sourceWithMultipleMon
	ld hl, wDayCareMonMoves
	dec a
	jr z, .sourceWithOneMon
	ld hl, wBattleMonMoves ; player's in-battle pokemon
.sourceWithOneMon
	call GetSelectedMoveOffset2
	jr .next
.sourceWithMultipleMon
	call GetSelectedMoveOffset
.next
	ld a, [hl]
	dec a
	push hl
	ld hl, Moves
	ld bc, MoveEnd - Moves
	call AddNTimes
	ld de, wcd6d
	ld a, BANK(Moves)
	call FarCopyData
	ld de, wcd6d + 6  ; PP is byte #7 (6; zero-based) of move data due to Physical/Special Split
	ld a, [de]
	ld b, a ; b = normal max PP
	pop hl
	push bc
	ld bc, wPartyMon1PP - wPartyMon1Moves ; PP offset if not player's in-battle pokemon data
	ld a, [wMonDataLocation]
	cp 4 ; player's in-battle pokemon?
	jr nz, .addPPOffset
	ld bc, wBattleMonPP - wBattleMonMoves ; PP offset if player's in-battle pokemon data
.addPPOffset
	add hl, bc
	ld a, [hl] ; a = current PP
	and %11000000 ; get PP Up count
	pop bc
	or b ; place normal max PP in 6 lower bits of a
	ld h, d
	ld l, e
	inc hl ; hl = wcd73
	ld [hl], a
	xor a ; add the bonus for the existing PP Up count
	ld [wUsingPPUp], a
	call AddBonusPP ; add bonus PP from PP Ups
	ld a, [hl]
	and %00111111 ; mask out the PP Up count
	ld [wMaxPP], a ; store max PP
	ret

GetSelectedMoveOffset:
	ld a, [wWhichPokemon]
	call AddNTimes

GetSelectedMoveOffset2:
	ld a, [wCurrentMenuItem]
	ld c, a
	ld b, 0
	add hl, bc
	ret

; confirms the item toss and then tosses the item
; INPUT:
; hl = address of inventory (either wNumBagItems or wNumBoxItems)
; [wcf91] = item ID
; [wWhichPokemon] = index of item within inventory
; [wItemQuantity] = quantity to toss
; OUTPUT:
; clears carry flag if the item is tossed, sets carry flag if not
TossItem_:
	push hl
	ld a, [wcf91]
	call IsItemHM
	pop hl
	jr c, .tooImportantToToss
	push hl
	call IsKeyItem_
	ld a, [wIsKeyItem]
	pop hl
	and a
	jr nz, .tooImportantToToss
	push hl
	ld a, [wcf91]
	ld [wd11e], a
	call GetItemName
	call CopyStringToCF4B ; copy name to wcf4b
	ld hl, IsItOKToTossItemText
	call PrintText
	coord hl, 14, 7
	lb bc, 8, 15
	ld a, TWO_OPTION_MENU
	ld [wTextBoxID], a
	call DisplayTextBoxID ; yes/no menu
	ld a, [wMenuExitMethod]
	cp CHOSE_SECOND_ITEM
	pop hl
	scf
	ret z ; return if the player chose No
	; if the player chose Yes
	push hl
	ld a, [wWhichPokemon]
	call RemoveItemFromInventory
	ld a, [wcf91]
	ld [wd11e], a
	call GetItemName
	call CopyStringToCF4B ; copy name to wcf4b
	ld hl, ThrewAwayItemText
	call PrintText
	pop hl
	and a
	ret
.tooImportantToToss
	push hl
	ld hl, TooImportantToTossText
	call PrintText
	pop hl
	scf
	ret

ThrewAwayItemText:
	TX_FAR _ThrewAwayItemText
	db "@"

IsItOKToTossItemText:
	TX_FAR _IsItOKToTossItemText
	db "@"

TooImportantToTossText:
	TX_FAR _TooImportantToTossText
	db "@"

; checks if an item is a key item
; INPUT:
; [wcf91] = item ID
; OUTPUT:
; [wIsKeyItem] = result
; 00: item is not key item
; 01: item is key item
IsKeyItem_:
	ld a, $01
	ld [wIsKeyItem], a		; assume that this is a key item
	ld a, [wcf91]			; a = item ID

	cp OAKS_PARCEL
	ret nc					; IS a key item
	xor a
	ld [wIsKeyItem], a		; NOT a key item
	ret

SendNewMonToBox:
	ld de, wNumInBox
	ld a, [de]
	inc a
	ld [de], a
	ld a, [wcf91]
	ld [wd0b5], a
	ld c, a
.asm_e7b1
	inc de
	ld a, [de]
	ld b, a
	ld a, c
	ld c, b
	ld [de], a
	cp $ff
	jr nz, .asm_e7b1
	call GetMonHeader
	ld hl, wBoxMonOT
	ld bc, NAME_LENGTH
	ld a, [wNumInBox]
	dec a
	jr z, .asm_e7ee
	dec a
	call AddNTimes
	push hl
	ld bc, NAME_LENGTH
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wNumInBox]
	dec a
	ld b, a
.asm_e7db
	push bc
	push hl
	ld bc, NAME_LENGTH
	call CopyData
	pop hl
	ld d, h
	ld e, l
	ld bc, -NAME_LENGTH
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_e7db
.asm_e7ee
	ld hl, wPlayerName
	ld de, wBoxMonOT
	ld bc, NAME_LENGTH
	call CopyData
	ld a, [wNumInBox]
	dec a
	jr z, .asm_e82a
	ld hl, wBoxMonNicks
	ld bc, NAME_LENGTH
	dec a
	call AddNTimes
	push hl
	ld bc, NAME_LENGTH
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wNumInBox]
	dec a
	ld b, a
.asm_e817
	push bc
	push hl
	ld bc, NAME_LENGTH
	call CopyData
	pop hl
	ld d, h
	ld e, l
	ld bc, -NAME_LENGTH
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_e817
.asm_e82a
	ld hl, wBoxMonNicks
	ld a, NAME_MON_SCREEN
	ld [wNamingScreenType], a
	predef AskName
	ld a, [wNumInBox]
	dec a
	jr z, .asm_e867
	ld hl, wBoxMons
	ld bc, wBoxMon2 - wBoxMon1
	dec a
	call AddNTimes
	push hl
	ld bc, wBoxMon2 - wBoxMon1
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld a, [wNumInBox]
	dec a
	ld b, a
.asm_e854
	push bc
	push hl
	ld bc, wBoxMon2 - wBoxMon1
	call CopyData
	pop hl
	ld d, h
	ld e, l
	ld bc, wBoxMon1 - wBoxMon2
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_e854
.asm_e867
	ld a, [wEnemyMonLevel]
	ld [wEnemyMonBoxLevel], a
	ld hl, wEnemyMon
	ld de, wBoxMon1
	ld bc, wEnemyMonDVs - wEnemyMon
	call CopyData
	ld hl, wPlayerID
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	push de
	ld a, [wCurEnemyLVL]
	ld d, a
	callab CalcExperience
	pop de
	ld a, [hExperience]
	ld [de], a
	inc de
	ld a, [hExperience + 1]
	ld [de], a
	inc de
	ld a, [hExperience + 2]
	ld [de], a
	inc de
	xor a
	ld b, NUM_STATS * 2
.asm_e89f
	ld [de], a
	inc de
	dec b
	jr nz, .asm_e89f
	ld hl, wEnemyMonDVs
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ld hl, wEnemyMonPP
	ld b, NUM_MOVES
.asm_e8b1
	ld a, [hli]
	inc de
	ld [de], a
	dec b
	jr nz, .asm_e8b1
	ret

; checks if the tile in front of the player is a shore or water tile
; used for surfing and fishing
; unsets carry if it is, sets carry if not
IsNextTileShoreOrWater:
	ld a, [wCurMapTileset]
	ld hl, WaterTilesets
	ld de, 1
	call IsInArray
	jr nc, .notShoreOrWater
	ld a, [wCurMapTileset]
	cp SHIP_PORT ; Vermilion Dock tileset
	ld a, [wTileInFrontOfPlayer] ; tile in front of player
	jr z, .skipShoreTiles ; if it's the Vermilion Dock tileset
	cp $48 ; eastern shore tile in Safari Zone
	jr z, .shoreOrWater
	cp $32 ; usual eastern shore tile
	jr z, .shoreOrWater
.skipShoreTiles
	cp $14 ; water tile
	jr z, .shoreOrWater
.notShoreOrWater
	scf
	ret
.shoreOrWater
	and a
	ret

; tilesets with water
WaterTilesets:
	db OVERWORLD, FOREST, DOJO, GYM, SHIP, SHIP_PORT, CAVERN, FACILITY, PLATEAU
	db $ff ; terminator

ReadSuperRodData:
; return e = 2 if no fish on this map
; return e = 1 if a bite, bc = level,species
; return e = 0 if no bite
	ld a, [wCurMap]
	ld de, 3 ; each fishing group is three bytes wide
	ld hl, SuperRodData
	call IsInArray
	jr c, .ReadFishingGroup
	ld e, $2 ; $2 if no fishing groups found
	ret

.ReadFishingGroup
; hl points to the fishing group entry in the index
	inc hl ; skip map id

	; read fishing group address
	ld a, [hli]
	ld h, [hl]
	ld l, a

	ld b, [hl] ; how many mons in group
	inc hl ; point to data
	ld e, $0 ; no bite yet

.RandomLoop
	call Random
	srl a
	ret c ; 50% chance of no battle

	and %11 ; 2-bit random number
	cp b
	jr nc, .RandomLoop ; if a is greater than the number of mons, regenerate

	; get the mon
	add a
	ld c, a
	ld b, $0
	add hl, bc
	ld b, [hl] ; level
	inc hl
	ld c, [hl] ; species
	ld e, $1 ; $1 if there's a bite
	ret

INCLUDE "data/super_rod.asm"

; reloads map view and processes sprite data
; for items that cause the overworld to be displayed
ItemUseReloadOverworldData:
	call LoadCurrentMapView
	jp UpdateSprites

; creates a list at wBuffer of maps where the mon in [wd11e] can be found.
; this is used by the pokedex to display locations the mon can be found on the map.
FindWildLocationsOfMon:
	ld hl, WildDataPointers
	ld de, wBuffer
	ld c, $0
.loop
	inc hl
	ld a, [hld]
	inc a
	jr z, .done
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	and a
	call nz, CheckMapForMon ; land
	ld a, [hli]
	and a
	call nz, CheckMapForMon ; water
	pop hl
	inc hl
	inc hl
	inc c
	jr .loop
.done
	ld a, $ff ; list terminator
	ld [de], a
	ret

CheckMapForMon:
	inc hl
	ld b, $a
.loop
	ld a, [wd11e]
	cp [hl]
	jr nz, .nextEntry
	ld a, c
	ld [de], a
	inc de
.nextEntry
	inc hl
	inc hl
	dec b
	jr nz, .loop
	dec hl
	ret

; displays the game corner coins when outside of battle
ItemUseCoinCase:
	ld a, [wIsInBattle]
	and a
	jp nz, ItemUseNotTime
	ld hl, CoinCaseNumCoinsText
	jp PrintText

CoinCaseNumCoinsText:
	TX_FAR _CoinCaseNumCoinsText
	db "@"

; pseudo-item used for Pokedex
ItemUsePokedex:
	predef_jump ShowPokedexMenu

; Safari Zone Bait/Rock. To be renamed Berries
ItemUseBait:
	ld hl, ThrewBaitText
	call PrintText
	ld hl, wEnemyMonActualCatchRate ; catch rate
	srl [hl] ; halve catch rate
	ld a, BAIT_ANIM
	ld hl, wSafariBaitFactor ; bait factor
	ld de, wSafariEscapeFactor ; escape factor
	jr BaitRockCommon

ItemUseRock:
	ld hl, ThrewRockText
	call PrintText
	ld hl, wEnemyMonActualCatchRate ; catch rate
	ld a, [hl]
	add a ; double catch rate
	jr nc, .noCarry
	ld a, $ff
.noCarry
	ld [hl], a
	ld a, ROCK_ANIM
	ld hl, wSafariEscapeFactor ; escape factor
	ld de, wSafariBaitFactor ; bait factor

BaitRockCommon:
	ld [wAnimationID], a
	xor a
	ld [wAnimationType], a
	ld [H_WHOSETURN], a
	ld [de], a ; zero escape factor (for bait), zero bait factor (for rock)
.randomLoop ; loop until a random number less than 5 is generated
	call Random
	and 7
	cp 5
	jr nc, .randomLoop
	inc a ; increment the random number, giving a range from 1 to 5 inclusive
	ld b, a
	ld a, [hl]
	add b ; increase bait factor (for bait), increase escape factor (for rock)
	jr nc, .noCarry
	ld a, $ff
.noCarry
	ld [hl], a
	predef MoveAnimation ; do animation
	ld c, 70
	jp DelayFrames

ThrewBaitText:
	TX_FAR _ThrewBaitText
	db "@"

ThrewRockText:
	TX_FAR _ThrewRockText
	db "@"

; for items that can't be used from the Item menu
UnusableItem:
	jp ItemUseNotTime