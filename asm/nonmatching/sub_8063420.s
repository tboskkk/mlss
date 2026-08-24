	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _08063464
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08063442
	adds r1, #0xFF
_08063442:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806344C
	adds r2, #0xFF
_0806344C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08063456
	adds r3, #0xFF
_08063456:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806346C @ =0x000012A3
	bl sub_80DF024
	ldr r0, _08063470 @ =0x08063475
	str r0, [r4, #0x4C]
_08063464:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806346C: .4byte 0x000012A3
_08063470: .4byte sub_8063474
