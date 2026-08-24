	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	movs r2, #0x80
	lsls r2, r2, #0x02
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	ldr r0, [r4, #0x10]
	subs r0, #0xE6
	str r0, [r4, #0x10]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _08065258
	adds r0, #0xFF
_08065258:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	lsls r1, r0, #0x04
	adds r1, r1, r0
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	ldr r1, _080652A8 @ =0x000007FF
	cmp r0, r1
	bgt _080652A0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806527C
	adds r1, #0xFF
_0806527C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08065286
	adds r2, #0xFF
_08065286:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08065290
	adds r3, #0xFF
_08065290:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080652AC @ =0x00000F08
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
_080652A0:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080652A8: .4byte 0x000007FF
_080652AC: .4byte 0x00000F08
