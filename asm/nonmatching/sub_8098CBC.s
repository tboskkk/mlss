	.syntax unified
	.text

	thumb_func_start sub_8098CBC
sub_8098CBC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08098D10
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08098CE2
	adds r1, #0xFF
_08098CE2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08098CEC
	adds r2, #0xFF
_08098CEC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08098CF6
	adds r3, #0xFF
_08098CF6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08098D18 @ =0x00002841
	bl sub_80DF024
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08098D1C @ =0x08098955
	str r0, [r4, #0x4C]
_08098D10:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08098D18: .4byte 0x00002841
_08098D1C: .4byte sub_8098954
