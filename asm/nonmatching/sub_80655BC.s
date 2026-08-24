	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	cmp r0, #0x01
	bne _080655DC
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08065658 @ =0x08065AE5
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_080655DC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08065650
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r5, #0x00]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r5, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x38]
	cmp r2, #0x00
	bge _0806560C
	adds r2, #0xFF
_0806560C:
	asrs r2, r2, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08065616
	adds r0, #0xFF
_08065616:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08065622
	adds r0, #0xFF
_08065622:
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
	ldr r1, _0806565C @ =0x000040A5
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r0, #0x00]
	ldr r0, _08065660 @ =0x08065665
	str r0, [r4, #0x4C]
_08065650:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_08065658: .4byte sub_8065AE4
_0806565C: .4byte 0x000040A5
_08065660: .4byte sub_8065664
