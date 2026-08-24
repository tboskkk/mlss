	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065482
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806544E
	adds r1, #0xFF
_0806544E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065458
	adds r2, #0xFF
_08065458:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065462
	adds r3, #0xFF
_08065462:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806548C @ =0x0000230A
	bl sub_80DF024
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x4A
	strh r0, [r1, #0x00]
	adds r0, #0xCF
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08065490 @ =0x08064FED
	str r0, [r4, #0x4C]
_08065482:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806548C: .4byte 0x0000230A
_08065490: .4byte sub_8064FEC
