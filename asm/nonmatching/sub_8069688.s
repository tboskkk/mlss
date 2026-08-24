	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08069776
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x01
	bne _080696B6
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	b _080696C2
_080696B6:
	ldr r2, _08069780 @ =0x0000204D
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
_080696C2:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _080696CC
	adds r2, #0xFF
_080696CC:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _080696D6
	adds r3, #0xFF
_080696D6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _080696E0
	adds r0, #0xFF
_080696E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08069784 @ =0x00004072
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	ands r4, r0
	lsls r4, r4, #0x06
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08069788 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r4, #0x00
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807F4FC
	str r4, [r5, #0x58]
	ldr r0, _0806978C @ =0x0806A181
	str r0, [r5, #0x60]
	str r4, [r5, #0x4C]
	adds r5, #0x9C
	str r4, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x84
	movs r0, #0x03
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08069790 @ =0x08069795
	str r0, [r6, #0x4C]
_08069776:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08069780: .4byte 0x0000204D
_08069784: .4byte 0x00004072
_08069788: .4byte sub_8087540
_0806978C: .4byte sub_806A180
_08069790: .4byte sub_8069794
