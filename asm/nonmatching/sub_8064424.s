	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08064432
	adds r1, #0xFF
_08064432:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806443C
	adds r2, #0xFF
_0806443C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08064446
	adds r3, #0xFF
_08064446:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08064460 @ =0x00001081
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08064460: .4byte 0x00001081
	.byte 0x00, 0x21, 0xC1, 0x64, 0x70, 0x47, 0x00, 0x00
