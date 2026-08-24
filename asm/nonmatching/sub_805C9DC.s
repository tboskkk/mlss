	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x008]
	ldrb r7, [r0, #0x0A]
	cmp r7, #0x00
	beq _0805C9FA
	movs r0, #0x00
	b _0805CB10
_0805C9FA:
	movs r6, #0x80
	lsls r6, r6, #0x02
	ldr r2, _0805CB20 @ =0x081E2830
	adds r0, r6, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r0, r8
	str r1, [r0, #0x04]
	ldr r4, _0805CB24 @ =0x083A7894
	ldr r2, [sp, #0x008]
	lsls r5, r2, #0x04
	adds r0, r5, r4
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x004]
	ldr r2, _0805CB28 @ =0x01000080
	add r0, sp, #0x004
	bl CpuFastSet
	mov r1, r8
	ldr r0, [r1, #0x04]
	ldr r1, _0805CB2C @ =0x06003E00
	movs r2, #0x02
	str r2, [sp, #0x000]
	adds r2, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0xA0
	lsls r0, r0, #0x03
	ldr r2, _0805CB30 @ =0x081E2838
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	str r7, [sp, #0x004]
	ldr r2, _0805CB34 @ =0x01000140
	add r0, sp, #0x004
	bl CpuFastSet
	adds r4, #0x04
	adds r5, r5, r4
	ldr r5, [r5, #0x00]
	mov r10, r5
	movs r1, #0x00
	mov r7, r8
	ldr r6, [r7, #0x00]
_0805CA62:
	movs r4, #0x00
	lsls r0, r1, #0x04
	adds r2, r1, #0x1
	mov r9, r2
	lsls r7, r1, #0x05
	str r7, [sp, #0x00C]
	subs r0, r0, r1
	mov r12, r0
	movs r2, #0x13
	subs r0, r2, r1
	lsls r5, r0, #0x05
_0805CA78:
	ldr r7, [sp, #0x00C]
	adds r1, r7, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	mov r0, r12
	adds r3, r0, r4
	add r3, r10
	ldr r2, _0805CB38 @ =0x0000F1F0
	adds r0, r2, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	subs r2, #0x1D
	ldr r0, [sp, #0x00C]
	subs r1, r0, r2
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB3C @ =0x0000F5F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	adds r1, r5, r4
	lsls r1, r1, #0x01
	adds r1, r1, r6
	ldr r7, _0805CB40 @ =0x0000F9F0
	adds r0, r7, #0x0
	ldrb r7, [r3, #0x00]
	adds r0, r0, r7
	strh r0, [r1, #0x00]
	subs r2, r5, r2
	lsls r2, r2, #0x01
	adds r2, r2, r6
	ldr r1, _0805CB44 @ =0x0000FDF0
	adds r0, r1, #0x0
	ldrb r3, [r3, #0x00]
	adds r0, r0, r3
	strh r0, [r2, #0x00]
	adds r0, r4, #0x1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x0E
	bls _0805CA78
	mov r2, r9
	lsls r0, r2, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x09
	bls _0805CA62
	ldr r1, _0805CB48 @ =0x06003000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r0, #0x02
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	movs r3, #0x20
	bl sub_8018218
	ldr r1, _0805CB4C @ =0x02000008
	movs r7, #0xC0
	lsls r7, r7, #0x03
	adds r0, r7, #0x0
	strh r0, [r1, #0x00]
	ldr r0, _0805CB50 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	movs r0, #0x00
	mov r1, sp
	ldrb r2, [r1, #0x08]
	mov r1, r8
	strb r2, [r1, #0x0B]
	strh r0, [r1, #0x08]
	movs r0, #0x01
	strb r0, [r1, #0x0A]
_0805CB10:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805CB20: .4byte 0x081E2830
_0805CB24: .4byte 0x083A7894
_0805CB28: .4byte 0x01000080
_0805CB2C: .4byte 0x06003E00
_0805CB30: .4byte 0x081E2838
_0805CB34: .4byte 0x01000140
_0805CB38: .4byte 0x0000F1F0
_0805CB3C: .4byte 0x0000F5F0
_0805CB40: .4byte 0x0000F9F0
_0805CB44: .4byte 0x0000FDF0
_0805CB48: .4byte 0x06003000
_0805CB4C: .4byte 0x02000008
_0805CB50: .4byte 0x02000010
