	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805DA94
	b _0805DCB6
_0805DA94:
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805DAA8
	adds r1, #0xFF
_0805DAA8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805DAB2
	adds r2, #0xFF
_0805DAB2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805DABC
	adds r3, #0xFF
_0805DABC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805DCC8 @ =0x000010EE
	bl sub_80DF024
	ldr r0, _0805DCCC @ =0x0805DDD5
	str r0, [r6, #0x4C]
	ldr r4, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0805DAD4
	adds r2, #0xFF
_0805DAD4:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DADE
	adds r0, #0xFF
_0805DADE:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DAEA
	adds r0, #0xFF
_0805DAEA:
	asrs r0, r0, #0x08
	movs r1, #0xA0
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	mov r10, r5
	str r5, [sp, #0x008]
	adds r0, r4, #0x0
	ldr r1, _0805DCD0 @ =0x0000408E
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	mov r2, r10
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	subs r1, #0x81
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r2, r10
	ands r2, r0
	lsls r2, r2, #0x05
	movs r4, #0x21
	negs r4, r4
	ands r1, r4
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _0805DCD4 @ =0x0805DCE1
	str r0, [r5, #0x4C]
	ldr r1, _0805DCD8 @ =0x08087541
	str r1, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	subs r0, #0x02
	movs r4, #0x00
	strh r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r2, r8
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r4, r6, #0x0
	adds r4, #0xA4
	str r4, [sp, #0x010]
	ldr r0, [r4, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA8
	str r0, [sp, #0x014]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x74
	str r1, [sp, #0x018]
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r5, #0x08]
	movs r2, #0x10
	mov r9, r2
	mov r4, r9
	strh r4, [r0, #0x04]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x06]
	ldr r0, [r6, #0x28]
	mov r12, r0
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0805DBD4
	adds r2, #0xFF
_0805DBD4:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805DBDE
	adds r0, #0xFF
_0805DBDE:
	asrs r0, r0, #0x08
	subs r3, r0, #0x1
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805DBEA
	adds r0, #0xFF
_0805DBEA:
	asrs r0, r0, #0x08
	mov r4, r8
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	mov r0, r10
	str r0, [sp, #0x008]
	mov r0, r12
	ldr r1, _0805DCDC @ =0x0000408F
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	mov r1, r10
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r0, [r3, #0x00]
	movs r2, #0x41
	negs r2, r2
	ands r2, r0
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r1, r10
	ands r1, r0
	lsls r1, r1, #0x05
	movs r5, #0x21
	negs r5, r5
	ands r2, r5
	orrs r2, r1
	strb r2, [r3, #0x00]
	ldr r0, _0805DCD4 @ =0x0805DCE1
	str r0, [r4, #0x4C]
	ldr r1, _0805DCD8 @ =0x08087541
	str r1, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x01
	strh r2, [r0, #0x00]
	subs r0, #0x02
	movs r5, #0x00
	strh r5, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r2, [sp, #0x00C]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r5, r8
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r5, [sp, #0x014]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x018]
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	mov r1, r9
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD3
	bl play_sfx_80195B4
_0805DCB6:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DCC8: .4byte 0x000010EE
_0805DCCC: .4byte sub_805DDD4
_0805DCD0: .4byte 0x0000408E
_0805DCD4: .4byte sub_805DCE0
_0805DCD8: .4byte sub_8087540
_0805DCDC: .4byte 0x0000408F
