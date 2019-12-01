PewterCity_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PewterCity_ScriptPointers
	ld a, [wPewterCityCurScript]
	jp CallFunctionInTable

PewterCity_ScriptPointers:
	dw PewterCityScript0	; Check to auto trigger Gym Guy (Removed)
	dw PewterCityScript1	; Follow the Museum Guy Event
	dw PewterCityScript2	; Museum Guy disappears
	dw PewterCityScript3	; Museum Guy reappears

PewterCityScript0:
	xor a
	ld [wMuseum1FCurScript], a
	ResetEvent EVENT_BOUGHT_MUSEUM_TICKET
	ret

PewterCityScript1:
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, $3
	ld [H_SPRITEINDEX], a
	ld a, SPRITE_FACING_UP
	ld [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, ($3 << 4) | SPRITE_FACING_UP
	ld [hSpriteImageIndex], a
	call SetSpriteImageIndexAfterSettingFacingDirection
	call PlayDefaultMusic
	ld hl, wFlags_0xcd60
	set 4, [hl]
	ld a, $d
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	ld a, $3c
	ld [$ffeb], a
	ld a, $30
	ld [$ffec], a
	ld a, $c
	ld [$ffed], a
	ld a, $11
	ld [$ffee], a
	ld a, $3
	ld [wSpriteIndex], a
	call SetSpritePosition1
	ld a, $3
	ld [H_SPRITEINDEX], a
	ld de, MovementData_PewterMuseumGuyExit
	call MoveSprite
	ld a, $2
	ld [wPewterCityCurScript], a
	ret

MovementData_PewterMuseumGuyExit:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db $FF

PewterCityScript2:
	ld a, [wd730]
	bit 0, a
	ret nz
	ld a, HS_MUSEUM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, $3
	ld [wPewterCityCurScript], a
	ret

PewterCityScript3:
	ld a, $3
	ld [wSpriteIndex], a
	call SetSpritePosition2
	ld a, HS_MUSEUM_GUY
	ld [wMissableObjectIndex], a
	predef ShowObject
	xor a
	ld [wJoyIgnore], a
	ld a, $0
	ld [wPewterCityCurScript], a
	ret

PewterCity_TextPointers:
	dw PewterCityText1		; "It's rumored that CLEFAIRY came from the moon!"
	dw PewterCityText2		; "There aren't many serious trainers here!"
	dw PewterCityText3		; "Did you check out the MUSEUM?"
	dw PewterCityText4		; REPEL garden person "Psst... Do you know what I'm doing?"
	dw PewterCityText5		; "You're a trainer, right?"
	dw PewterCityText6
	dw PewterCityText7
	dw MartSignText
	dw PokeCenterSignText
	dw PewterCityText10
	dw PewterCityText11
	dw PewterCityText12
	dw PewterCityText13		; "It's (Museum) right here! ..."
	dw PewterCityText14

PewterCityText1:
	TX_FAR _PewterCityText1
	db "@"

PewterCityText2:
	TX_FAR _PewterCityText2
	db "@"

PewterCityText3:
	TX_ASM
	ld hl, PewterCityText_MuseumQuestion
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_193c9
	ld hl, PewterCityText_MuseumAnswerYes
	call PrintText
	jr .asm_193ee
.asm_193c9
	ld hl, PewterCityText_MuseumAnswerNo
	call PrintText
	xor a
	ld [hJoyPressed], a
	ld [hJoyHeld], a
	ld [wNPCMovementScriptFunctionNum], a
	ld a, $2
	ld [wNPCMovementScriptPointerTableNum], a
	ld a, [H_LOADEDROMBANK]
	ld [wNPCMovementScriptBank], a
	ld a, $3
	ld [wSpriteIndex], a
	call GetSpritePosition2
	ld a, $1
	ld [wPewterCityCurScript], a
.asm_193ee
	jp TextScriptEnd

PewterCityText_MuseumQuestion:
	TX_FAR _PewterCityText_MuseumQuestion
	db "@"

PewterCityText_MuseumAnswerYes:
	TX_FAR _PewterCityText_MuseumAnswerYes
	db "@"

PewterCityText_MuseumAnswerNo:
	TX_FAR _PewterCityText_MuseumAnswerNo
	db "@"

PewterCityText13:
	TX_FAR _PewterCityText13
	db "@"

PewterCityText4:
	TX_ASM
	ld hl, PewterCityText_DoYouKnowWhatImDoing
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	cp $0
	jr nz, .asm_1941e
	ld hl, PewterCityText_ItsHardWork
	call PrintText
	jr .asm_19424
.asm_1941e
	ld hl, PewterCityText_SprayingRepel
	call PrintText
.asm_19424
	jp TextScriptEnd

PewterCityText_DoYouKnowWhatImDoing:
	TX_FAR _PewterCityText_DoYouKnowWhatImDoing
	db "@"

PewterCityText_ItsHardWork:
	TX_FAR _PewterCityText_ItsHardWork
	db "@"

PewterCityText_SprayingRepel:
	TX_FAR _PewterCityText_SprayingRepel
	db "@"

PewterCityText5:
	TX_ASM
	ld hl, PewterCityText_YoureATrainer
	call PrintText							; "You're a trainer, right?"
	jp TextScriptEnd

PewterCityText_YoureATrainer:
	TX_FAR _PewterCityText_YoureATrainer
	db "@"

PewterCityText14:
	TX_FAR _PewterCityText14
	db "@"

PewterCityText6:
	TX_FAR _PewterCityText6
	db "@"

PewterCityText7:
	TX_FAR _PewterCityText7
	db "@"

PewterCityText10:
	TX_FAR _PewterCityText10
	db "@"

PewterCityText11:
	TX_FAR _PewterCityText11
	db "@"

PewterCityText12:
	TX_FAR _PewterCityText12
	db "@"
