	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	mov r8, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080DA4D0
	b _080DA644
_080DA4D0:
	mov r0, r8
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x38]
	cmp r0, #0x00
	bge _080DA4DC
	adds r0, #0xFF
_080DA4DC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x14
	mov r3, r8
	ldr r0, [r3, #0x3C]
	cmp r0, #0x00
	bge _080DA4EC
	adds r0, #0xFF
_080DA4EC:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	mov r5, r8
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _080DA4FA
	adds r0, #0xFF
_080DA4FA:
	asrs r0, r0, #0x08
	adds r0, #0x14
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080DA650 @ =0x00004138
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	str r7, [r0, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r5, r8
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r7, #0x0
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
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080DA654 @ =0x080DA66D
	str r0, [r7, #0x4C]
	ldr r0, _080DA658 @ =0x08087541
	str r0, [r7, #0x68]
	mov r1, r8
	ldr r0, [r1, #0x6C]
	str r0, [r7, #0x6C]
	ldr r0, [r1, #0x2C]
	str r0, [r7, #0x2C]
	adds r0, r7, #0x0
	bl sub_807F4FC
	ldr r0, _080DA65C @ =0x080DAA19
	str r0, [r7, #0x60]
	adds r1, r7, #0x0
	adds r1, #0x9C
	mov r0, r8
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r0, r8
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	subs r1, #0x34
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r0, r7, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r7, #0x0
	adds r6, #0x98
	mov r2, r8
	ldr r0, [r2, #0x2C]
	ldr r5, [r0, #0x28]
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xAE
	adds r1, r7, #0x0
	adds r1, #0xB0
	adds r2, r7, #0x0
	adds r2, #0xB2
	adds r3, r5, #0x0
	adds r3, #0xD8
	ldr r4, [r7, #0x38]
	subs r4, #0x0A
	ldr r3, [r3, #0x00]
	subs r3, r3, r4
	adds r4, r5, #0x0
	adds r4, #0xDC
	ldr r4, [r4, #0x00]
	ldr r5, [r7, #0x3C]
	subs r4, r4, r5
	str r4, [sp, #0x000]
	ldr r5, [r7, #0x40]
	subs r5, #0x04
	ldr r4, [r6, #0x00]
	subs r4, r4, r5
	str r4, [sp, #0x004]
	movs r4, #0xB8
	lsls r4, r4, #0x07
	str r4, [sp, #0x008]
	ldr r4, _080DA660 @ =0x00000466
	str r4, [sp, #0x00C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	str r4, [sp, #0x010]
	movs r4, #0x00
	str r4, [sp, #0x014]
	bl sub_808552C
	adds r1, r7, #0x0
	adds r1, #0x94
	str r0, [r1, #0x00]
	mov r3, r8
	str r4, [r3, #0x6C]
	mov r0, r8
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r5, r8
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _080DA664 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _080DA668 @ =0x080DA9FD
	str r0, [r5, #0x4C]
_080DA644:
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DA650: .4byte 0x00004138
_080DA654: .4byte sub_80DA66C
_080DA658: .4byte sub_8087540
_080DA65C: .4byte sub_80DAA18
_080DA660: .4byte 0x00000466
_080DA664: .4byte 0x00000117
_080DA668: .4byte sub_80DA9FC
