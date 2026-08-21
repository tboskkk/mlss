	.syntax unified
	.text

	thumb_func_start sub_813CE8C
sub_813CE8C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x008]
	mov r8, r1
	str r2, [sp, #0x00C]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r7, [r0, #0x00]
	movs r0, #0x58
	adds r0, r0, r7
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r7, r1
	str r1, [sp, #0x010]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r5, _0813CF7C @ =0x0000020D
	mov r3, r8
	adds r2, r3, r5
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r6, r8
	adds r6, #0x24
	ldrb r2, [r6, #0x00]
	lsls r2, r2, #0x1D
	lsrs r2, r2, #0x1E
	adds r0, r7, #0x0
	movs r1, #0x08
	bl sub_8047154
	mov r0, r10
	lsls r4, r0, #0x01
	movs r1, #0x84
	lsls r1, r1, #0x01
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #0x00
	ldsb r1, [r0, r1]
	adds r0, r7, #0x0
	bl sub_804790C
	ldr r3, [sp, #0x010]
	adds r4, r3, r4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r7, #0x0
	bl sub_804794C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804776C
	adds r0, r7, #0x0
	movs r1, #0x01
	bl sub_804761C
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x84
	lsls r0, r0, #0x02
	adds r3, r7, r0
	ldrb r2, [r3, #0x00]
	movs r1, #0x09
	negs r1, r1
	adds r0, r1, #0x0
	ands r0, r2
	strb r0, [r3, #0x00]
	adds r5, r7, r5
	ldrb r0, [r5, #0x00]
	ands r1, r0
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	subs r0, #0x20
	ands r1, r0
	strb r1, [r5, #0x00]
	mov r1, r8
	ldr r4, [r1, #0x0C]
	ldr r2, [r1, #0x10]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	movs r1, #0xC0
	lsls r1, r1, #0x03
	adds r3, r0, r1
	ldrb r0, [r6, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	cmp r0, #0x02
	beq _0813CF90
	cmp r0, #0x02
	bhi _0813CF80
	cmp r0, #0x00
	beq _0813CF86
	b _0813CF9E
	.byte 0x00, 0x00
_0813CF7C: .4byte 0x0000020D
_0813CF80:
	cmp r0, #0x04
	beq _0813CFA2
	b _0813CF9E
_0813CF86:
	ldr r0, _0813CF8C @ =0xFFFFFF00
	adds r2, r2, r0
	b _0813CFA8
_0813CF8C: .4byte 0xFFFFFF00
_0813CF90:
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r4, r4, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r2, r0
	b _0813CFA8
_0813CF9E:
	ldr r0, _0813D014 @ =0xFFFFF800
	adds r4, r4, r0
_0813CFA2:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r2, r2, r1
_0813CFA8:
	movs r0, #0x01
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8047F60
	mov r0, r8
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1E
	adds r1, #0x04
	mov r0, r8
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r3, r10
	lsls r1, r3, #0x01
	ldr r0, [sp, #0x010]
	adds r0, #0x28
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	add r2, r9
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0813D020
	ldr r0, _0813D018 @ =0x0813915D
	ldr r1, [sp, #0x00C]
	str r0, [r1, #0x00]
	movs r0, #0xD1
	lsls r0, r0, #0x02
	add r0, r8
	ldr r0, [r0, #0x00]
	movs r3, #0xD6
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldr r1, _0813D01C @ =0x0813D0F1
	str r1, [r0, #0x00]
	b _0813D038
_0813D014: .4byte 0xFFFFF800
_0813D018: .4byte sub_813915C
_0813D01C: .4byte sub_813D0F0
_0813D020:
	movs r0, #0xA0
	lsls r0, r0, #0x01
	add r0, r9
	movs r1, #0xA2
	lsls r1, r1, #0x01
	add r1, r9
	ldr r2, [r1, #0x00]
	str r2, [r0, #0x00]
	ldr r0, [sp, #0x008]
	mov r1, r8
	bl _call_via_r2
_0813D038:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
