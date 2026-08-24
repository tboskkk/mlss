	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08060594
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08060572
	adds r1, #0xFF
_08060572:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806057C
	adds r2, #0xFF
_0806057C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08060586
	adds r3, #0xFF
_08060586:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806059C @ =0x000010F5
	bl sub_80DF024
	ldr r0, _080605A0 @ =0x0806062D
	str r0, [r4, #0x4C]
_08060594:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0806059C: .4byte 0x000010F5
_080605A0: .4byte sub_806062C
