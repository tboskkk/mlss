	.syntax unified
	.text

	thumb_func_start sub_805BFF0
sub_805BFF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	ldr r0, _0805C08C @ =0x00000584
	adds r6, r7, r0
	ldrb r4, [r6, #0x00]
	cmp r4, #0x00
	beq _0805C004
	b _0805C122
_0805C004:
	ldr r1, _0805C090 @ =0x00000585
	adds r5, r7, r1
	movs r2, #0x02
	strb r2, [r5, #0x00]
	adds r0, #0x06
	adds r1, r7, r0
	movs r0, #0x00
	mov r12, r0
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r1, _0805C094 @ =0x0000058C
	adds r0, r7, r1
	movs r3, #0x02
	strh r2, [r0, #0x00]
	movs r2, #0xB2
	lsls r2, r2, #0x03
	adds r1, r7, r2
	movs r0, #0x06
	strh r0, [r1, #0x00]
	ldr r0, _0805C098 @ =0x00000592
	adds r1, r7, r0
	movs r0, #0x04
	strh r0, [r1, #0x00]
	movs r1, #0xB1
	lsls r1, r1, #0x03
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	adds r2, #0x06
	adds r1, r7, r2
	movs r0, #0x08
	strb r0, [r1, #0x00]
	ldr r1, _0805C09C @ =0x0000058E
	adds r0, r7, r1
	strh r4, [r0, #0x00]
	subs r2, #0x02
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	adds r1, #0x09
	adds r0, r7, r1
	strb r3, [r0, #0x00]
	movs r0, #0x01
	strb r0, [r6, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r1, r7, #0x0
	adds r1, #0x60
	adds r0, r1, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	mov r8, r1
	cmp r0, #0x97
	bgt _0805C0A8
	ldr r1, _0805C0A0 @ =0x00000586
	adds r0, r7, r1
	mov r2, r12
	strb r2, [r0, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrb r1, [r0, #0x00]
	movs r2, #0x68
	negs r2, r2
	adds r0, r2, #0x0
	subs r0, r0, r1
	ldr r2, _0805C0A4 @ =0x00000587
	adds r1, r7, r2
	strb r0, [r1, #0x00]
	b _0805C0B8
_0805C08C: .4byte 0x00000584
_0805C090: .4byte 0x00000585
_0805C094: .4byte 0x0000058C
_0805C098: .4byte 0x00000592
_0805C09C: .4byte 0x0000058E
_0805C0A0: .4byte 0x00000586
_0805C0A4: .4byte 0x00000587
_0805C0A8:
	ldr r1, _0805C12C @ =0x00000586
	adds r0, r7, r1
	movs r1, #0xA0
	strb r1, [r0, #0x00]
	ldr r2, _0805C130 @ =0x00000587
	adds r0, r7, r2
	mov r1, r12
	strb r1, [r0, #0x00]
_0805C0B8:
	ldr r6, _0805C134 @ =0x03000E08
	movs r4, #0xA0
	lsls r4, r4, #0x03
	ldr r2, _0805C138 @ =0x081E2820
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r6, #0x00]
	ldr r5, _0805C13C @ =0x03000E0C
	ldr r2, _0805C140 @ =0x081E2828
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r5, #0x00]
	movs r3, #0x00
	adds r5, r7, #0x0
	adds r5, #0x5A
	ldr r2, _0805C144 @ =0x00000585
	adds r4, r7, r2
_0805C0E6:
	ldr r2, [r6, #0x00]
	lsls r1, r3, #0x02
	adds r2, r1, r2
	ldr r0, _0805C13C @ =0x03000E0C
	ldr r0, [r0, #0x00]
	adds r1, r1, r0
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r5, r0
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	adds r0, r3, #0x1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x9F
	bls _0805C0E6
	adds r0, r7, #0x0
	bl sub_805C14C
	ldr r0, _0805C148 @ =0x0805C5F5
	movs r1, #0x00
	bl sub_8029888
_0805C122:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805C12C: .4byte 0x00000586
_0805C130: .4byte 0x00000587
_0805C134: .4byte 0x03000E08
_0805C138: .4byte dword_81E2820 @ =0x081E2820
_0805C13C: .4byte 0x03000E0C
_0805C140: .4byte dword_81E2828 @ =0x081E2828
_0805C144: .4byte 0x00000585
_0805C148: .4byte sub_805C5F4
