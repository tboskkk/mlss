	.syntax unified
	.text

	thumb_func_start sub_813B920
sub_813B920:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x01C
	adds r6, r3, #0x0
	ldr r4, [sp, #0x034]
	ldr r7, [sp, #0x038]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r3, #0xC1
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	add r3, sp, #0x014
	str r3, [sp, #0x000]
	add r3, sp, #0x018
	str r3, [sp, #0x004]
	add r5, sp, #0x008
	movs r3, #0x01
	strb r3, [r5, #0x00]
	negs r4, r4
	lsrs r4, r4, #0x1F
	add r3, sp, #0x00C
	strb r4, [r3, #0x00]
	add r3, sp, #0x010
	bl sub_803FBA4
	adds r2, r0, #0x0
	cmp r7, #0x00
	beq _0813B96E
	ldrb r0, [r2, #0x00]
	movs r1, #0x78
	ands r1, r0
	cmp r1, #0x08
	beq _0813B966
	cmp r1, #0x30
	bne _0813B96E
_0813B966:
	ldrh r0, [r7, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r7, #0x00]
_0813B96E:
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0813B9A8
	ldr r1, [sp, #0x014]
	cmp r6, r1
	bgt _0813B990
	ldr r0, [sp, #0x010]
	cmp r6, r0
	blt _0813B9A8
	ldr r0, [sp, #0x030]
	adds r0, r6, r0
	cmp r0, r1
	bge _0813B9A8
_0813B98C:
	movs r0, #0x00
	b _0813B9AA
_0813B990:
	ldr r0, [sp, #0x018]
	cmp r6, r0
	blt _0813B99A
	cmp r1, #0x00
	bge _0813B98C
_0813B99A:
	ldr r0, [sp, #0x010]
	cmp r6, r0
	blt _0813B9A8
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _0813B98C
_0813B9A8:
	movs r0, #0x01
_0813B9AA:
	add sp, #0x01C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
