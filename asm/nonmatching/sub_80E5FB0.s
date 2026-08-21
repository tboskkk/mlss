	.syntax unified
	.text

	thumb_func_start sub_80E5FB0
sub_80E5FB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x034
	mov r10, r0
	ldr r0, [sp, #0x054]
	ldr r4, [sp, #0x058]
	ldr r5, [sp, #0x05C]
	ldr r6, [sp, #0x060]
	ldr r7, [sp, #0x064]
	mov r8, r7
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x018]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x01C]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x020]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x024]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x028]
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, r9
	cmp r1, #0x00
	bne _080E6010
	mov r0, r10
	ldr r1, [sp, #0x068]
	movs r2, #0x00
	bl sub_80E92AC
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
_080E6010:
	movs r0, #0x07
	ldr r2, [sp, #0x028]
	ands r0, r2
	cmp r0, #0x02
	bne _080E6042
	cmp r7, #0x03
	bhi _080E6020
	movs r7, #0x04
_080E6020:
	mov r0, r9
	adds r0, #0x02
	movs r1, #0x03
	bl __divsi3
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	adds r0, r7, #0x1
	movs r7, #0x02
	negs r7, r7
	adds r1, r7, #0x0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080E6042:
	mov r0, r9
	adds r0, #0x04
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	adds r0, r7, #0x2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x4C
	ldr r2, [sp, #0x018]
	adds r1, r2, #0x0
	muls r1, r0
	mov r2, r10
	ldr r0, [r2, #0x04]
	adds r6, r0, r1
	mov r0, sp
	ldrh r0, [r0, #0x1C]
	strh r0, [r6, #0x34]
	mov r1, sp
	ldrh r1, [r1, #0x20]
	strh r1, [r6, #0x36]
	adds r0, r6, #0x0
	adds r0, #0x38
	mov r2, r9
	strb r2, [r0, #0x00]
	adds r0, #0x01
	strb r7, [r0, #0x00]
	mov r0, sp
	ldrh r0, [r0, #0x28]
	strh r0, [r6, #0x3C]
	adds r3, r6, #0x0
	adds r3, #0x41
	lsls r2, r4, #0x05
	ldrb r1, [r3, #0x00]
	movs r0, #0x1F
	ands r0, r1
	orrs r0, r2
	movs r1, #0x19
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r4, r6, #0x0
	adds r4, #0x42
	ldrb r1, [r4, #0x00]
	movs r3, #0x02
	negs r3, r3
	adds r0, r3, #0x0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	movs r1, #0x05
	negs r1, r1
	ands r0, r1
	movs r2, #0x79
	negs r2, r2
	ands r0, r2
	strb r0, [r4, #0x00]
	movs r2, #0x00
	str r2, [r6, #0x28]
	strh r2, [r6, #0x3A]
	adds r2, r6, #0x0
	adds r2, #0x43
	ldrb r0, [r2, #0x00]
	ands r1, r0
	movs r0, #0x03
	negs r0, r0
	ands r1, r0
	ands r1, r3
	strb r1, [r2, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r4, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x48]
	str r0, [r6, #0x44]
	mov r1, r9
	adds r1, #0x01
	str r1, [sp, #0x02C]
	adds r5, r7, #0x1
	adds r4, r1, #0x0
	muls r4, r5
	lsls r4, r4, #0x05
	mov r2, r10
	ldr r0, [r2, #0x00]
	adds r1, r4, #0x0
	bl sub_80E9414
	mov r2, r10
	ldr r1, [r2, #0x04]
	movs r2, #0xCA
	lsls r2, r2, #0x01
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r6, #0x2C]
	mov r8, r0
	ldr r0, _080E61D4 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	mov r1, r8
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r0, [sp, #0x01C]
	lsls r4, r0, #0x10
	lsrs r2, r4, #0x10
	ldr r1, [sp, #0x020]
	lsls r1, r1, #0x10
	str r1, [sp, #0x030]
	lsrs r3, r1, #0x10
	ldr r1, [sp, #0x02C]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r5, [sp, #0x004]
	mov r0, r10
	adds r1, r6, #0x0
	bl sub_80E8FB8
	str r7, [sp, #0x000]
	ldr r2, [sp, #0x024]
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x028]
	str r0, [sp, #0x008]
	mov r0, r10
	adds r1, r6, #0x0
	ldr r2, [sp, #0x018]
	mov r3, r9
	bl sub_80E84BC
	ldr r1, [sp, #0x068]
	adds r1, #0x02
	str r1, [sp, #0x068]
	asrs r2, r4, #0x10
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _080E615C
	adds r0, r2, #0x7
_080E615C:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x01C]
	ldr r2, [sp, #0x030]
	asrs r3, r2, #0x10
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080E6174
	adds r0, r3, #0x7
_080E6174:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	ldr r3, [sp, #0x01C]
	adds r3, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x18
	ldr r1, [sp, #0x01C]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x004]
	str r2, [sp, #0x008]
	movs r0, #0x06
	str r0, [sp, #0x00C]
	movs r0, #0x01
	str r0, [sp, #0x010]
	mov r1, r10
	ldr r0, [r1, #0x04]
	ldr r2, _080E61D8 @ =0x000001B7
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x05
	str r0, [sp, #0x014]
	adds r0, r6, #0x0
	mov r1, r8
	ldr r2, [sp, #0x02C]
	bl sub_8199D78
	ldr r1, [sp, #0x020]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0x0
	adds r2, #0x09
	subs r1, r7, #0x4
	cmp r1, #0x05
	bgt _080E61E0
	ldr r0, _080E61DC @ =0x083B9530
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	adds r0, r2, r0
	b _080E61E2
_080E61D4: .4byte 0x03001034
_080E61D8: .4byte 0x000001B7
_080E61DC: .4byte 0x083B9530
_080E61E0:
	adds r0, #0x0C
_080E61E2:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r0, r6, #0x0
	movs r1, #0x00
	ldr r3, [sp, #0x068]
	bl sub_8199D5C
	mov r2, r10
	ldr r0, [r2, #0x04]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r2, r0, r1
	subs r1, #0x02
	adds r3, r0, r1
	movs r0, #0x01
	ldr r1, [sp, #0x018]
	lsls r0, r1
	ldrb r1, [r3, #0x00]
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r1, #0xFF
	ands r0, r1
	ldrb r1, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x07
	ldr r2, [sp, #0x028]
	ands r0, r2
	cmp r0, #0x02
	beq _080E6260
	cmp r0, #0x02
	bgt _080E6228
	cmp r0, #0x01
	beq _080E622E
	b _080E62CA
_080E6228:
	cmp r0, #0x03
	beq _080E6292
	b _080E62CA
_080E622E:
	ldr r0, [sp, #0x01C]
	lsls r5, r0, #0x10
	asrs r5, r5, #0x10
	ldr r1, [sp, #0x020]
	lsls r4, r1, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	str r2, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E7B48
	mov r0, r9
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E91B4
	b _080E62C2
_080E6260:
	ldr r1, [sp, #0x01C]
	lsls r5, r1, #0x10
	asrs r5, r5, #0x10
	ldr r2, [sp, #0x020]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	mov r0, r9
	str r0, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E7E0C
	mov r1, r9
	str r1, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E91B4
	b _080E62C2
_080E6292:
	ldr r2, [sp, #0x01C]
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	ldr r0, [sp, #0x020]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	mov r1, r9
	str r1, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E8228
	mov r2, r9
	str r2, [sp, #0x000]
	str r7, [sp, #0x004]
	mov r0, r10
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r4, #0x0
	bl sub_80E90CC
_080E62C2:
	adds r4, r7, #0x1
	mov r5, r9
	adds r5, #0x01
	b _080E62E4
_080E62CA:
	ldr r1, _080E631C @ =0x03001034
	mov r5, r9
	adds r5, #0x01
	adds r4, r7, #0x1
	lsls r0, r4, #0x02
	adds r2, r5, #0x0
	muls r2, r0
	lsls r2, r2, #0x03
	ldr r3, [r1, #0x00]
	movs r0, #0x00
	mov r1, r8
	bl _call_via_r3
_080E62E4:
	mov r7, r10
	ldr r6, [r7, #0x04]
	ldr r1, _080E6320 @ =0x000001B3
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	ldr r2, [sp, #0x018]
	asrs r0, r2
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080E6324
	movs r7, #0xCA
	lsls r7, r7, #0x01
	adds r0, r6, r7
	ldr r1, [r0, #0x00]
	mov r0, r8
	subs r1, r0, r1
	lsls r0, r4, #0x02
	adds r2, r5, #0x0
	muls r2, r0
	lsls r2, r2, #0x03
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r8
	movs r3, #0x20
	bl sub_8018218
	b _080E6348
_080E631C: .4byte 0x03001034
_080E6320: .4byte 0x000001B3
_080E6324:
	ldr r2, _080E6358 @ =0x040000D4
	mov r1, r8
	str r1, [r2, #0x00]
	movs r7, #0xCA
	lsls r7, r7, #0x01
	adds r0, r6, r7
	ldr r0, [r0, #0x00]
	subs r0, r1, r0
	str r0, [r2, #0x04]
	lsls r0, r4, #0x02
	muls r0, r5
	lsls r0, r0, #0x03
	lsrs r0, r0, #0x02
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
_080E6348:
	add sp, #0x034
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E6358: .4byte 0x040000D4
