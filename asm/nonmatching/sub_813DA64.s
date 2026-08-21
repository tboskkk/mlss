	.syntax unified
	.text

	thumb_func_start sub_813DA64
sub_813DA64:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x020
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r10, r0
	adds r0, r7, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	adds r1, r0, #0x0
	adds r0, r6, #0x0
	bl sub_813774C
	movs r1, #0x00
	mov r9, r1
	add r0, sp, #0x010
	mov r2, r9
	strh r2, [r0, #0x00]
	movs r3, #0xDC
	lsls r3, r3, #0x01
	adds r5, r6, r3
	movs r1, #0x00
	ldsh r0, [r5, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x0C]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0813DAAC
	adds r0, #0x03
_0813DAAC:
	asrs r3, r0, #0x02
	movs r2, #0xDD
	lsls r2, r2, #0x01
	adds r4, r6, r2
	movs r1, #0x00
	ldsh r0, [r4, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x10]
	subs r0, r0, r1
	cmp r0, #0x00
	bge _0813DAC4
	adds r0, #0x03
_0813DAC4:
	asrs r1, r0, #0x02
	ldr r2, _0813DC00 @ =0x03001038
	adds r0, r3, #0x0
	muls r0, r3
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0xE6
	lsls r2, r2, #0x01
	adds r1, r6, r2
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	movs r3, #0xE8
	lsls r3, r3, #0x01
	adds r0, r6, r3
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	subs r2, #0xA4
	adds r0, r6, r2
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	adds r3, #0x02
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	movs r0, #0x00
	ldsh r1, [r5, r0]
	lsls r1, r1, #0x08
	str r1, [r6, #0x0C]
	movs r3, #0x00
	ldsh r2, [r4, r3]
	lsls r2, r2, #0x08
	str r2, [r6, #0x10]
	movs r0, #0x01
	negs r0, r0
	str r0, [r6, #0x14]
	mov r0, r9
	str r0, [r6, #0x18]
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	add r3, sp, #0x014
	add r4, sp, #0x018
	str r4, [sp, #0x000]
	add r4, sp, #0x01C
	str r4, [sp, #0x004]
	add r5, sp, #0x008
	movs r4, #0x00
	strb r4, [r5, #0x00]
	add r4, sp, #0x00C
	movs r5, #0x01
	strb r5, [r4, #0x00]
	bl sub_803FBA4
	ldr r1, [sp, #0x014]
	str r1, [r6, #0x14]
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	add r0, sp, #0x010
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_813A068
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813DC10
	movs r1, #0xCE
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r1, [r0, #0x00]
	adds r1, #0x68
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813DC10
	add r0, sp, #0x010
	ldrb r0, [r0, #0x00]
	eors r0, r5
	ands r0, r5
	cmp r0, #0x00
	beq _0813DC10
	ldr r2, [r6, #0x0C]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813DC10
	adds r0, r6, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	bl sub_8047154
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_804761C
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_8044630
	ldr r2, _0813DC04 @ =0x00000217
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	orrs r0, r5
	strb r0, [r1, #0x00]
	ldr r3, _0813DC08 @ =0x0000020E
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0813DC0C @ =0x0813DC55
	mov r1, r8
	str r0, [r1, #0x00]
	b _0813DC42
	.byte 0x00, 0x00
_0813DC00: .4byte 0x03001038
_0813DC04: .4byte 0x00000217
_0813DC08: .4byte 0x0000020E
_0813DC0C: .4byte sub_813DC54
_0813DC10:
	movs r0, #0xBD
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0813DC28
	ldr r0, _0813DC24 @ =0x0813B1E9
	mov r2, r8
	str r0, [r2, #0x00]
	b _0813DC42
_0813DC24: .4byte sub_813B1E8
_0813DC28:
	mov r3, r8
	ldr r0, [r3, #0x04]
	str r0, [r3, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r10
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x03
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
_0813DC42:
	add sp, #0x020
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
