	.syntax unified
	.text

	thumb_func_start sub_8140FAC
sub_8140FAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r7, [r0, #0x00]
	add r4, sp, #0x014
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08140FEA
	ldrb r0, [r4, #0x00]
	b _08140FF6
_08140FEA:
	movs r3, #0x82
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08140FF6:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r5, [r0, #0x28]
	movs r0, #0x00
	strb r0, [r4, #0x00]
	ldrb r0, [r7, #0x01]
	cmp r0, #0x00
	beq _08141038
_08141006:
	ldrb r3, [r4, #0x00]
	lsls r3, r3, #0x03
	adds r3, #0x02
	add r0, sp, #0x004
	adds r1, r6, #0x0
	movs r2, #0x22
	bl sub_8139BB0
	add r0, sp, #0x004
	adds r1, r5, #0x0
	ldr r2, _08141058 @ =0x00007FFF
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081410BE
	ldrb r0, [r4, #0x00]
	adds r0, #0x01
	strb r0, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r7, #0x01]
	cmp r0, r1
	bcc _08141006
_08141038:
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldr r0, _0814105C @ =0x08140841
	cmp r1, r0
	bne _08141060
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x0E]
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r0, r6, r3
	b _08141074
_08141058: .4byte 0x00007FFF
_0814105C: .4byte sub_8140840
_08141060:
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r1, [r0, #0x06]
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r0, r6, r2
_08141074:
	strh r1, [r0, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814109A
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814109C
_0814109A:
	movs r0, #0xFF
_0814109C:
	movs r4, #0x00
	strb r0, [r6, #0x02]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r0, r6, r3
	movs r5, #0x00
	ldsh r3, [r0, r5]
	mov r0, sp
	strb r4, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	adds r0, r6, #0x0
	bl sub_813B650
_081410BE:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
