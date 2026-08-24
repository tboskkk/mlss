	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r8, r1
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0813E784
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	bl sub_813F954
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813E780
	ldr r0, _0813E77C @ =0x0813E7CD
	str r0, [r6, #0x00]
	b _0813E7B6
_0813E77C: .4byte sub_813E7CC
_0813E780:
	ldrh r0, [r7, #0x1A]
	b _0813E786
_0813E784:
	subs r0, #0x01
_0813E786:
	strh r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0813E7B6
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x28]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
	ldr r0, _0813E7C4 @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _0813E7C8 @ =0x0813E619
	str r0, [r6, #0x0C]
_0813E7B6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813E7C4: .4byte sub_813B1E8
_0813E7C8: .4byte sub_813E618
