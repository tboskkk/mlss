	.syntax unified
	.text

	thumb_func_start sub_813E140
sub_813E140:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r7, r4, #0x0
	adds r7, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r6, [r0, #0x00]
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813E1C4
	add r2, sp, #0x010
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl sub_8142D10
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813E1B8
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x08]
	cmp r0, #0x00
	beq _0813E1AA
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x0A
	bl sub_8139BB0
	ldr r1, [sp, #0x010]
	ldr r2, _0813E1B0 @ =0x00007FFF
	mov r0, sp
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813E1B8
_0813E1AA:
	ldr r0, _0813E1B4 @ =0x0813E20D
	str r0, [r5, #0x00]
	b _0813E1F6
_0813E1B0: .4byte 0x00007FFF
_0813E1B4: .4byte sub_813E20C
_0813E1B8:
	ldrh r1, [r6, #0x1A]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	b _0813E1C8
_0813E1C4:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813E1C8:
	adds r0, r4, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813E1F6
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, _0813E204 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _0813E208 @ =0x0813E05D
	str r0, [r5, #0x0C]
_0813E1F6:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E204: .4byte sub_813B1E8
_0813E208: .4byte sub_813E05C
