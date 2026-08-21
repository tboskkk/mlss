	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_814AADC
sub_814AADC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r12, r0
	ldr r2, _0814AB18 @ =0x000002DE
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x03
	bls _0814AB66
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0814AB1C
	ldr r0, [r4, #0x0C]
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r0, r2
	b _0814AB22
	.byte 0x00, 0x00
_0814AB18: .4byte 0x000002DE
_0814AB1C:
	ldr r0, [r4, #0x0C]
	ldr r1, _0814ABA0 @ =0xFFFFFC00
	adds r0, r0, r1
_0814AB22:
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x34]
	subs r1, r1, r0
	ldr r2, _0814ABA4 @ =0x00000242
	adds r0, r4, r2
	movs r2, #0x00
	strh r1, [r0, #0x00]
	ldr r1, _0814ABA8 @ =0x000002DE
	adds r0, r4, r1
	strh r2, [r0, #0x00]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	add r2, r12
	ldrh r1, [r2, #0x00]
	ldr r0, _0814ABAC @ =0x0000FFFE
	cmp r1, r0
	bhi _0814AB4A
	adds r0, r1, #0x1
	strh r0, [r2, #0x00]
_0814AB4A:
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r12
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x02
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x02
	movs r0, #0x05
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_0814AB66:
	movs r0, #0xBE
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	cmp r0, #0x1D
	bls _0814AB96
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814AB96
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x0D
	bl sub_814B4C8
_0814AB96:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814ABA0: .4byte 0xFFFFFC00
_0814ABA4: .4byte 0x00000242
_0814ABA8: .4byte 0x000002DE
_0814ABAC: .4byte 0x0000FFFE
	thumb_func_start sub_814ABB0
sub_814ABB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	mov r8, r0
	adds r4, r1, #0x0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _0814AC50
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r3, r4, r1
	ldr r0, [r4, #0x14]
	movs r2, #0xA0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r4, r1
	subs r1, #0xDC
	strh r1, [r0, #0x00]
	ldr r3, _0814AC3C @ =0x0000023E
	adds r0, r4, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r3, _0814AC40 @ =0x03001038
	ldr r0, _0814AC44 @ =0x0819832C
	ldr r2, _0814AC48 @ =0x08198220
	subs r0, r0, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r0
	asrs r0, r1, #0x01
	ldr r3, _0814AC4C @ =0xFFFC0000
	adds r0, r0, r3
	bl _call_via_r2
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r4, r2
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AC34
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AC34:
	movs r0, #0x01
	strh r0, [r5, #0x00]
	b _0814AD16
	.byte 0x00, 0x00
_0814AC3C: .4byte 0x0000023E
_0814AC40: .4byte 0x03001038
_0814AC44: .4byte 0x0819832C
_0814AC48: .4byte 0x08198220
_0814AC4C: .4byte 0xFFFC0000
_0814AC50:
	cmp r0, #0x01
	bne _0814AD16
	ldr r6, _0814ACFC @ =0x03001038
	ldr r1, _0814AD00 @ =0x0819832C
	ldr r0, _0814AD04 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB5
	lsls r3, r3, #0x02
	adds r0, r4, r3
	subs r3, #0x10
	adds r1, r4, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0814ACA2
	adds r0, r5, #0x0
	muls r0, r5
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r5
	bl _call_via_r2
	ldr r1, [r4, #0x18]
	adds r1, r1, r0
	str r1, [r4, #0x18]
_0814ACA2:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r4, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814AD16
	ldr r1, [r4, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x03
	cmp r1, r0
	bgt _0814AD16
	movs r0, #0x00
	str r0, [r4, #0x18]
	ldr r3, _0814AD08 @ =0x0000020F
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x05
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x0C]
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x000]
	mov r0, r8
	adds r1, r4, #0x0
	bl sub_8138E28
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814AD0C
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
	b _0814AD16
_0814ACFC: .4byte 0x03001038
_0814AD00: .4byte 0x0819832C
_0814AD04: .4byte 0x08198220
_0814AD08: .4byte 0x0000020F
_0814AD0C:
	mov r0, r8
	adds r1, r4, #0x0
	movs r2, #0x07
	bl sub_814B4C8
_0814AD16:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814AD24
sub_814AD24:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r10, r0
	adds r7, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r7, r1
	cmp r2, #0x00
	bne _0814AD98
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xE9
	lsls r6, r6, #0x01
	adds r1, r7, r6
	movs r0, #0x50
	strh r0, [r1, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r1, [r0, #0x30]
	adds r0, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AD94 @ =0x0814A911
	b _0814B020
_0814AD94: .4byte sub_814A910
_0814AD98:
	cmp r2, #0x01
	bne _0814ADB8
	movs r1, #0x84
	lsls r1, r1, #0x02
	adds r2, r7, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814ADB4 @ =0x0814A98D
	b _0814B020
_0814ADB4: .4byte sub_814A98C
_0814ADB8:
	cmp r2, #0x02
	bne _0814ADCC
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814ADC8 @ =0x0814A619
	b _0814B020
	.byte 0x00, 0x00
_0814ADC8: .4byte sub_814A618
_0814ADCC:
	cmp r2, #0x04
	beq _0814ADD2
	b _0814AF2C
_0814ADD2:
	movs r4, #0xB0
	lsls r4, r4, #0x03
	mov r9, r4
	movs r4, #0x80
	lsls r4, r4, #0x02
	add r4, r10
	ldr r0, [r4, #0x00]
	ldr r1, [r0, #0x0C]
	ldr r2, [r0, #0x10]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	ldr r1, [r4, #0x00]
	ldr r3, [r1, #0x0C]
	ldr r5, _0814AF00 @ =0x00000242
	adds r0, r1, r5
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x0C]
	subs r3, r3, r0
	adds r5, r7, r5
	strh r3, [r5, #0x00]
	ldr r3, [r1, #0x10]
	movs r4, #0x91
	lsls r4, r4, #0x02
	adds r0, r1, r4
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x01
	adds r0, r0, r2
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldr r0, [r7, #0x10]
	subs r3, r3, r0
	adds r4, r7, r4
	strh r3, [r4, #0x00]
	adds r0, r7, #0x0
	bl sub_813B178
	ldr r0, _0814AF04 @ =0x03001038
	mov r8, r0
	ldr r6, _0814AF08 @ =0x0819832C
	ldr r0, _0814AF0C @ =0x08198220
	subs r6, r6, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r6
	movs r3, #0x00
	ldsh r0, [r5, r3]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r5, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x20
	bl _call_via_r2
	strh r0, [r4, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r3, r7, r2
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r0, r0, r1
	movs r4, #0xA0
	lsls r4, r4, #0x06
	adds r0, r0, r4
	str r0, [r3, #0x00]
	movs r0, #0xB1
	lsls r0, r0, #0x02
	adds r2, r7, r0
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	str r1, [r2, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	adds r2, r2, r6
	ldr r0, [r3, #0x00]
	subs r0, r0, r1
	movs r1, #0x01
	bl _call_via_r2
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	str r0, [r1, #0x00]
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r9
	strh r4, [r0, #0x00]
	adds r2, #0x7E
	adds r0, r7, r2
	strh r4, [r0, #0x00]
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x01
	add r1, r9
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r6
	asrs r0, r1, #0x01
	ldr r4, _0814AF10 @ =0xFFE1C000
	adds r0, r0, r4
	bl _call_via_r2
	movs r6, #0x92
	lsls r6, r6, #0x02
	adds r1, r7, r6
	negs r0, r0
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0814AED0
	movs r0, #0x01
	str r0, [r1, #0x00]
_0814AED0:
	ldr r0, _0814AF14 @ =0x0000020F
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r10
	adds r1, r7, #0x0
	movs r2, #0x04
	bl sub_814B038
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	cmp r0, #0x13
	bls _0814AF1C
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AF18 @ =0x0814A6C5
	b _0814B020
_0814AF00: .4byte 0x00000242
_0814AF04: .4byte 0x03001038
_0814AF08: .4byte 0x0819832C
_0814AF0C: .4byte 0x08198220
_0814AF10: .4byte 0xFFE1C000
_0814AF14: .4byte 0x0000020F
_0814AF18: .4byte sub_814A6C4
_0814AF1C:
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF28 @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AF28: .4byte sub_814B530
_0814AF2C:
	cmp r2, #0x07
	bne _0814AF4C
	movs r4, #0x84
	lsls r4, r4, #0x02
	adds r2, r7, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AF48 @ =0x0814A815
	b _0814B020
_0814AF48: .4byte sub_814A814
_0814AF4C:
	cmp r2, #0x09
	bne _0814AF90
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x00]
	mov r9, r0
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r2, [r0, #0x00]
	mov r3, sp
	movs r0, #0x00
	strb r0, [r3, #0x00]
	adds r0, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r1, r7, r3
	ldr r0, _0814AF8C @ =0x0814B5D1
	b _0814B020
_0814AF8C: .4byte sub_814B5D0
_0814AF90:
	cmp r2, #0x0A
	bne _0814AFCC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x28]
	movs r4, #0xE9
	lsls r4, r4, #0x01
	adds r1, r7, r4
	strh r0, [r1, #0x00]
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r1, r7, r6
	ldr r0, _0814AFC4 @ =0x0813B1E9
	str r0, [r1, #0x00]
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814AFC8 @ =0x0814A911
	b _0814B020
	.byte 0x00, 0x00
_0814AFC4: .4byte sub_813B1E8
_0814AFC8: .4byte sub_814A910
_0814AFCC:
	cmp r2, #0x0B
	bne _0814AFE0
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldr r0, _0814AFDC @ =0x0814B531
	b _0814B020
	.byte 0x00, 0x00
_0814AFDC: .4byte sub_814B530
_0814AFE0:
	cmp r2, #0x0C
	bne _0814B004
	movs r3, #0x84
	lsls r3, r3, #0x02
	adds r2, r7, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r4, #0xD0
	lsls r4, r4, #0x01
	adds r1, r7, r4
	ldr r0, _0814B000 @ =0x0814AADD
	b _0814B020
	.byte 0x00, 0x00
_0814B000: .4byte sub_814AADC
_0814B004:
	cmp r0, #0x0D
	bne _0814B022
	movs r6, #0x84
	lsls r6, r6, #0x02
	adds r2, r7, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xD0
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldr r0, _0814B034 @ =0x0814ABB1
_0814B020:
	str r0, [r1, #0x00]
_0814B022:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B034: .4byte sub_814ABB0
	thumb_func_start sub_814B038
sub_814B038:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r4, r5, #0x0
	adds r4, #0x58
	cmp r2, #0x00
	bne _0814B092
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B436
_0814B092:
	cmp r2, #0x01
	bne _0814B0F4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldr r0, [r2, #0x00]
	adds r0, #0x20
	movs r1, #0x30
	strb r1, [r0, #0x00]
	ldr r2, [r2, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r2, [r0, #0x00]
	ldr r1, [r2, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r3, r1, r0
	ldr r1, [r2, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r3, #0x0
	orrs r0, r1
	cmp r0, #0x00
	bne _0814B0E2
	b _0814B352
_0814B0E2:
	adds r0, r3, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r0, r3
	b _0814B348
_0814B0F4:
	cmp r2, #0x02
	bne _0814B136
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x31
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r2, #0x00
	b _0814B3D8
_0814B136:
	cmp r2, #0x03
	bne _0814B19C
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r3, r5, r0
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B180
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B18A
_0814B180:
	ldr r0, [r3, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B18A:
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x04
	movs r2, #0x00
	b _0814B3D6
_0814B19C:
	cmp r2, #0x04
	bne _0814B20A
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	cmp r1, r0
	blt _0814B1F2
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	b _0814B1FC
_0814B1F2:
	ldr r0, [r4, #0x00]
	ldrb r1, [r0, #0x11]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x11]
_0814B1FC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B20A:
	cmp r2, #0x05
	bne _0814B210
	b _0814B436
_0814B210:
	cmp r2, #0x06
	bne _0814B246
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r4, r5, r3
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r2, #0x00
	b _0814B3D6
_0814B246:
	cmp r2, #0x07
	bne _0814B280
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r3, #0x85
	lsls r3, r3, #0x02
	adds r2, r5, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x08
	movs r2, #0x00
	b _0814B3D6
_0814B280:
	cmp r2, #0x08
	bne _0814B2BA
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x09
	movs r2, #0x00
	b _0814B3D6
_0814B2BA:
	cmp r2, #0x09
	bne _0814B35E
	movs r3, #0xEE
	lsls r3, r3, #0x01
	adds r0, r5, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B2EE
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0814B2F0
_0814B2EE:
	movs r0, #0xFF
_0814B2F0:
	strb r0, [r5, #0x02]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
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
	movs r1, #0xC2
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	movs r3, #0xC4
	lsls r3, r3, #0x01
	adds r0, r4, r3
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B352
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
_0814B348:
	asrs r0, r0, #0x0D
	movs r1, #0x07
	ands r0, r1
	asrs r1, r0, #0x01
	b _0814B354
_0814B352:
	movs r1, #0x00
_0814B354:
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	b _0814B436
_0814B35E:
	cmp r2, #0x0A
	bne _0814B3E4
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _0814B3BC @ =0x00000242
	adds r3, r5, r1
	movs r0, #0x91
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0814B3C0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0814B3C4
	.byte 0x00, 0x00
_0814B3BC: .4byte 0x00000242
_0814B3C0:
	movs r3, #0x01
	negs r3, r3
_0814B3C4:
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r5, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r3, #0x0
_0814B3D6:
	movs r3, #0x00
_0814B3D8:
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	b _0814B436
_0814B3E4:
	cmp r2, #0x0B
	beq _0814B436
	cmp r2, #0x0C
	beq _0814B436
	cmp r2, #0x0D
	bne _0814B436
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	adds r0, #0x20
	movs r3, #0x00
	movs r1, #0x11
	strb r1, [r0, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x00]
	str r3, [sp, #0x000]
	movs r1, #0x05
	movs r2, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
_0814B436:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B440
sub_814B440:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	cmp r2, #0x00
	bne _0814B456
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x50
	b _0814B4C0
_0814B456:
	cmp r2, #0x01
	bne _0814B464
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x41
	b _0814B4C0
_0814B464:
	cmp r2, #0x02
	bne _0814B472
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B472:
	cmp r2, #0x03
	beq _0814B4C2
	cmp r2, #0x04
	bne _0814B48A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B4C2
_0814B48A:
	cmp r2, #0x05
	beq _0814B4C2
	cmp r2, #0x06
	beq _0814B4C2
	cmp r2, #0x07
	bne _0814B4A0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B4A0:
	cmp r0, #0x08
	beq _0814B4C2
	cmp r0, #0x09
	beq _0814B4C2
	cmp r0, #0x0A
	beq _0814B4C2
	cmp r0, #0x0B
	beq _0814B4C2
	cmp r0, #0x0C
	beq _0814B4C2
	cmp r0, #0x0D
	bne _0814B4C2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
_0814B4C0:
	strh r0, [r1, #0x00]
_0814B4C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4C8
sub_814B4C8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	lsls r5, r2, #0x18
	lsrs r5, r5, #0x18
	adds r2, r5, #0x0
	bl sub_814B440
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814AD24
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_814B038
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_814B4F4
sub_814B4F4:
	push {r4, r5, lr}
	add sp, #-0x014
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	add r0, sp, #0x004
	movs r2, #0x24
	movs r3, #0x0A
	bl sub_8139CAC
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	movs r0, #0x30
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x30
	bl sub_80FBB50
	adds r1, r0, #0x0
	lsls r0, r1, #0x18
	cmp r0, #0x00
	beq _0814B526
	movs r1, #0x01
_0814B526:
	adds r0, r1, #0x0
	add sp, #0x014
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_814B530
sub_814B530:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0x0
	ldr r6, _0814B5C4 @ =0x03001038
	ldr r1, _0814B5C8 @ =0x0819832C
	ldr r0, _0814B5CC @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0814B58A
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0814B58A:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	subs r0, r0, r1
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0814B5B8
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _0814B5B8
	movs r0, #0x00
	str r0, [r5, #0x18]
	mov r0, r8
	adds r1, r5, #0x0
	movs r2, #0x0C
	bl sub_814B4C8
_0814B5B8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B5C4: .4byte 0x03001038
_0814B5C8: .4byte 0x0819832C
_0814B5CC: .4byte 0x08198220
	thumb_func_start sub_814B5D0
sub_814B5D0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814B5EC
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_814B4C8
_0814B5EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x1D, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x10, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x28, 0x1C, 0xEE, 0xF7, 0x4A, 0xFA, 0x19, 0x48, 0x2A, 0x18, 0x11, 0x78
	.byte 0x05, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0xEE, 0x22, 0x52, 0x00, 0xA9, 0x18, 0xE8, 0x68
	.byte 0x08, 0x60, 0xF0, 0x20, 0x40, 0x00, 0x29, 0x18, 0x28, 0x69, 0x08, 0x60, 0x08, 0x32, 0xA9, 0x18
	.byte 0x68, 0x69, 0x08, 0x60, 0xF4, 0x20, 0x40, 0x00, 0x29, 0x18, 0xA8, 0x69, 0x08, 0x60, 0x20, 0x1C
	.byte 0x29, 0x1C, 0x00, 0x22, 0xFF, 0xF7, 0x3F, 0xFF, 0xCC, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x09, 0x48
	.byte 0x08, 0x60, 0x4E, 0xF0, 0x6C, 0xFC, 0x01, 0x1C, 0x04, 0x20, 0x92, 0xF0, 0x8E, 0xF8, 0xE8, 0x22
	.byte 0x52, 0x00, 0xA9, 0x18, 0x08, 0x80, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x3E, 0x03
	.byte 0x00, 0x00, 0x0D, 0x02, 0x00, 0x00, 0x81, 0xB3, 0x13, 0x08
	thumb_func_start sub_814B67C
sub_814B67C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r1
	adds r0, #0x50
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r4, r2
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_804761C
	ldr r0, _0814B6C4 @ =0x0000020E
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
	ldr r0, _0814B6C8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, [r5, #0x04]
	str r0, [r5, #0x0C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814B6C4: .4byte 0x0000020E
_0814B6C8: .4byte sub_813B1E8
	thumb_func_start sub_814B6CC
sub_814B6CC:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	movs r0, #0xF2
	lsls r0, r0, #0x01
	add r0, r12
	movs r1, #0xF4
	lsls r1, r1, #0x01
	add r1, r12
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r1, #0xEA
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _0814B72C @ =0x0814A429
	str r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B72C: .4byte sub_814A428
	thumb_func_start sub_814B730
sub_814B730:
	push {r4, r5, lr}
	mov r12, r1
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r12
	ldr r4, [r0, #0x00]
	movs r3, #0xB1
	lsls r3, r3, #0x02
	add r3, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	movs r3, #0xB5
	lsls r3, r3, #0x02
	add r3, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	ldr r5, _0814B798 @ =0xFFFFD000
	adds r0, r0, r5
	str r0, [r3, #0x00]
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r4
	adds r0, #0x44
	ldrh r1, [r0, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	add r0, r12
	strh r1, [r0, #0x00]
	movs r3, #0x85
	lsls r3, r3, #0x02
	add r3, r12
	ldrb r1, [r3, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _0814B79C @ =0x0814B7A5
	str r0, [r2, #0x00]
	ldr r0, _0814B7A0 @ =0x0814A185
	str r0, [r2, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_0814B798: .4byte 0xFFFFD000
_0814B79C: .4byte sub_814B7A4
_0814B7A0: .4byte sub_814A184
