CinnabarLabMetronomeRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabMetronomeRoom_TextPointers:
	dw Lab3_ReceiveTM02
	dw Lab3_EeveeText
	dw Lab3Text3
	dw Lab3Text4
	dw Lab3Text5

Lab3_ReceiveTM02:
	TX_ASM
	CheckEvent EVENT_GOT_TM35
	jr nz, .asm_e551a
	ld hl, TM02PreReceiveText
	call PrintText
	lb bc, TM_02, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedTM02Text
	call PrintText
	SetEvent EVENT_GOT_TM35
	jr .asm_eb896
.BagFull
	ld hl, TM02NoRoomText
	call PrintText
	jr .asm_eb896
.asm_e551a
	ld hl, TM02ExplanationText
	call PrintText
.asm_eb896
	jp TextScriptEnd

TM02PreReceiveText:
	TX_FAR _TM02PreReceiveText
	db "@"

ReceivedTM02Text:
	TX_FAR _ReceivedTM02Text
	TX_SFX_ITEM_1
	db "@"

TM02ExplanationText:
	TX_FAR _TM02ExplanationText
	db "@"

TM02NoRoomText:
	TX_FAR _TM02NoRoomText
	db "@"

Lab3_EeveeText:
	TX_FAR _Lab3Text2
	db "@"

Lab3Text4:
Lab3Text3:
	TX_FAR _Lab3Text3
	db "@"

Lab3Text5:
	TX_FAR _Lab3Text5
	db "@"
