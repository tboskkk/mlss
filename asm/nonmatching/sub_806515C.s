	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_80871A8
	adds r5, r0, #0x0
	cmp r5, #0x00
	bne _0806519C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08065174
	adds r1, #0xFF
_08065174:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806517E
	adds r2, #0xFF
_0806517E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065188
	adds r3, #0xFF
_08065188:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080651A8 @ =0x00000F24
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r0, _080651AC @ =0x080651B1
	str r0, [r4, #0x4C]
_0806519C:
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080651A8: .4byte 0x00000F24
_080651AC: .4byte sub_80651B0
