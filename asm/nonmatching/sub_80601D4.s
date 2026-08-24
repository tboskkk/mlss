	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601E8
	adds r1, #0xFF
_080601E8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601F2
	adds r2, #0xFF
_080601F2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601FC
	adds r3, #0xFF
_080601FC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08060218 @ =0x00001118
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08060218: .4byte 0x00001118
