	.syntax unified
	.text

	thumb_func_start sub_813CDB8
sub_813CDB8:
	push {r4, r5, r6, lr}
	add sp, #-0x018
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r6, r4, r0
	ldr r3, [r6, #0x00]
	adds r0, r5, #0x0
	adds r2, r6, #0x0
	bl _call_via_r3
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0813CE80
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CE84
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r3, [r0, #0x00]
	add r0, sp, #0x008
	movs r1, #0x18
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x00]
	movs r1, #0x19
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x04]
	movs r1, #0x1A
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x08]
	movs r1, #0x1B
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x02]
	movs r1, #0x1C
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x06]
	movs r1, #0x1D
	ldsb r1, [r3, r1]
	lsls r1, r1, #0x04
	strh r1, [r0, #0x0A]
	movs r5, #0x08
	ldsh r3, [r0, r5]
	movs r5, #0x0A
	ldsh r1, [r0, r5]
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0813CE84
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r1, r4, r5
	ldr r0, _0813CE74 @ =0x0813939D
	str r0, [r1, #0x00]
	movs r0, #0xCE
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldr r0, _0813CE78 @ =0x0813D049
	str r0, [r1, #0x00]
	ldr r0, _0813CE7C @ =0x0813CE8D
	str r0, [r6, #0x00]
	b _0813CE84
	.byte 0x00, 0x00
_0813CE74: .4byte sub_813939C
_0813CE78: .4byte sub_813D048
_0813CE7C: .4byte sub_813CE8C
_0813CE80:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0813CE84:
	add sp, #0x018
	pop {r4, r5, r6}
	pop {r0}
	bx r0
