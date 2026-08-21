	.syntax unified
	.text

	thumb_func_start sub_80501EC
sub_80501EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r0, #0x83
	lsls r0, r0, #0x02
	mov r9, r0
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r3, #0x02
	negs r3, r3
	mov r8, r3
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xCF
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r7, #0xA5
	lsls r7, r7, #0x02
	adds r0, r4, r7
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	movs r5, #0x10
	orrs r0, r5
	strb r0, [r1, #0x12]
	movs r6, #0xCE
	lsls r6, r6, #0x02
	adds r0, r4, r6
	ldr r1, [r0, #0x00]
	adds r1, #0x80
	movs r2, #0x00
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r2, [r1, #0x04]
	movs r1, #0x02
	bl _call_via_r2
	movs r0, #0xD1
	lsls r0, r0, #0x02
	adds r3, r4, r0
	ldr r2, [r3, #0x00]
	cmp r2, #0x00
	beq _0805028E
	ldr r1, _080502C0 @ =0x0000020F
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0805028E
	add r2, r9
	ldrb r1, [r2, #0x00]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r3, #0x00]
	adds r0, r0, r7
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x12]
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldr r0, [r3, #0x00]
	adds r1, r0, r6
	ldr r1, [r1, #0x00]
	adds r1, #0x80
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r2, [r1, #0x04]
	movs r1, #0x02
	bl _call_via_r2
_0805028E:
	ldr r0, _080502C4 @ =0x03000FC0
	ldr r0, [r0, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r0, r0, r1
	movs r2, #0x8B
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	lsls r2, r2, #0x0A
	lsrs r2, r2, #0x14
	movs r3, #0x96
	lsls r3, r3, #0x04
	adds r2, r2, r3
	movs r1, #0x00
	movs r3, #0x01
	bl sub_80E9958
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080502C0: .4byte 0x0000020F
_080502C4: .4byte 0x03000FC0
