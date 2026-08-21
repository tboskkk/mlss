	.syntax unified
	.text

	thumb_func_start sub_813F6CC
sub_813F6CC:
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0xD8
	lsls r0, r0, #0x01
	adds r4, r7, r0
	ldr r5, [r4, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0813F780 @ =0x083A05EC
	ldr r1, _0813F784 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r7, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r1, #0x04
	adds r0, r7, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _0813F788 @ =0x0000033E
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r5
	adds r0, #0x44
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	adds r0, #0x48
	ldrb r0, [r0, #0x00]
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	adds r0, #0x4C
	ldrh r1, [r0, #0x00]
	movs r2, #0xB7
	lsls r2, r2, #0x02
	adds r0, r7, r2
	strh r1, [r0, #0x00]
	movs r0, #0x92
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r4, #0x00]
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _0813F78C @ =0x08142C89
	str r0, [r6, #0x00]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0813F780: .4byte 0x083A05EC
_0813F784: .4byte 0x00000216
_0813F788: .4byte 0x0000033E
_0813F78C: .4byte sub_8142C88
