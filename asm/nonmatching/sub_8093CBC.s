	.syntax unified
	.text

	thumb_func_start sub_8093CBC
sub_8093CBC:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _08093CD4
	ldr r0, _08093CEC @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_08093CD4:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _08093CF0
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _08093D08
	.byte 0x00, 0x00
_08093CEC: .4byte 0x00000111
_08093CF0:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x17
	ble _08093D08
	adds r0, r3, #0x0
	bl sub_808DD2C
_08093D08:
	pop {r0}
	bx r0
