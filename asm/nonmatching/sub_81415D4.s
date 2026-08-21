	.syntax unified
	.text

	thumb_func_start sub_81415D4
sub_81415D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r6, r4, #0x0
	adds r6, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08141668
	add r2, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8142704
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141654
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814164C @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141654
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x14]
	ldr r2, [r4, #0x14]
	cmp r0, r2
	beq _08141644
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r1, r0
	beq _08141654
	ldr r0, [r0, #0x14]
	cmp r0, r2
	bne _08141654
_08141644:
	ldr r0, _08141650 @ =0x081416B1
	str r0, [r5, #0x00]
	b _0814169A
	.byte 0x00, 0x00
_0814164C: .4byte 0x00007FFF
_08141650: .4byte sub_81416B0
_08141654:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x1A]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814166C
_08141668:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0814166C:
	adds r0, r4, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814169A
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x28]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	ldr r0, _081416A8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _081416AC @ =0x08141509
	str r0, [r5, #0x0C]
_0814169A:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081416A8: .4byte sub_813B1E8
_081416AC: .4byte sub_8141508
