PalletTown_Script:
	CheckEvent EVENT_GOT_POKEBALLS_FROM_OAK       ; Have you received Pokeballs from Oak?
	jr z, .next                                   ; if not, branch
	SetEvent EVENT_PALLET_AFTER_GETTING_POKEBALLS
.next
	call EnableAutoTextBoxDrawing
	ld hl, PalletTown_ScriptPointers
	ld a, [wPalletTownCurScript]                  ; Get current Pallet Town Script index
	jp CallFunctionInTable                        ; jump to the corresponding code

PalletTown_ScriptPointers:
	dw PalletTownScript_StopPlayer
	dw PalletTownScript_OakAppears
	dw PalletTownScript_OakWalksToPlayer
	dw PalletTownScript_OakMeetsPlayer
	dw PalletTownScript_CatchPikachu
	dw PalletTownScript_AfterCatchingPikachu
	dw PalletTownScript_OakBringsYouToLab
	dw PalletTownScript7
	dw PalletTownScript8
	dw PalletTownScript9

PalletTownScript_StopPlayer:
	CheckEvent EVENT_FOLLOWED_OAK_INTO_LAB ; Has Professor Oak brought you to his lab for a starter?
	ret nz                                 ; if yes, branch
	ld a, [wYCoord]                        ; load current y-coordinate
	cp 0;1                                 ; is player at the north exit?
	ret nz                                 ; if not, branch
;.asm_18e40
	xor a
	ld [hJoyHeld], a
	ld a, $FF
	ld [wJoyIgnore], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a         ; set player to face up (under normal circumstances, they would be anyway)
	ld a, $FF
	call PlaySound                         ; stop music
	ld a, BANK(Music_MeetProfOak)
	ld c, a
	ld a, MUSIC_MEET_PROF_OAK
	call PlayMusic                         ; play Prof. Oak's music
	SetEvent EVENT_OAK_APPEARED_IN_PALLET  ; Set flag so that we can leave Pallet after the upcoming Lab cutscene

	; trigger the next script
	ld a, 1
	ld [wPalletTownCurScript], a
	ret

PalletTownScript_OakAppears:
	ld a, $FF ^ (A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a                      ; Enable A/B to speed up upcoming text box
	xor a
	ld [wcf0d], a
	ld a, 1
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID                      ; "OAK: Hey! Wait! Don't go out!"
	ld a, $FF
	ld [wJoyIgnore], a                      ; Disable all buttons again

	ld a, HS_PALLET_TOWN_OAK
	ld [wMissableObjectIndex], a
	predef ShowObject                       ; Spawn Oak object

	; trigger the next script
	ld a, 2
	ld [wPalletTownCurScript], a
	ret

PalletTownScript_OakWalksToPlayer:
	ld a, 1
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_UP
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	ld a, 0;1
	ld [wYCoord], a
	ld a, 1
	ld [hNPCPlayerRelativePosPerspective], a
	ld a, 1
	swap a
	ld [hNPCSpriteOffset], a
	predef CalcPositionOfPlayerRelativeToNPC
	ld hl, hNPCPlayerYDistance
	dec [hl]
	predef FindPathToPlayer        ; load Oak's movement into wNPCMovementDirections2
	ld de, wNPCMovementDirections2
	ld a, 1 ; oak
	ld [H_SPRITEINDEX], a
	call MoveSprite

	; trigger the next script
	ld a, 3
	ld [wPalletTownCurScript], a
	ret

PalletTownScript_OakMeetsPlayer:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, $FF ^ (A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a                      ; Enable A/B to advance upcoming text box
	xor a ; ld a, SPRITE_FACING_DOWN
	ld [wSpriteStateData1 + 9], a
	ld a, 1
	ld [wcf0d], a
	ld a, $FC
	ld [wJoyIgnore], a
	ld a, 1
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
; oak faces the horizontally adjacent patch of grass to face pikachu
	ld a, $FF
	ld [wJoyIgnore], a
	ld a, $2
	ld [wSpriteStateData1 + 1 * $10 + 1], a
	ld a, [wXCoord]
	cp 10 ; is the player on the right side of the grass?
	jr z, .facing_right ; if not, continue. Oak will face right.
	ld a, SPRITE_FACING_LEFT  ; if yes, Oak will face left
	jr .asm_18f01
.facing_right
	ld a, SPRITE_FACING_RIGHT
.asm_18f01
	ld [wSpriteStateData1 + 1 * $10 + 9], a

	; trigger the next script
	ld a, 4
	ld [wPalletTownCurScript], a
	ret

PalletTownScript_CatchPikachu:
	; start the pikachu battle
	ld a, $FF ^ (A_BUTTON | B_BUTTON)
	ld [wJoyIgnore], a                ; Enable A/B to advance text in the battle
	xor a
	ld [wListScrollOffset], a
	ld a, BATTLE_TYPE_PIKACHU         ; set up Pikachu encounter
	ld [wBattleType], a
	ld a, PIKACHU                   ; spawn Pikachu
	ld [wCurOpponent], a
	ld a, 5                           ; Level 5 Pikachu
	ld [wCurEnemyLVL], a

	; trigger the next script
	ld a, 5
	ld [wPalletTownCurScript], a
	ret

PalletTownScript_AfterCatchingPikachu:
	ld a, $2
	ld [wcf0d], a
	ld a, $1
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID                ; "OAK: Whew..."
	ld a, $2
	ld [wSpriteStateData1 + 1 * $10 + 1], a
	ld a, SPRITE_FACING_UP            ; Oak is facing back up after the encounter
	ld [wSpriteStateData1 + 1 * $10 + 9], a
	ld a, $8
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID                ; "OAK: A #MON can appear anytime in tall grass..."
	ld a, $ff
	ld [wJoyIgnore], a                ; Disable all buttons again

	; trigger the next script
	ld a, 6
	ld [wPalletTownCurScript], a
	ret

PalletTownScript_OakBringsYouToLab:
	xor a
	ld [wPlayerMovingDirection], a
	ld a, $1
	ld [wSpriteIndex], a
	xor a
	ld [wNPCMovementScriptFunctionNum], a
	ld a, $1
	ld [wNPCMovementScriptPointerTableNum], a
	ld a, [H_LOADEDROMBANK]
	ld [wNPCMovementScriptBank], a

	; trigger the next script
	ld a, 7
	ld [wPalletTownCurScript], a
	ret

PalletTownScript7:
	ld a, [wNPCMovementScriptPointerTableNum]
	and a ; is the movement script over?
	ret nz

	; trigger the next script
	ld a, 8
	ld [wPalletTownCurScript], a
	ret

PalletTownScript8:
	CheckEvent EVENT_DAISY_WALKING
	jr nz, .next
	CheckBothEventsSet EVENT_GOT_TOWN_MAP, EVENT_ENTERED_BLUES_HOUSE, 1
	jr nz, .next
	SetEvent EVENT_DAISY_WALKING
	ld a, HS_DAISY_SITTING
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_DAISY_WALKING
	ld [wMissableObjectIndex], a
	predef_jump ShowObject
.next
	CheckEvent EVENT_GOT_POKEBALLS_FROM_OAK
	ret z
	SetEvent EVENT_PALLET_AFTER_GETTING_POKEBALLS_2

PalletTownScript9:
	ret

PalletTown_TextPointers:
	dw PalletTownText1
	dw PalletTownText2
	dw PalletTownText3
	dw PalletTownText4
	dw PalletTownText5
	dw PalletTownText6
	dw PalletTownText7
	dw PalletTownText8

PalletTownText1:
	TX_ASM
	ld a, [wcf0d]
	and a
	jr nz, .next
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, OakAppearsText
	jr .done
.next
	dec a
	jr nz, .asm_18fd3
	ld hl, OakWalksUpText
	jr .done

.asm_18fd3
	ld hl, OakWhewText
.done
	call PrintText
	jp TextScriptEnd

OakAppearsText:
	TX_FAR _OakAppearsText
	TX_ASM
	ld c, 10
	call DelayFrames
	ld a, PLAYER_DIR_DOWN
	ld [wPlayerMovingDirection], a
	xor a
	ld [wEmotionBubbleSpriteIndex], a ; player's sprite
	ld [wWhichEmotionBubble], a ; EXCLAMATION_BUBBLE
	predef EmotionBubble
	jp TextScriptEnd

OakWalksUpText:
	TX_FAR _OakWalksUpText
	db "@"

OakWhewText:
	TX_FAR _OakWhewText
	db "@"

PalletTownText8:
	TX_FAR _OakGrassText
	db "@"

PalletTownText2: ; girl
	TX_FAR _PalletTownText2
	db "@"

PalletTownText3: ; fat man
	TX_FAR _PalletTownText3
	db "@"

PalletTownText4: ; sign by lab
	TX_FAR _PalletTownText4
	db "@"

PalletTownText5: ; sign by fence
	TX_FAR _PalletTownText5
	db "@"

PalletTownText6: ; sign by Red’s house
	TX_FAR _PalletTownText6
	db "@"

PalletTownText7: ; sign by Blue’s house
	TX_FAR _PalletTownText7
	db "@"
