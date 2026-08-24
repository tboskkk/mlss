	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080633DE
	adds r1, #0xFF
_080633DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080633E8
	adds r2, #0xFF
_080633E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080633F2
	adds r3, #0xFF
_080633F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063418 @ =0x000012CD
	bl sub_80DF024
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r0, _0806341C @ =0x03000E18
	ldr r0, [r0, #0x00]
	bl free_heap_8018DA8
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063418: .4byte 0x000012CD
_0806341C: .4byte 0x03000E18
