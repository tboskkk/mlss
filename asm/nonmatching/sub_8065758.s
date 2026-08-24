	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x38]
	cmp r2, #0x00
	bge _08065768
	adds r2, #0xFF
_08065768:
	asrs r2, r2, #0x08
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08065772
	adds r0, #0xFF
_08065772:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0806577E
	adds r0, #0xFF
_0806577E:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08065888 @ =0x000040A4
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	adds r6, r5, #0x0
	adds r6, #0x77
	adds r7, r5, #0x0
	adds r7, #0x74
	cmp r0, #0x00
	beq _080657B0
_080657AA:
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	bne _080657AA
_080657B0:
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r6, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrb r2, [r6, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0806588C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065890 @ =0x08065A9D
	str r0, [r4, #0x60]
	ldrb r1, [r7, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806581A
	adds r0, #0xFF
_0806581A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806582A
	adds r0, #0xFF
_0806582A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r5, r0, r1
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08065846
	ldr r1, _08065894 @ =0x000001FF
	adds r0, r5, r1
_08065846:
	asrs r6, r0, #0x09
	lsrs r0, r0, #0x1F
	adds r0, r6, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08065860
	movs r0, #0x02
_08065860:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r6, [r0, #0x00]
	adds r1, #0x08
	negs r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08065898 @ =0x0806593D
	str r0, [r4, #0x4C]
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08065888: .4byte 0x000040A4
_0806588C: .4byte sub_8087540
_08065890: .4byte sub_8065A9C
_08065894: .4byte 0x000001FF
_08065898: .4byte sub_806593C
