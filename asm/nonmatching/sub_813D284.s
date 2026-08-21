	.syntax unified
	.text

	thumb_func_start sub_813D284
sub_813D284:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldr r3, [r6, #0x00]
	adds r0, r4, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813D394
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D398
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r7, [r0, #0x28]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	add r4, sp, #0x008
	movs r2, #0x08
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x00]
	movs r2, #0x0A
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x06]
	movs r2, #0x0C
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x02]
	movs r2, #0x0E
	ldsh r0, [r1, r2]
	lsls r0, r0, #0x04
	adds r0, #0x08
	strh r0, [r4, #0x04]
	ldr r2, _0813D384 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D398
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x18
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x00]
	movs r0, #0x19
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x04]
	movs r0, #0x1A
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x08]
	movs r0, #0x1B
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x02]
	movs r0, #0x1C
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x06]
	movs r0, #0x1D
	ldsb r0, [r1, r0]
	lsls r0, r0, #0x04
	strh r0, [r4, #0x0A]
	movs r2, #0x08
	ldsh r3, [r4, r2]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r7, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813D398
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xCC
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, _0813D388 @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldr r0, _0813D38C @ =0x0813D3A1
	str r0, [r1, #0x00]
	ldr r0, _0813D390 @ =0x0813CE8D
	str r0, [r6, #0x00]
	b _0813D398
_0813D384: .4byte 0x00007FFF
_0813D388: .4byte sub_813939C
_0813D38C: .4byte sub_813D3A0
_0813D390: .4byte sub_813CE8C
_0813D394:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813D398:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
