	.syntax unified
	.text

	thumb_func_start sub_809D59C
sub_809D59C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809D5D6
	adds r0, r2, #0x0
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x09
	bne _0809D5D6
	mov r0, r8
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	mov r0, r8
	ldr r2, [r0, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_0809D5D6:
	movs r1, #0xAC
	add r1, r8
	mov r9, r1
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0809D680
	movs r0, #0x06
	ldr r6, _0809D68C @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r4, [r1, #0x70]
	adds r2, r4, #0x0
	adds r2, #0x08
	adds r1, r4, #0x0
	adds r1, #0x7E
	ldrb r1, [r1, #0x00]
	movs r7, #0x06
	adds r5, r1, #0x0
	ands r5, r0
	cmp r5, #0x02
	bne _0809D632
	adds r0, r2, #0x0
	ldr r1, _0809D690 @ =0x0000208E
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r1, r3, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x08]
	strh r5, [r0, #0x06]
	ldr r0, _0809D694 @ =0x0809D7B9
	str r0, [r3, #0x4C]
_0809D632:
	ldr r0, [r6, #0x00]
	ldr r5, [r0, #0x74]
	adds r1, r5, #0x0
	adds r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	adds r4, r7, #0x0
	ands r4, r0
	cmp r4, #0x02
	bne _0809D674
	adds r0, r1, #0x0
	ldr r1, _0809D690 @ =0x0000208E
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7D
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	subs r2, #0x04
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x08]
	strh r4, [r0, #0x06]
	ldr r0, _0809D694 @ =0x0809D7B9
	str r0, [r3, #0x4C]
_0809D674:
	movs r0, #0x82
	mov r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _0809D698 @ =0x0809D69D
	mov r1, r8
	str r0, [r1, #0x4C]
_0809D680:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809D68C: .4byte 0x03000FD8
_0809D690: .4byte 0x0000208E
_0809D694: .4byte sub_809D7B8
_0809D698: .4byte sub_809D69C
