	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0809F1DC
	ldr r1, [r2, #0x38]
	cmp r1, #0x00
	bge _0809F1B0
	adds r1, #0xFF
_0809F1B0:
	asrs r1, r1, #0x08
	ldr r2, [r2, #0x3C]
	cmp r2, #0x00
	bge _0809F1BA
	adds r2, #0xFF
_0809F1BA:
	asrs r2, r2, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x10
	bl sub_808843C
	movs r0, #0x10
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_0809F1DC:
	ldr r0, _0809F1E8 @ =0x0809EFD1
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0809F1E8: .4byte sub_809EFD0
