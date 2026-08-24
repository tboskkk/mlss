	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806E428
	b _0806E5AE
_0806E428:
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r7, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _0806E43C
	b _0806E5AE
_0806E43C:
	adds r0, r6, #0x0
	bl sub_807F47C
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x68]
	cmp r1, #0x00
	beq _0806E44E
	bl _call_via_r1
_0806E44E:
	ldr r1, [r6, #0x2C]
	ldr r0, _0806E5B8 @ =0x0806E791
	str r0, [r1, #0x4C]
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x2C]
	ldr r3, [r0, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E470
	adds r0, #0xFF
_0806E470:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E47E
	adds r0, #0xFF
_0806E47E:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E48C
	adds r0, #0xFF
_0806E48C:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	movs r0, #0xF6
	lsls r0, r0, #0x05
	bl sub_80DF024
	ldr r5, [r6, #0x28]
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4AA
	adds r0, #0xFF
_0806E4AA:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4B8
	adds r0, #0xFF
_0806E4B8:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0806E4C6
	adds r0, #0xFF
_0806E4C6:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _0806E5BC @ =0x00004111
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806E5C0 @ =0x0806E5D9
	str r0, [r5, #0x4C]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _0806E5C4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	ldr r1, _0806E5C8 @ =0x0000173E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806E5CC @ =0x03000E3C
	str r0, [r1, #0x00]
	str r7, [r5, #0x60]
	adds r2, r6, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806E5D0 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x7A
	strh r7, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x98
	bl play_sfx_80195B4
	ldr r0, _0806E5D4 @ =0x0806E5F5
	str r0, [r6, #0x4C]
_0806E5AE:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806E5B8: .4byte nullsub_15
_0806E5BC: .4byte 0x00004111
_0806E5C0: .4byte sub_806E5D8
_0806E5C4: .4byte sub_8087540
_0806E5C8: .4byte 0x0000173E
_0806E5CC: .4byte 0x03000E3C
_0806E5D0: .4byte 0x00000199
_0806E5D4: .4byte sub_806E5F4
