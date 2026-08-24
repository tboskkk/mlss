	.syntax unified
	.text

	thumb_func_start sub_813E618
sub_813E618:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	mov r8, r0
	adds r6, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r6, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r3, r6, r1
	ldr r1, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldrb r2, [r4, #0x00]
	movs r1, #0x08
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	movs r5, #0x04
	orrs r0, r5
	strb r0, [r4, #0x00]
	ldr r3, [r3, #0x00]
	ldrb r2, [r3, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #0x12]
	ldrb r0, [r4, #0x00]
	ands r1, r0
	orrs r1, r5
	strb r1, [r4, #0x00]
	ldr r2, _0813E6B4 @ =0x083A05EC
	ldr r1, _0813E6B8 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r6, #0x0
	movs r2, #0x00
	bl sub_8047154
	mov r0, r8
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813E6BC
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _0813E6C8
	.byte 0x00, 0x00
_0813E6B4: .4byte dword_83A05EC @ =0x083A05EC
_0813E6B8: .4byte 0x00000216
_0813E6BC:
	movs r0, #0x82
	lsls r0, r0, #0x02
	add r0, r8
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813E6C8:
	lsls r0, r0, #0x02
	add r0, r8
	ldr r5, [r0, #0x28]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r4, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r7
	ldrh r3, [r0, #0x30]
	str r4, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x40
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x41
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	mov r0, r8
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_813AA5C
	ldr r0, _0813E734 @ =0x0813E739
	mov r1, r9
	str r0, [r1, #0x00]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E734: .4byte sub_813E738
