	.syntax unified
	.text

	thumb_func_start sub_813E504
sub_813E504:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r7, [r1, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r4, r5, r3
	ldr r3, [r4, #0x00]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r4, [r4, #0x00]
	ldr r0, _0813E5D8 @ =0x0813F6CD
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5DC @ =0x08142C89
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5E0 @ =0x0813E7CD
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5E4 @ =0x08142CF1
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5E8 @ =0x0813E975
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5EC @ =0x0813EBA9
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5F0 @ =0x0813F791
	cmp r4, r0
	beq _0813E610
	ldr r0, _0813E5F4 @ =0x08142C19
	cmp r4, r0
	beq _0813E610
	adds r0, r7, #0x0
	adds r0, #0x22
	ldrb r4, [r0, #0x00]
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x14]
	subs r3, r1, r0
	ldr r1, _0813E5F8 @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r0, #0xFF
	mov r12, r0
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0813E580
	adds r0, #0x3F
_0813E580:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r3, r0
	str r0, [r5, #0x18]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _0813E5AE
	adds r0, #0x0F
_0813E5AE:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	mov r1, r12
	ands r0, r1
	str r0, [r2, #0x00]
	ldrh r0, [r7, #0x24]
	ldrh r3, [r7, #0x26]
	lsls r1, r0, #0x0C
	ldr r2, [r6, #0x00]
	ldr r0, [r5, #0x14]
	subs r0, r2, r0
	cmp r0, r1
	ble _0813E5FC
	subs r0, r2, r3
	str r0, [r6, #0x00]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	cmp r0, r1
	bgt _0813E610
	b _0813E60C
_0813E5D8: .4byte sub_813F6CC
_0813E5DC: .4byte sub_8142C88
_0813E5E0: .4byte sub_813E7CC
_0813E5E4: .4byte sub_8142CF0
_0813E5E8: .4byte sub_813E974
_0813E5EC: .4byte sub_813EBA8
_0813E5F0: .4byte sub_813F790
_0813E5F4: .4byte sub_8142C18
_0813E5F8: .4byte word_8198504 @ =0x08198504
_0813E5FC:
	cmp r0, r1
	bge _0813E610
	adds r0, r2, r3
	str r0, [r6, #0x00]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	cmp r0, r1
	blt _0813E610
_0813E60C:
	adds r0, r4, r1
	str r0, [r6, #0x00]
_0813E610:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
