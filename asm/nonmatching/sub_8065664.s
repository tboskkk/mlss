	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	cmp r0, #0x11
	bne _08065684
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806574C @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_08065684:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065744
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _080656BA
	adds r2, #0xFF
_080656BA:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080656C4
	adds r0, #0xFF
_080656C4:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080656D0
	adds r0, #0xFF
_080656D0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08065750 @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08065754 @ =0x08065B21
	str r0, [r4, #0x4C]
_08065744:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_0806574C: .4byte sub_8065AE4
_08065750: .4byte 0x000040A5
_08065754: .4byte sub_8065B20
