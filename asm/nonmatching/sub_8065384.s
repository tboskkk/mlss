	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806539C
	adds r1, #0xFF
_0806539C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080653A6
	adds r2, #0xFF
_080653A6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080653B0
	adds r3, #0xFF
_080653B0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080653C8 @ =0x00000EFF
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080653C8: .4byte 0x00000EFF
