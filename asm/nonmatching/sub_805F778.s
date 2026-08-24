	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0805F78C
	b _0805F8FE
_0805F78C:
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0805F7A0
	adds r1, #0xFF
_0805F7A0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0805F7AA
	adds r2, #0xFF
_0805F7AA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0805F7B4
	adds r3, #0xFF
_0805F7B4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0805F8CC @ =0x00000E64
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0805F7C8
	adds r0, #0xFF
_0805F7C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x20
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0805F7D6
	adds r0, #0xFF
_0805F7D6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0805F7E2
	adds r0, #0xFF
_0805F7E2:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0805F8D0 @ =0x00004132
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
	ldr r0, _0805F8D4 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0805F8D8 @ =0x0805FC81
	str r0, [r5, #0x5C]
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	adds r0, #0x38
	strh r2, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x38]
	ldr r2, _0805F8DC @ =0xFFFFE000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x3C]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xB0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805F8E4
	ldr r0, _0805F8E0 @ =0x0805FAE9
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x40
	b _0805F8EE
	.byte 0x00, 0x00
_0805F8CC: .4byte 0x00000E64
_0805F8D0: .4byte 0x00004132
_0805F8D4: .4byte sub_8087540
_0805F8D8: .4byte sub_805FC80
_0805F8DC: .4byte 0xFFFFE000
_0805F8E0: .4byte sub_805FAE8
_0805F8E4:
	ldr r0, _0805F908 @ =0x0805FBB5
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0x02
_0805F8EE:
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x85
	bl play_sfx_80195B4
	ldr r0, _0805F90C @ =0x0805FDB9
	str r0, [r6, #0x4C]
_0805F8FE:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F908: .4byte sub_805FBB4
_0805F90C: .4byte sub_805FDB8
