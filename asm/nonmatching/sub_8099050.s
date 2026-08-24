	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080990A4
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08099076
	adds r1, #0xFF
_08099076:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08099080
	adds r2, #0xFF
_08099080:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0809908A
	adds r3, #0xFF
_0809908A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080990AC @ =0x00002829
	bl sub_80DF024
	movs r0, #0x86
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080990B0 @ =0x08098D21
	str r0, [r4, #0x4C]
_080990A4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080990AC: .4byte 0x00002829
_080990B0: .4byte sub_8098D20
