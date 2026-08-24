	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	cmp r0, #0x00
	bne _080601C8
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080601A2
	adds r1, #0xFF
_080601A2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080601AC
	adds r2, #0xFF
_080601AC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080601B6
	adds r3, #0xFF
_080601B6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080601D0 @ =0x0000110F
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
_080601C8:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
_080601D0: .4byte 0x0000110F
