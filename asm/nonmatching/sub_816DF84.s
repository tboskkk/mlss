	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	mov r8, r1
	movs r6, #0x00
	mov r4, sp
_0816DF96:
	movs r0, #0x00
	ldr r1, _0816DFC4 @ =0x0000EA60
	bl sub_8163EE4
	strh r0, [r4, #0x02]
	adds r0, r5, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	cmp r0, #0x07
	ble _0816DFB4
	movs r1, #0x02
	cmp r0, #0x0F
	bgt _0816DFB4
	movs r1, #0x01
_0816DFB4:
	cmp r1, #0x01
	beq _0816DFD8
	cmp r1, #0x01
	bgt _0816DFC8
	cmp r1, #0x00
	beq _0816DFCE
	b _0816DFE0
	.byte 0x00, 0x00
_0816DFC4: .4byte 0x0000EA60
_0816DFC8:
	cmp r1, #0x02
	beq _0816DFEC
	b _0816DFE0
_0816DFCE:
	ldr r0, _0816DFD4 @ =0x0821ABF2
	b _0816DFDA
	.byte 0x00, 0x00
_0816DFD4: .4byte 0x0821ABF2
_0816DFD8:
	ldr r0, _0816DFE8 @ =0x0821ABFA
_0816DFDA:
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	strh r0, [r4, #0x00]
_0816DFE0:
	adds r7, r5, #0x0
	adds r7, #0xE4
	b _0816E002
	.byte 0x00, 0x00
_0816DFE8: .4byte 0x0821ABFA
_0816DFEC:
	adds r2, r5, #0x0
	adds r2, #0xE4
	ldr r0, [r2, #0x00]
	adds r0, r0, r6
	movs r1, #0x07
	ands r0, r1
	ldr r1, _0816E110 @ =0x0821AC02
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	adds r7, r2, #0x0
_0816E002:
	adds r4, #0x04
	adds r6, #0x01
	cmp r6, #0x05
	ble _0816DF96
	movs r6, #0x00
	mov r0, r8
	lsls r0, r0, #0x01
	mov r12, r0
	adds r5, #0xEC
	mov r9, r5
	mov r5, sp
_0816E018:
	adds r2, r6, #0x1
	cmp r2, #0x05
	bgt _0816E0C6
	adds r4, r5, #0x0
	lsls r0, r2, #0x02
	mov r1, sp
	adds r3, r0, r1
	movs r0, #0x06
	subs r1, r0, r2
	movs r0, #0x03
	ands r1, r0
	cmp r2, #0x06
	bge _0816E066
	cmp r1, #0x00
	beq _0816E07E
	cmp r1, #0x01
	ble _0816E066
	cmp r1, #0x02
	ble _0816E052
	ldrh r1, [r3, #0x02]
	ldrh r0, [r5, #0x02]
	cmp r0, r1
	bls _0816E04E
	ldr r1, [r5, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r5, #0x00]
	str r1, [r3, #0x00]
_0816E04E:
	adds r3, #0x04
	adds r2, #0x01
_0816E052:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x02]
	cmp r0, r1
	bls _0816E062
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	str r1, [r3, #0x00]
_0816E062:
	adds r3, #0x04
	adds r2, #0x01
_0816E066:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x02]
	cmp r0, r1
	bls _0816E076
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	str r1, [r3, #0x00]
_0816E076:
	adds r3, #0x04
	adds r2, #0x01
	cmp r2, #0x05
	bgt _0816E0C6
_0816E07E:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x02]
	cmp r0, r1
	bls _0816E08E
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x00]
	str r0, [r4, #0x00]
	str r1, [r3, #0x00]
_0816E08E:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x06]
	cmp r0, r1
	bls _0816E09E
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x04]
	str r0, [r4, #0x00]
	str r1, [r3, #0x04]
_0816E09E:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x0A]
	cmp r0, r1
	bls _0816E0AE
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x08]
	str r0, [r4, #0x00]
	str r1, [r3, #0x08]
_0816E0AE:
	ldrh r0, [r4, #0x02]
	ldrh r1, [r3, #0x0E]
	cmp r0, r1
	bls _0816E0BE
	ldr r1, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	str r0, [r4, #0x00]
	str r1, [r3, #0x0C]
_0816E0BE:
	adds r3, #0x10
	adds r2, #0x04
	cmp r2, #0x05
	ble _0816E07E
_0816E0C6:
	adds r5, #0x04
	adds r6, #0x01
	cmp r6, #0x04
	ble _0816E018
	add r3, sp, #0x010
	mov r1, r12
	add r1, r8
	lsls r1, r1, #0x01
	mov r4, sp
	add r1, r9
	adds r2, r1, #0x0
	ldrh r0, [r4, #0x00]
	strb r0, [r1, #0x00]
	add r4, sp, #0x004
	ldrh r0, [r4, #0x00]
	strb r0, [r1, #0x01]
	adds r4, #0x04
	ldrh r0, [r4, #0x00]
	strb r0, [r2, #0x02]
	adds r4, #0x04
	ldrh r0, [r4, #0x00]
	strb r0, [r2, #0x03]
	ldrh r0, [r3, #0x00]
	strb r0, [r2, #0x04]
	adds r4, #0x08
	ldrh r0, [r4, #0x00]
	strb r0, [r2, #0x05]
	ldr r0, [r7, #0x00]
	adds r0, #0x01
	str r0, [r7, #0x00]
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0816E110: .4byte 0x0821AC02
