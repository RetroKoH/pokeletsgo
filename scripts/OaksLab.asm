OaksLab_Script:
	CheckEvent EVENT_PALLET_AFTER_GETTING_POKEBALLS_2
	call nz, OaksLabScript_1d076
	ld a, $1
	ld [wAutoTextBoxDrawingControl], a
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, OaksLab_ScriptPointers
	ld a, [wOaksLabCurScript]
	jp CallFunctionInTable

OaksLab_ScriptPointers:
	dw OaksLabScript_EnterLabWithOak
	dw OaksLabScript_OakWalksIntoTheLab
	dw OaksLabScript_OakWalksOffScreen
	dw OaksLabScript_PlayerFollowsOak
	dw OaksLabScript_PlayerMeetsOakAndBlue
	dw OaksLabScript_AsksPlayerToChooseStarter
	dw OaksLabScript_PreventPlayerFromLeavingEarly
	dw OaksLabScript_ReturnToPreviousScript
	dw OaksLabScript_PickStarter
	dw OaksLabScript_RivalStarter
	dw OaksLabScript_BlueChallengesPlayer
	dw OaksLabScript_BlueBattle1
	dw OaksLabScript_AfterBlueBattle1
	dw OaksLabScript_BlueLeavesLab
	dw OaksLabScript_BlueHasLeft
	dw OaksLabScript_BlueReturns
	dw OaksLabScript_OakGivesPokedex
	dw OaksLabScript_BlueHasLeftAgain
	dw OaksLabScript_EventsEnd

OaksLabScript_EnterLabWithOak:
	CheckEvent EVENT_OAK_APPEARED_IN_PALLET
	ret z
	ld a, [wNPCMovementScriptFunctionNum]
	and a
	ret nz
	ld a, HS_OAKS_LAB_OAK_2
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld hl, wd72e
	res 4, [hl]

	ld a, $1
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_OakWalksIntoTheLab:
	ld a, $7
	ld [H_SPRITEINDEX], a
	ld de, OakEntryMovement
	call MoveSprite

	ld a, $2
	ld [wOaksLabCurScript], a
	ret

OakEntryMovement:
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db NPC_MOVEMENT_UP
	db $FF

OaksLabScript_OakWalksOffScreen:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_OAKS_LAB_OAK_2
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_OAKS_LAB_OAK_1
	ld [wMissableObjectIndex], a
	predef ShowObject

	ld a, $3
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_PlayerFollowsOak:
	call Delay3
	ld hl, wSimulatedJoypadStatesEnd
	ld de, PlayerEntryMovementRLE
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, $1
	ld [H_SPRITEINDEX], a
	xor a
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $5
	ld [H_SPRITEINDEX], a
	xor a
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay

	ld a, $4
	ld [wOaksLabCurScript], a
	ret

PlayerEntryMovementRLE:
	db D_UP,$8
	db $ff

OaksLabScript_PlayerMeetsOakAndBlue:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	SetEvent EVENT_FOLLOWED_OAK_INTO_LAB
	SetEvent EVENT_FOLLOWED_OAK_INTO_LAB_2
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_UP
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call UpdateSprites
	ld hl, wFlags_D733
	res 1, [hl]
	call PlayDefaultMusic

	ld a, $5
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_AsksPlayerToChooseStarter:
	ld a, $fc
	ld [wJoyIgnore], a
	ld a, $10
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	ld a, $11
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	ld a, $12
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	ld a, $13
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_OAK_ASKED_TO_CHOOSE_MON
	xor a
	ld [wJoyIgnore], a

	ld a, $6
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_PreventPlayerFromLeavingEarly:
	ld a, [wYCoord]
	cp $6
	ret nz
	ld a, $5
	ld [H_SPRITEINDEX], a
	xor a ; SPRITE_FACING_DOWN
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $1
	ld [H_SPRITEINDEX], a
	xor a
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call UpdateSprites
	ld a, $B
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	call StartSimulatingJoypadStates
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a

	ld a, $7
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_ReturnToPreviousScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3

	ld a, $6
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_PickStarter:
	ld a, [wPlayerStarter]
	cp STARTER1
	jr z, .Pikachu
	jr .Eevee

.Pikachu
	ld de, .RightBallMovement1
	ld a, [wYCoord]
	cp $4 ; is the player standing below the table?
	jr z, .move
	ld de, .RightBallMovement2
	jr .move

.RightBallMovement1
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_UP
	db $FF

.RightBallMovement2
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db NPC_MOVEMENT_RIGHT
	db $FF

.Eevee
	ld de, .LeftBallMovement1
	ld a, [wXCoord]
	cp $9 ; is the player standing to the right of the table?
	jr nz, .move
	push hl
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, $4
	ld [H_SPRITEDATAOFFSET], a
	call GetPointerWithinSpriteStateData1
	push hl
	ld [hl], $4c
	inc hl
	inc hl
	ld [hl], $0
	pop hl
	inc h
	ld [hl], $8
	inc hl
	ld [hl], $9
	ld de, .LeftBallMovement2 ; the rival is not currently onscreen, so account for that
	pop hl
	jr .move

.LeftBallMovement1
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_RIGHT ; not yet terminated!
.LeftBallMovement2
	db NPC_MOVEMENT_RIGHT
	db $FF

.move
	ld a, $1
	ld [H_SPRITEINDEX], a
	call MoveSprite

	ld a, $9
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_RivalStarter:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, $fc
	ld [wJoyIgnore], a
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_UP
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $C
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, [wRivalStarterBallSpriteIndex]
	cp $2
	jr nz, .asm_1cd28
	ld a, HS_STARTER_BALL_1
	jr .asm_1cd32
.asm_1cd28
	ld a, HS_STARTER_BALL_2
.asm_1cd32
	ld [wMissableObjectIndex], a
	predef HideObject
	call Delay3
	ld a, [wRivalStarterTemp]
	ld [wRivalStarter], a
	ld [wcf91], a
	ld [wd11e], a
	call GetMonName
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_UP
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $D
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_STARTER
	xor a
	ld [wJoyIgnore], a

	ld a, $a
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_BlueChallengesPlayer:
	ld a, [wYCoord]
	cp $6
	ret nz
	ld a, $1
	ld [H_SPRITEINDEX], a
	xor a ; SPRITE_FACING_DOWN
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld c, BANK(Music_MeetRival)
	ld a, MUSIC_MEET_RIVAL
	call PlayMusic
	ld a, $e
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $1
	ld [hNPCPlayerRelativePosPerspective], a
	ld a, $1
	swap a
	ld [hNPCSpriteOffset], a
	predef CalcPositionOfPlayerRelativeToNPC
	ld a, [hNPCPlayerYDistance]
	dec a
	ld [hNPCPlayerYDistance], a
	predef FindPathToPlayer
	ld de, wNPCMovementDirections2
	ld a, $1
	ld [H_SPRITEINDEX], a
	call MoveSprite

	ld a, $b
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_BlueBattle1:
	ld a, [wd730]
	bit 0, a
	ret nz

	; define which team rival uses, and fight it
	ld a, 1
	ld [wIsTrainerBattle], a
	ld a, OPP_SONY1
	ld [wCurOpponent], a
	ld a, [wRivalStarter]	; check the rival's starter
	cp STARTER2				; is it Eevee?
	jr nz, .NotEevee		; if not, branch
	ld a, $1				; load Eevee as its Pokemon
	jr .done
.NotEevee
	ld a, $2				; load Pikachu as its Pokemon
.done
	ld [wTrainerNo], a
	ld a, $1
	ld [wSpriteIndex], a
	call GetSpritePosition1
	ld hl, OaksLabText_1d3be
	ld de, OaksLabText_1d3c3
	call SaveEndBattleTextPointers
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	xor a
	ld [wJoyIgnore], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, $c
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_AfterBlueBattle1:
	xor a
	ld [wIsTrainerBattle], a
	ld a, $ff
	ld [wJoyIgnore], a

	; If you beat your rival here, his Eevee will evolve into  JOLTEON - 2 wins
	; Jolteon if you beat him on Route 22, or Flareon if you   FLAREON - 1 win, 1 loss
	; skip or lose that battle.                                VAPOREON - 2 losses
	; Otherwise, it will evolve into Vaporeon.
	; Rival's Pikachu will evolve into Raichu.
	ld a, [wRivalStarter]	; check the rival's starter
	cp STARTER2				; Did Blue pick Eevee?
	jp nz, .notEevee		; if not, branch and skip
	ld a, [wBattleResult]
	and a
	ld b, VAPOREON			; if you lost, Blue is set to evolve to Vaporeon (#3)
	jr nz, .asm_1c660
	ld b, FLAREON			; if you won, Blue is set to evolve to Flareon (#2)

.asm_1c660
	ld a, b
	ld [wRivalStarter], a
	jr .setStarter

.notEevee
	ld a, RAICHU			; Win or lose, Blue is set to evolve to Raichu (#3)
	ld [wRivalStarter], a

.setStarter
	ld a, $f0
	ld [wJoyIgnore], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	call UpdateSprites
	ld a, $1
	ld [wSpriteIndex], a
	call SetSpritePosition1
	ld a, $1
	ld [H_SPRITEINDEX], a
	xor a ; SPRITE_FACING_DOWN
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	predef HealParty
	SetEvent EVENT_BATTLED_RIVAL_IN_OAKS_LAB

	ld a, $d
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_BlueLeavesLab:
	ld c, 20
	call DelayFrames
	ld a, $F
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	callba Music_RivalAlternateStart
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld de, .RivalExitMovement
	call MoveSprite
	ld a, [wXCoord]
	cp $4
	; move left or right depending on where the player is standing
	jr nz, .moveLeft
	ld a, NPC_MOVEMENT_RIGHT
	jr .next
.moveLeft
	ld a, NPC_MOVEMENT_LEFT
.next
	ld [wNPCMovementDirections], a

	ld a, $e
	ld [wOaksLabCurScript], a
	ret

.RivalExitMovement
	db $E0 ; change sprite facing direction
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $FF

OaksLabScript_BlueHasLeft:
	ld a, [wd730]
	bit 0, a
	jr nz, .asm_1ce8c
	ld a, HS_OAKS_LAB_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	xor a
	ld [wJoyIgnore], a
	call PlayDefaultMusic ; reset to map music
	ld a, $12
	ld [wOaksLabCurScript], a
	jr .done
; make the player keep facing the rival as he walks away
.asm_1ce8c
	ld a, [wNPCNumScriptedSteps]
	cp $5
	jr nz, .asm_1cea8
	ld a, [wXCoord]
	cp $4
	jr nz, .asm_1cea1
	ld a, SPRITE_FACING_RIGHT
	ld [wSpriteStateData1 + 9], a
	jr .done
.asm_1cea1
	ld a, SPRITE_FACING_LEFT
	ld [wSpriteStateData1 + 9], a
	jr .done
.asm_1cea8
	cp $4
	ret nz
	xor a ; ld a, SPRITE_FACING_DOWN
	ld [wSpriteStateData1 + 9], a
.done
	ret

OaksLabScript_BlueReturns: ; Set to activate AFTER player returns WITH Oak's parcel and speaks to Oak
	xor a
	ld [hJoyHeld], a
	call EnableAutoTextBoxDrawing
	ld a, $ff
	ld [wNewSoundID], a
	call PlaySound
	callba Music_RivalAlternateStart
	ld a, $14
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call OaksLabScript_1d02b
	ld a, HS_OAKS_LAB_RIVAL
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, [wNPCMovementDirections2Index]
	ld [wSavedNPCMovementDirections2Index], a
	ld b, 0
	ld c, a
	ld hl, wNPCMovementDirections2
	ld a, NPC_MOVEMENT_UP
	call FillMemory
	ld [hl], $ff
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld de, wNPCMovementDirections2
	call MoveSprite

	ld a, $10
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_1cefd:
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_UP
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, $8
	ld [H_SPRITEINDEX], a
	xor a ; SPRITE_FACING_DOWN
	ld [hSpriteFacingDirection], a
	jp SetSpriteFacingDirectionAndDelay

OaksLabScript_OakGivesPokedex:
	ld a, [wd730]
	bit 0, a
	ret nz
	call EnableAutoTextBoxDrawing
	call PlayDefaultMusic
	ld a, $fc
	ld [wJoyIgnore], a
	call OaksLabScript_1cefd
	ld a, $15
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call DelayFrame
	call OaksLabScript_1cefd
	ld a, $16
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call DelayFrame
	call OaksLabScript_1cefd
	ld a, $17
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call DelayFrame
	ld a, $18
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	call Delay3
	ld a, HS_POKEDEX_1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_POKEDEX_2
	ld [wMissableObjectIndex], a
	predef HideObject
	call OaksLabScript_1cefd
	ld a, $19
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_RIGHT
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	ld a, $1a
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_POKEDEX
	SetEvent EVENT_OAK_GOT_PARCEL
	ld a, HS_LYING_OLD_MAN
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_OLD_MAN
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, [wSavedNPCMovementDirections2Index]
	ld b, 0
	ld c, a
	ld hl, wNPCMovementDirections2
	xor a ; NPC_MOVEMENT_DOWN
	call FillMemory
	ld [hl], $ff
	ld a, $ff
	ld [wNewSoundID], a
	call PlaySound
	callba Music_RivalAlternateStart
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld de, wNPCMovementDirections2
	call MoveSprite

	ld a, $11
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_BlueHasLeftAgain:
	ld a, [wd730]
	bit 0, a
	ret nz
	call PlayDefaultMusic
	ld a, HS_OAKS_LAB_RIVAL
	ld [wMissableObjectIndex], a
	predef HideObject
	SetEvent EVENT_1ST_ROUTE22_RIVAL_BATTLE
	ResetEventReuseHL EVENT_2ND_ROUTE22_RIVAL_BATTLE
	SetEventReuseHL EVENT_ROUTE22_RIVAL_WANTS_BATTLE
	ld a, HS_ROUTE_22_RIVAL_1
	ld [wMissableObjectIndex], a
	predef ShowObject
	;ld a, $5
	;ld [wPalletTownCurScript], a
	xor a
	ld [wJoyIgnore], a

	ld a, $12
	ld [wOaksLabCurScript], a
	ret

OaksLabScript_EventsEnd:
	ret

OaksLabScript_RemoveParcel:
	ld hl, wBagItems
	ld bc, $0000
.loop
	ld a, [hli]
	cp $ff
	ret z
	cp OAKS_PARCEL
	jr z, .foundParcel
	inc hl
	inc c
	jr .loop
.foundParcel
	ld hl, wNumBagItems
	ld a, c
	ld [wWhichPokemon], a
	ld a, $1
	ld [wItemQuantity], a
	jp RemoveItemFromInventory

OaksLabScript_1d02b:
	ld a, $7c
	ld [$ffeb], a
	ld a, $8
	ld [$ffee], a
	ld a, [wYCoord]
	cp $3
	jr nz, .asm_1d045
	ld a, $4
	ld [wNPCMovementDirections2Index], a
	ld a, $30
	ld b, $b
	jr .asm_1d068
.asm_1d045
	cp $1
	jr nz, .asm_1d054
	ld a, $2
	ld [wNPCMovementDirections2Index], a
	ld a, $30
	ld b, $9
	jr .asm_1d068
.asm_1d054
	ld a, $3
	ld [wNPCMovementDirections2Index], a
	ld b, $a
	ld a, [wXCoord]
	cp $4
	jr nz, .asm_1d066
	ld a, $40
	jr .asm_1d068
.asm_1d066
	ld a, $20
.asm_1d068
	ld [$ffec], a
	ld a, b
	ld [$ffed], a
	ld a, $1
	ld [wSpriteIndex], a
	call SetSpritePosition1
	ret

OaksLabScript_1d076:
	ld hl, OaksLab_TextPointers2
	ld a, l
	ld [wMapTextPtr], a
	ld a, h
	ld [wMapTextPtr+1], a
	ret

OaksLab_TextPointers:    ; if somehow, 0 is pulled, it opens the menu
	dw OaksLabText1  ; 1 - Blue text at the start (Yo, Gramps isn't here/Humph...)
	dw OaksLabText2  ; 2 - Pikachu selection
	dw OaksLabText3  ; 3 - Eevee selection
	dw OaksLabText5  ; 4 - Oak dialogue during starter cutscene (fix this to combine RB and Y)
	dw OaksLabText6  ; 5 - Pokedex flavor text
	dw OaksLabText7  ; 6 - Pokedex flavor text
	dw OaksLabText8  ; 7 - Unused ? text
	dw OaksLabText9  ; 8 - Lass: Oak is authority on Pokemon
	dw OaksLabText10 ; 9 - Generic Aide
	dw OaksLabText11 ; $A - Generic Aide
	dw OaksLabText12 ; $B - Oak: Hey, dont go away yet!
	dw OaksLabText13 ; $C
	dw OaksLabText14 ; $D - <RIVAL> recieved a <MON>
	dw OaksLabText15
	dw OaksLabText16
	dw OaksLabText17
	dw OaksLabText18
	dw OaksLabText19
	dw OaksLabText20
	dw OaksLabText21
	dw OaksLabText22
	dw OaksLabText23 ; $16
	dw OaksLabText24 ; $17 "On my desk there, is a Pokedex!"
	dw OaksLabText25
	dw OaksLabText26
	dw OaksLabText27

OaksLab_TextPointers2:
	dw OaksLabText1
	dw OaksLabText2
	dw OaksLabText3
	dw OaksLabText5
	dw OaksLabText6
	dw OaksLabText7
	dw OaksLabText8
	dw OaksLabText9
	dw OaksLabText10
	dw OaksLabText11

OaksLabText1:
	TX_ASM
	CheckEvent EVENT_FOLLOWED_OAK_INTO_LAB_2 ; Have we followed Oak into the lab?
	jr nz, .Text1_OakInLab                   ; if yes, branch
	ld hl, OaksLabGaryText1                  ; Blue tells us he isn't here
	call PrintText
	jr .asm_1d0f0
.Text1_OakInLab
	bit 2, a                                 ; Did Player and Blue already pick starters?
	jr nz, .asm_1d0ea                        ; if yes, branch
	ld hl, OaksLabText40                     ; Blue insists he will pick a better starter
	call PrintText
	jr .asm_1d0f0
.asm_1d0ea
	ld hl, OaksLabText41                     ; Blue tells us his starter is better.
	call PrintText
.asm_1d0f0
	jp TextScriptEnd

OaksLabGaryText1:
	TX_FAR _OaksLabGaryText1
	db "@"
OaksLabText40:
	TX_FAR _OaksLabText40
	db "@"
OaksLabText41:
	TX_FAR _OaksLabText41
	db "@"

OaksLabText2: ; Picking Pikachu
	TX_ASM
	ld a, STARTER2
	ld [wRivalStarterTemp], a
	ld a, $3
	ld [wRivalStarterBallSpriteIndex], a
	ld a, STARTER1
	ld b, $2
	jr OaksLabScript_PokeBall

OaksLabText3: ; Picking Eevee
	TX_ASM
	ld a, STARTER1
	ld [wRivalStarterTemp], a
	ld a, $2
	ld [wRivalStarterBallSpriteIndex], a
	ld a, STARTER2
	ld b, $3

OaksLabScript_PokeBall:
	ld [wcf91], a ; store your chosen starter in $CF91
	ld [wd11e], a
	ld a, b
	ld [wSpriteIndex], a
	CheckEvent EVENT_OAK_ASKED_TO_CHOOSE_MON
	jr nz, OaksLabScript_1d157
	ld hl, OaksLabText_ThatsAPokeball
	call PrintText
	jp TextScriptEnd

OaksLabText_ThatsAPokeball:
	TX_FAR _OaksLabText39
	db "@"

OaksLabScript_1d157:
	ld a, $5
	ld [H_SPRITEINDEX], a
	ld a, $9
	ld [H_SPRITEDATAOFFSET], a
	call GetPointerWithinSpriteStateData1
	ld [hl], SPRITE_FACING_DOWN
	ld a, $1
	ld [H_SPRITEINDEX], a
	ld a, $9
	ld [H_SPRITEDATAOFFSET], a
	call GetPointerWithinSpriteStateData1
	ld [hl], SPRITE_FACING_RIGHT
	ld hl, wd730
	set 6, [hl]
	predef StarterDex
	ld hl, wd730
	res 6, [hl]
	call ReloadMapData
	ld c, 10
	call DelayFrames
	ld a, [wSpriteIndex]
	cp $2
	jr z, OaksLabLookAtPikachu
	jr OaksLabLookAtEevee

OaksLabLookAtPikachu:
	ld hl, OaksLabPikachuText
	jr OaksLabMonChoiceMenu
OaksLabPikachuText:
	TX_FAR _OaksLabPikachuText
	db "@"

OaksLabLookAtEevee:
	ld hl, OaksLabEeveeText
	jr OaksLabMonChoiceMenu
OaksLabEeveeText:
	TX_FAR _OaksLabEeveeText
	db "@"

OaksLabMonChoiceMenu:
	call PrintText
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	call YesNoChoice ; yes/no menu
	ld a, [wCurrentMenuItem]
	and a
	jr nz, OaksLabMonChoiceEnd
	ld a, [wcf91]
	ld [wPlayerStarter], a
	ld [wd11e], a
	call GetMonName
	ld a, [wSpriteIndex]
	cp $2
	jr nz, .OaksLab_EeveeBall
	ld a, HS_STARTER_BALL_1
	jr .OaksLab_HideBall
.OaksLab_EeveeBall
	ld a, HS_STARTER_BALL_2
.OaksLab_HideBall
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, OaksLabMonEnergeticText
	call PrintText
	ld hl, OaksLabReceivedMonText
	call PrintText

; Set Friendship and disable drawing (Pokemon Yellow has this here_)
;	ld a, 90
;	ld [wPartyMon1Friendship], a
	;call DisablePartnerOverworldSpriteDrawing

	xor a ; PLAYER_PARTY_DATA
	ld [wMonDataLocation], a
	ld a, 5
	ld [wCurEnemyLVL], a
	ld a, [wcf91]
	ld [wd11e], a
	call AddPartyMon

; Set Friendship and disable drawing (For some reason, need to place this here)
	ld a, 90
	ld [wPartyMon1Friendship], a
	;call DisablePartnerOverworldSpriteDrawing

	ld hl, wd72e
	set 3, [hl]
	ld a, $fc
	ld [wJoyIgnore], a
	ld a, $8
	ld [wOaksLabCurScript], a
OaksLabMonChoiceEnd:
	jp TextScriptEnd

OaksLabMonEnergeticText:
	TX_FAR _OaksLabMonEnergeticText
	db "@"

OaksLabReceivedMonText:
	TX_FAR _OaksLabReceivedMonText
	TX_SFX_KEY_ITEM
	db "@"

; There is no last mon anymore

OaksLabText32:
OaksLabText5:
	TX_ASM
	CheckEvent EVENT_PALLET_AFTER_GETTING_POKEBALLS ; did you already get pokeballs?
	jr nz, .asm_1d266								; if yes, branch ahead
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	cp 2
	jr c, .asm_1d279
	CheckEvent EVENT_GOT_POKEDEX
	jr z, .asm_1d279
.asm_1d266
	ld hl, OaksLabText_1d31d ; Oak checks your pokedex
	call PrintText
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	predef DisplayDexRating
	jp .asm_1d2ed
.asm_1d279
	CheckEvent EVENT_BEAT_ROUTE22_RIVAL_1ST_BATTLE 		; have you beaten optional rival?
	jr nz, .asm_1d2e7 									; if yes, branch
	CheckEvent EVENT_GOT_POKEDEX 						; did you get a pokedex?
	jr nz, .asm_1d2c8 									; if yes, branch
	CheckEventReuseA EVENT_BATTLED_RIVAL_IN_OAKS_LAB	; have you played Rival 1?
	jr nz, .asm_1d2a9 									; if yes, branch
	ld a, [wd72e]
	bit 3, a
	jr nz, .asm_1d2a1
	ld hl, OaksLabText_1d2f0
	call PrintText
	jr .asm_1d2ed
.asm_1d2a1
	ld hl, OaksLabText_1d2f5
	call PrintText
	jr .asm_1d2ed
.asm_1d2a9
	ld b, OAKS_PARCEL
	call IsItemInBag
	jr nz, .asm_1d2b8
	ld hl, OaksLabText_1d2fa
	call PrintText
	jr .asm_1d2ed
.asm_1d2b8
	ld hl, OaksLabDeliverParcelText
	call PrintText
	call OaksLabScript_RemoveParcel
	ld a, $f
	ld [wOaksLabCurScript], a
	jr .asm_1d2ed
.asm_1d2c8
	ld hl, OaksLabAroundWorldText
	call PrintText
	jr .asm_1d2ed
;.asm_1d2d0
;	CheckAndSetEvent EVENT_GOT_POKEBALLS_FROM_OAK
;	jr nz, .asm_1d2e7
;	lb bc, POKE_BALL, 5
;	call GiveItem
;	ld hl, OaksLabGivePokeballsText
;	call PrintText
;	jr .asm_1d2ed
.asm_1d2e7
	ld hl, OaksLabPleaseVisitText
	call PrintText
.asm_1d2ed
	jp TextScriptEnd

OaksLabText_1d2f0:
	TX_FAR _OaksLabText_1d2f0  ; "Now, which mon do you want?"
	db "@"

OaksLabText_1d2f5:
	TX_FAR _OaksLabText_1d2f5 ; "If a wild mon appears... afterward, go to the next town."
	db "@"

OaksLabText_1d2fa:
	TX_FAR _OaksLabText_1d2fa ; "You should talk to it and see how it feels"
	db "@"

OaksLabDeliverParcelText:
	TX_FAR _OaksLabDeliverParcelText1
	TX_SFX_KEY_ITEM
	TX_FAR _OaksLabDeliverParcelText2
	db "@"

OaksLabAroundWorldText:
	TX_FAR _OaksLabAroundWorldText
	db "@"

OaksLabPleaseVisitText:
	TX_FAR _OaksLabPleaseVisitText
	db "@"

OaksLabText_1d31d:
	TX_FAR _OaksLabText_1d31d
	db "@"

OaksLabText7:
OaksLabText6:
	TX_ASM
	ld hl, OaksLabText_1d32c
	call PrintText
	jp TextScriptEnd

OaksLabText_1d32c:
	TX_FAR _OaksLabText_1d32c
	db "@"

OaksLabText8:
	TX_FAR _OaksLabText8
	db "@"

OaksLabText9:
	TX_ASM
	ld hl, OaksLabText_1d340
	call PrintText
	jp TextScriptEnd

OaksLabText_1d340:
	TX_FAR _OaksLabText_1d340
	db "@"

OaksLabText17:
	TX_ASM
	ld hl, OaksLabRivalWaitingText
	call PrintText
	jp TextScriptEnd

OaksLabRivalWaitingText:
	TX_FAR _OaksLabRivalWaitingText
	db "@"

OaksLabText18:
	TX_ASM
	ld hl, OaksLabChooseMonText
	call PrintText
	jp TextScriptEnd

OaksLabChooseMonText:
	TX_FAR _OaksLabChooseMonText
	db "@"

OaksLabText19:
	TX_ASM
	ld hl, OaksLabRivalInterjectionText
	call PrintText
	jp TextScriptEnd

OaksLabRivalInterjectionText:
	TX_FAR _OaksLabRivalInterjectionText
	db "@"

OaksLabText20:
	TX_ASM
	ld hl, OaksLabBePatientText
	call PrintText
	jp TextScriptEnd

OaksLabBePatientText:
	TX_FAR _OaksLabBePatientText
	db "@"

OaksLabText12:
	TX_ASM
	ld hl, OaksLabLeavingText
	call PrintText
	jp TextScriptEnd

OaksLabLeavingText:
	TX_FAR _OaksLabLeavingText
	db "@"

OaksLabText13:
	TX_ASM
	ld hl, OaksLabRivalPickingMonText
	call PrintText
	jp TextScriptEnd

OaksLabRivalPickingMonText:
	TX_FAR _OaksLabRivalPickingMonText
	db "@"

OaksLabText14:
	TX_ASM
	ld hl, OaksLabRivalReceivedMonText
	call PrintText
	jp TextScriptEnd

OaksLabRivalReceivedMonText:
	TX_FAR _OaksLabRivalReceivedMonText
	TX_SFX_KEY_ITEM
	db "@"

OaksLabText15:
	TX_ASM
	ld hl, OaksLabRivalChallengeText
	call PrintText
	jp TextScriptEnd

OaksLabRivalChallengeText:
	TX_FAR _OaksLabRivalChallengeText
	db "@"

OaksLabText_1d3be:
	TX_FAR _OaksLabText_1d3be
	db "@"

OaksLabText_1d3c3:
	TX_FAR _OaksLabText_1d3c3
	db "@"

OaksLabText16:
	TX_ASM
	ld hl, OaksLabRivalToughenUpText
	call PrintText
	jp TextScriptEnd

OaksLabRivalToughenUpText:
	TX_FAR _OaksLabRivalToughenUpText
	db "@"

OaksLabText21:
	TX_FAR _OaksLabText21
	db "@"

OaksLabText22:
	TX_FAR _OaksLabText22
	db "@"

OaksLabText23:
	TX_FAR _OaksLabText23
	db "@"

OaksLabText24:
	TX_FAR _OaksLabText24 ; It's a high-tech Encyclopedia
	db "@"

OaksLabText25:
	TX_FAR _OaksLabText25
	TX_SFX_KEY_ITEM
	db "@"

OaksLabText26:
	TX_FAR _OaksLabText26
	db $11 ; play received item sound
	TX_ASM
	lb bc, POKE_BALL,5
	call GiveItem
	TX_FAR _OaksLabGivePokeballsText
	jp TextScriptEnd

OaksLabText27:
	TX_FAR _OaksLabText27
	db "@"

OaksLabText11:
OaksLabText10:
	TX_ASM
	ld hl, OaksLabText_1d405
	call PrintText
	jp TextScriptEnd

OaksLabText_1d405:
	TX_FAR _OaksLabText_1d405
	db "@"
