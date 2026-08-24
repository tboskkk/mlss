	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08063A12
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	str r1, [r4, #0x10]
	str r1, [r4, #0x38]
	adds r0, #0x04
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	str r0, [r4, #0x3C]
	cmp r1, #0x00
	bge _080639E4
	adds r1, #0xFF
_080639E4:
	asrs r1, r1, #0x08
	cmp r0, #0x00
	bge _080639EC
	adds r0, #0xFF
_080639EC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080639F8
	adds r3, #0xFF
_080639F8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08063A1C @ =0x00001296
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063A20 @ =0x08063B2D
	str r0, [r4, #0x4C]
_08063A12:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08063A1C: .4byte 0x00001296
_08063A20: .4byte sub_8063B2C
