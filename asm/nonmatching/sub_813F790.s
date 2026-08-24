	push {r4, r5, r6, lr}
	add sp, #-0x014
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r1, [r5, #0x0C]
	cmp r1, #0x00
	bge _0813F7A2
	ldr r0, _0813F84C @ =0x00000FFF
	adds r1, r1, r0
_0813F7A2:
	asrs r1, r1, #0x0C
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _0813F7AE
	ldr r4, _0813F84C @ =0x00000FFF
	adds r2, r2, r4
_0813F7AE:
	asrs r2, r2, #0x0C
	add r0, sp, #0x00C
	str r0, [sp, #0x000]
	add r0, sp, #0x010
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	add r3, sp, #0x008
	bl sub_80457E8
	ldr r1, [sp, #0x010]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0813F7CC
	str r1, [sp, #0x008]
_0813F7CC:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	adds r0, #0x58
	ldrh r0, [r0, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r2, [r5, #0x10]
	ldr r3, [sp, #0x008]
	movs r4, #0xC0
	lsls r4, r4, #0x06
	adds r3, r3, r4
	str r0, [sp, #0x000]
	add r4, sp, #0x004
	movs r0, #0x00
	strb r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_813A44C
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
	ldr r2, _0813F850 @ =0x083A05EC
	ldr r1, _0813F854 @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _0813F858 @ =0x08142C19
	str r0, [r6, #0x00]
	add sp, #0x014
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813F84C: .4byte 0x00000FFF
_0813F850: .4byte 0x083A05EC
_0813F854: .4byte 0x00000216
_0813F858: .4byte sub_8142C18
