	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813B8A8
sub_813B8A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	ldr r6, _0813B910 @ =0x03001038
	ldr r5, _0813B914 @ =0x0819832C
	ldr r0, _0813B918 @ =0x08198220
	subs r5, r5, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	ldr r4, _0813B91C @ =0x00000272
	mov r1, r8
	adds r0, r1, r4
	ldrh r0, [r0, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, [r6, #0x00]
	adds r2, r2, r5
	add r4, r9
	ldrh r0, [r4, #0x00]
	movs r1, #0x02
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0x00
	mov r0, r8
	ldr r3, [r0, #0x0C]
	adds r1, r3, r7
	mov r0, r9
	ldr r2, [r0, #0x0C]
	subs r0, r2, r4
	cmp r1, r0
	blt _0813B900
	subs r1, r3, r7
	adds r0, r2, r4
	cmp r1, r0
	bgt _0813B900
	movs r5, #0x01
_0813B900:
	adds r0, r5, #0x0
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0813B910: .4byte 0x03001038
_0813B914: .4byte 0x0819832C
_0813B918: .4byte 0x08198220
_0813B91C: .4byte 0x00000272
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
