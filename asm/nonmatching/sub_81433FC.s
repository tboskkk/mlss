	.syntax unified
	.text

	thumb_func_start sub_81433FC
sub_81433FC:
	push {r4, r5, r6, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081434D0
	mov r0, sp
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r1, [r0, #0x28]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldr r3, [r0, #0x00]
	add r0, sp, #0x004
	movs r6, #0x08
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x00]
	movs r6, #0x0A
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x06]
	movs r6, #0x0C
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x02]
	movs r6, #0x0E
	ldsh r2, [r3, r6]
	lsls r2, r2, #0x04
	adds r2, #0x08
	strh r2, [r0, #0x04]
	ldr r2, _081434D8 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081434D0
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8138944
	movs r0, #0x83
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r0, [r2, #0x00]
	ldr r1, _081434DC @ =0xFFFC7FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x08
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r1, _081434E0 @ =0x0000020D
	adds r2, r4, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x18]
	adds r0, #0x01
	str r0, [r4, #0x18]
	ldr r3, _081434E4 @ =0x0000020E
	adds r2, r4, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xEB
	lsls r6, r6, #0x01
	adds r2, r4, r6
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x02
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xCC
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r2, _081434E8 @ =0x0813939D
	str r2, [r0, #0x00]
	subs r3, #0x72
	adds r1, r4, r3
	ldr r0, _081434EC @ =0x0814432D
	str r0, [r1, #0x00]
	subs r6, #0x36
	adds r0, r4, r6
	ldr r1, _081434F0 @ =0x081443D1
	str r1, [r0, #0x00]
	adds r3, #0x08
	adds r0, r4, r3
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r2
_081434D0:
	add sp, #0x014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081434D8: .4byte 0x00007FFF
_081434DC: .4byte 0xFFFC7FFF
_081434E0: .4byte 0x0000020D
_081434E4: .4byte 0x0000020E
_081434E8: .4byte sub_813939C
_081434EC: .4byte sub_814432C
_081434F0: .4byte sub_81443D0
