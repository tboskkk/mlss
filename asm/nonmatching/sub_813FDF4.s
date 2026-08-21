	.syntax unified
	.text

	thumb_func_start sub_813FDF4
sub_813FDF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x024
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r5, r0
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _0813FE14
	ldr r0, _0813FE4C @ =0x00000FFF
	adds r1, r1, r0
_0813FE14:
	asrs r1, r1, #0x0C
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _0813FE20
	ldr r0, _0813FE4C @ =0x00000FFF
	adds r2, r2, r0
_0813FE20:
	asrs r2, r2, #0x0C
	add r3, sp, #0x018
	add r0, sp, #0x01C
	str r0, [sp, #0x000]
	add r0, sp, #0x020
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	bl sub_80457E8
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0813FE50
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r2, r5, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0813FEE2
_0813FE4C: .4byte 0x00000FFF
_0813FE50:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813FE78
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _0813FE84
_0813FE78:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0813FE84:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r0, [r0, #0x28]
	mov r8, r0
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
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	mov r2, r8
	bl sub_813AA5C
	ldr r0, _0813FEF0 @ =0x0813FEF5
	mov r1, r9
	str r0, [r1, #0x00]
_0813FEE2:
	add sp, #0x024
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813FEF0: .4byte sub_813FEF4
