	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08063392
	adds r1, #0xFF
_08063392:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806339C
	adds r2, #0xFF
_0806339C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080633A6
	adds r3, #0xFF
_080633A6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080633C8 @ =0x000012CD
	bl sub_80DF024
	ldr r0, _080633CC @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080633C8: .4byte 0x000012CD
_080633CC: .4byte 0x03000E18
