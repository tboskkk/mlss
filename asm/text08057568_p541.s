	.include "asm/macros.inc"

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
	thumb_func_start sub_80E635C
sub_80E635C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x038
	mov r8, r0
	ldr r3, [r0, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E637E
	movs r0, #0x00
	bl _080E6E52
_080E637E:
	movs r2, #0xDB
	lsls r2, r2, #0x01
	mov r10, r2
	add r3, r10
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1C
	lsrs r1, r1, #0x1D
	adds r1, #0x01
	movs r0, #0x07
	ands r1, r0
	lsls r1, r1, #0x01
	movs r0, #0x0F
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x04]
	mov r0, r10
	adds r4, r2, r0
	ldrb r3, [r4, #0x00]
	movs r1, #0x10
	mov r9, r1
	mov r0, r9
	ands r0, r3
	cmp r0, #0x00
	beq _080E63E8
	ldr r3, _080E63E4 @ =0x03000FB8
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x04]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x04]
	ldr r2, [r3, #0x00]
	ldrb r1, [r2, #0x04]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x04]
	mov r2, r8
	ldr r0, [r2, #0x04]
	movs r3, #0xDB
	lsls r3, r3, #0x01
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080E66A6
_080E63E4: .4byte 0x03000FB8
_080E63E8:
	movs r6, #0x40
	adds r0, r6, #0x0
	ands r0, r3
	cmp r0, #0x00
	bne _080E63F4
	b _080E6690
_080E63F4:
	ldr r0, _080E6428 @ =0x03000FB8
	ldr r7, [r0, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x31
	ldrb r3, [r5, #0x00]
	adds r4, r3, #0x0
	cmp r4, #0x01
	bls _080E64F4
	ldr r2, _080E642C @ =0x0300034C
	ldrh r1, [r2, #0x28]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080E6434
	ldrh r1, [r2, #0x2E]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080E64CA
	adds r1, r7, #0x0
	adds r1, #0x30
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080E6430
	subs r0, #0x01
	b _080E6486
_080E6428: .4byte 0x03000FB8
_080E642C: .4byte 0x0300034C
_080E6430:
	subs r0, r3, #0x1
	b _080E6486
_080E6434:
	movs r4, #0x20
	adds r0, r4, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x00
	beq _080E645E
	ldrh r1, [r2, #0x2E]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080E64CA
	adds r1, r7, #0x0
	adds r1, #0x30
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _080E645A
	subs r0, #0x01
	b _080E6486
_080E645A:
	subs r0, r3, #0x1
	b _080E6486
_080E645E:
	movs r3, #0x80
	adds r0, r3, #0x0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	beq _080E6498
	ldrh r1, [r2, #0x2E]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080E64CA
	adds r1, r7, #0x0
	adds r1, #0x30
	ldrb r2, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	cmp r2, r0
	bge _080E648A
	adds r0, r2, #0x1
_080E6486:
	strb r0, [r1, #0x00]
	b _080E648C
_080E648A:
	strb r6, [r1, #0x00]
_080E648C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4E
	bl play_sfx_80195B4
	b _080E64CA
_080E6498:
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _080E64CA
	ldrh r1, [r2, #0x2E]
	mov r0, r9
	ands r0, r1
	cmp r0, #0x00
	beq _080E64CA
	adds r1, r7, #0x0
	adds r1, #0x30
	ldrb r2, [r1, #0x00]
	ldrb r0, [r5, #0x00]
	subs r0, #0x01
	cmp r2, r0
	bge _080E64BE
	adds r0, r2, #0x1
	strb r0, [r1, #0x00]
	b _080E64C0
_080E64BE:
	strb r4, [r1, #0x00]
_080E64C0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4E
	bl play_sfx_80195B4
_080E64CA:
	ldr r3, _080E64F0 @ =0x03000FB8
	ldr r4, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x30
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x08
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x00]
	ldrb r1, [r2, #0x00]
	lsls r1, r1, #0x01
	adds r0, r4, #0x0
	adds r0, #0x18
	adds r0, r0, r1
	ldrh r0, [r0, #0x00]
	strh r0, [r7, #0x02]
	b _080E654C
_080E64F0: .4byte 0x03000FB8
_080E64F4:
	cmp r4, #0x00
	bne _080E654C
	ldr r1, _080E6598 @ =0x000001B5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x4C
	muls r0, r1
	adds r5, r2, r0
	adds r0, r5, #0x0
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	ldrh r2, [r5, #0x34]
	adds r0, r0, r2
	subs r0, #0x11
	strh r0, [r7, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x39
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x03
	ldrh r5, [r5, #0x36]
	adds r0, r0, r5
	subs r0, #0x14
	strh r0, [r7, #0x02]
	mov r3, r8
	ldr r2, [r3, #0x04]
	add r2, r10
	ldrb r3, [r2, #0x00]
	lsls r1, r3, #0x1F
	lsrs r1, r1, #0x1F
	adds r1, #0x01
	movs r0, #0x01
	ands r1, r0
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080E659C @ =0x03000FB8
	ldr r1, [r0, #0x00]
	adds r1, #0x31
	ldrb r0, [r1, #0x00]
	adds r0, #0x01
	strb r0, [r1, #0x00]
_080E654C:
	mov r1, r8
	ldr r0, [r1, #0x04]
	movs r2, #0xDB
	lsls r2, r2, #0x01
	mov r9, r2
	adds r6, r0, r2
	ldrb r2, [r6, #0x00]
	movs r3, #0x01
	mov r10, r3
	mov r5, r10
	ands r5, r2
	cmp r5, #0x00
	beq _080E65A4
	ldrb r0, [r7, #0x04]
	movs r1, #0x01
	orrs r0, r1
	movs r1, #0x39
	negs r1, r1
	ands r0, r1
	strb r0, [r7, #0x04]
	ldrh r1, [r7, #0x04]
	ldr r0, _080E65A0 @ =0xFFFFC03F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r7, #0x04]
	mov r1, r8
	ldr r0, [r1, #0x04]
	movs r3, #0xDB
	lsls r3, r3, #0x01
	adds r2, r0, r3
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _080E667E
	.byte 0x00, 0x00
_080E6598: .4byte 0x000001B5
_080E659C: .4byte 0x03000FB8
_080E65A0: .4byte 0xFFFFC03F
_080E65A4:
	ldr r0, _080E65F4 @ =0x03000FB8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x31
	ldrb r4, [r0, #0x00]
	cmp r4, #0x01
	bls _080E6654
	ldr r0, _080E65F8 @ =0x0300034C
	ldrh r1, [r3, #0x2A]
	ldrh r2, [r0, #0x2A]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080E65FC
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x60
	bl play_sfx_80195B4
	mov r2, r8
	ldr r1, [r2, #0x04]
	add r1, r9
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	mov r3, r8
	ldr r1, [r3, #0x04]
	add r1, r9
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, _080E65F4 @ =0x03000FB8
	ldr r0, [r1, #0x00]
	adds r0, #0x32
	mov r2, r10
	strb r2, [r0, #0x00]
	b _080E6678
_080E65F4: .4byte 0x03000FB8
_080E65F8: .4byte 0x0300034C
_080E65FC:
	adds r0, r3, #0x0
	adds r0, #0x32
	ldrb r0, [r0, #0x00]
	cmp r0, r4
	bcs _080E667E
	ldrh r0, [r3, #0x2C]
	ands r2, r0
	cmp r2, #0x00
	beq _080E667E
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x61
	bl play_sfx_80195B4
	mov r3, r8
	ldr r1, [r3, #0x04]
	add r1, r9
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	ldr r1, [r3, #0x04]
	add r1, r9
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, _080E6650 @ =0x03000FB8
	ldr r0, [r1, #0x00]
	adds r1, r0, #0x0
	adds r1, #0x32
	ldrb r1, [r1, #0x00]
	adds r0, #0x30
	strb r1, [r0, #0x00]
	ldr r2, _080E6650 @ =0x03000FB8
	ldr r0, [r2, #0x00]
	adds r0, #0x32
	mov r3, r10
	strb r3, [r0, #0x00]
	ldr r0, [r2, #0x00]
	b _080E667A
_080E6650: .4byte 0x03000FB8
_080E6654:
	ldr r0, _080E6688 @ =0x0300034C
	ldrh r1, [r3, #0x28]
	ldrh r0, [r0, #0x2A]
	ands r0, r1
	cmp r0, #0x00
	beq _080E667E
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r6, #0x00]
	mov r0, r8
	ldr r1, [r0, #0x04]
	add r1, r9
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r1, _080E668C @ =0x03000FB8
_080E6678:
	ldr r0, [r1, #0x00]
_080E667A:
	adds r0, #0x31
	strb r5, [r0, #0x00]
_080E667E:
	mov r0, r8
	adds r1, r7, #0x0
	bl sub_80E76B8
	b _080E66A6
_080E6688: .4byte 0x0300034C
_080E668C: .4byte 0x03000FB8
_080E6690:
	ldr r0, _080E6730 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	ldr r1, _080E6734 @ =0x0300034C
	ldrh r2, [r0, #0x2E]
	ldrh r0, [r1, #0x2A]
	ands r0, r2
	cmp r0, #0x00
	beq _080E66A6
	movs r0, #0x20
	orrs r0, r3
	strb r0, [r4, #0x00]
_080E66A6:
	movs r2, #0x00
	str r2, [sp, #0x028]
	movs r3, #0x00
	str r3, [sp, #0x020]
	movs r0, #0x00
	str r0, [sp, #0x024]
	mov r1, r8
	ldr r0, [r1, #0x04]
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x7F
	strb r1, [r0, #0x00]
	mov r3, r8
	ldr r2, [r3, #0x04]
	movs r1, #0xDB
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _080E66E4
	movs r0, #0x0E
	ands r0, r1
	movs r1, #0x02
	eors r0, r1
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1F
	str r1, [sp, #0x024]
_080E66E4:
	movs r3, #0x00
	str r3, [sp, #0x02C]
	adds r5, r2, #0x0
_080E66EA:
	mov r0, r8
	ldr r3, [r0, #0x04]
	movs r4, #0xD9
	lsls r4, r4, #0x01
	adds r0, r3, r4
	ldrb r0, [r0, #0x00]
	ldr r1, [sp, #0x02C]
	lsls r2, r1, #0x10
	asrs r6, r2, #0x10
	asrs r0, r6
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	str r2, [sp, #0x030]
	adds r2, r5, #0x0
	adds r2, #0x4C
	str r2, [sp, #0x034]
	cmp r0, #0x00
	beq _080E6712
	b _080E6DAC
_080E6712:
	ldr r0, [sp, #0x024]
	cmp r0, #0x00
	beq _080E6738
	ldr r1, [sp, #0x030]
	lsrs r2, r1, #0x10
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80E7A84
	movs r0, #0x01
	lsls r0, r6
	ldr r2, [sp, #0x020]
	orrs r2, r0
	lsls r0, r2, #0x10
	b _080E680A
_080E6730: .4byte 0x03000FB8
_080E6734: .4byte 0x0300034C
_080E6738:
	adds r1, r5, #0x0
	adds r1, #0x42
	ldrb r2, [r1, #0x00]
	movs r0, #0x02
	ands r0, r2
	mov r9, r1
	cmp r0, #0x00
	beq _080E67A4
	ldr r3, [sp, #0x030]
	lsrs r2, r3, #0x10
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80E7A84
	mov r0, r8
	ldr r1, [r0, #0x04]
	adds r1, r1, r4
	movs r3, #0x01
	lsls r3, r6
	ldrb r0, [r1, #0x00]
	bics r0, r3
	strb r0, [r1, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x04]
	ldr r1, _080E67A0 @ =0x000001B3
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	adds r0, r3, #0x0
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x41
	ldrb r1, [r2, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x028]
	orrs r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x028]
	ldr r1, [sp, #0x020]
	orrs r1, r3
	b _080E6808
	.byte 0x00, 0x00
_080E67A0: .4byte 0x000001B3
_080E67A4:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _080E67CC
	ldr r3, [sp, #0x030]
	lsrs r2, r3, #0x10
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80E7A84
	adds r2, r5, #0x0
	adds r2, #0x41
	ldrb r1, [r2, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	lsls r0, r6
	b _080E6804
_080E67CC:
	movs r2, #0xDB
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080E6814
	ldr r1, _080E6810 @ =0x000001B5
	adds r0, r3, r1
	ldrb r4, [r0, #0x00]
	cmp r4, r6
	bne _080E6814
	ldr r3, [sp, #0x030]
	lsrs r2, r3, #0x10
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80E7A84
	adds r2, r5, #0x0
	adds r2, #0x41
	ldrb r1, [r2, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x01
	lsls r0, r4
_080E6804:
	ldr r1, [sp, #0x020]
	orrs r1, r0
_080E6808:
	lsls r0, r1, #0x10
_080E680A:
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	b _080E6DAC
_080E6810: .4byte 0x000001B5
_080E6814:
	ldrh r0, [r5, #0x3A]
	cmp r0, #0x00
	beq _080E6852
	ldr r3, [sp, #0x030]
	lsrs r2, r3, #0x10
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80E7A84
	adds r2, r5, #0x0
	adds r2, #0x41
	ldrb r1, [r2, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldrh r0, [r5, #0x3A]
	subs r0, #0x01
	strh r0, [r5, #0x3A]
	ldr r0, [sp, #0x030]
	asrs r1, r0, #0x10
	movs r0, #0x01
	lsls r0, r1
	ldr r1, [sp, #0x020]
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	adds r5, #0x4C
	str r5, [sp, #0x034]
	b _080E6DAC
_080E6852:
	adds r6, r5, #0x0
	strh r0, [r5, #0x32]
	adds r1, r5, #0x0
	adds r1, #0x41
	ldrb r0, [r1, #0x00]
	lsls r0, r0, #0x1B
	lsrs r7, r0, #0x1E
	mov r10, r1
	adds r2, r5, #0x0
	adds r2, #0x4C
	str r2, [sp, #0x034]
	adds r0, r6, #0x0
	bl sub_8199624
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x00
	bne _080E6878
	b _080E6DAC
_080E6878:
	movs r1, #0xFF
	lsls r1, r1, #0x08
	cmp r4, r1
	bne _080E6882
	b _080E6D30
_080E6882:
	ldr r0, _080E6890 @ =0x0000FFE0
	ands r0, r4
	cmp r0, r1
	bne _080E6894
	movs r0, #0x1F
	ands r0, r4
	b _080E6896
_080E6890: .4byte 0x0000FFE0
_080E6894:
	movs r0, #0x00
_080E6896:
	cmp r0, #0x11
	bls _080E689C
	b _080E6D30
_080E689C:
	lsls r0, r0, #0x02
	ldr r1, _080E68A8 @ =0x080E68AC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080E68A8: .4byte 0x080E68AC
	.byte 0xF4, 0x68, 0x0E, 0x08, 0x40, 0x69, 0x0E, 0x08, 0x30, 0x6D, 0x0E, 0x08, 0x88, 0x69, 0x0E, 0x08
	.byte 0x96, 0x69, 0x0E, 0x08, 0x58, 0x6A, 0x0E, 0x08, 0x30, 0x6D, 0x0E, 0x08, 0x30, 0x6D, 0x0E, 0x08
	.byte 0x30, 0x6D, 0x0E, 0x08, 0x30, 0x6D, 0x0E, 0x08, 0x48, 0x6C, 0x0E, 0x08, 0x90, 0x6A, 0x0E, 0x08
	.byte 0x32, 0x6B, 0x0E, 0x08, 0x48, 0x6B, 0x0E, 0x08, 0x78, 0x6B, 0x0E, 0x08, 0x98, 0x6B, 0x0E, 0x08
	.byte 0xB4, 0x6B, 0x0E, 0x08, 0xD8, 0x6B, 0x0E, 0x08, 0x4B, 0x46, 0x1A, 0x78, 0xD1, 0x07, 0xC9, 0x0F
	.byte 0x43, 0x46, 0x58, 0x68, 0xDB, 0x23, 0x5B, 0x00, 0xC0, 0x18, 0x00, 0x78, 0x80, 0x06, 0xC0, 0x0F
	.byte 0x01, 0x43, 0x02, 0x23, 0x5B, 0x42, 0x13, 0x40, 0x0B, 0x43, 0x48, 0x46, 0x03, 0x70, 0x00, 0x2F
	.byte 0x05, 0xD0, 0x01, 0x20, 0x03, 0x40, 0x00, 0x2B, 0x02, 0xD0, 0x02, 0x27, 0x00, 0xE0, 0x01, 0x27
	.byte 0x01, 0x20, 0x68, 0x86, 0x4A, 0x46, 0x11, 0x78, 0x08, 0x40, 0x00, 0x28, 0x96, 0xD1, 0xFF, 0x2C
	.byte 0x94, 0xD0, 0xF7, 0xE1, 0x40, 0x46, 0x29, 0x1C, 0x01, 0xF0, 0x3E, 0xFE, 0x4B, 0x46, 0x19, 0x78
	.byte 0x02, 0x20, 0x01, 0x43, 0x02, 0x20, 0x40, 0x42, 0x01, 0x40, 0x19, 0x70, 0x00, 0x27, 0x51, 0x46
	.byte 0x08, 0x78, 0x40, 0x09, 0x04, 0x28, 0x00, 0xD8, 0x80, 0xE7, 0x07, 0x49, 0x40, 0x00, 0x40, 0x18
	.byte 0x00, 0x88, 0x32, 0xF7, 0x1B, 0xFE, 0x52, 0x46, 0x11, 0x78, 0x1F, 0x20, 0x08, 0x40, 0x20, 0x21
	.byte 0x08, 0x43, 0x10, 0x70, 0x72, 0xE7, 0x00, 0x00, 0x12, 0x95, 0x3B, 0x08, 0x4B, 0x46, 0x18, 0x78
	.byte 0x01, 0x21, 0x08, 0x43, 0x18, 0x70, 0x02, 0x27, 0x68, 0xE7, 0x2E, 0x48, 0x01, 0x68, 0x31, 0x31
	.byte 0x09, 0x78, 0x00, 0x29, 0x31, 0xD1, 0x48, 0x46, 0x01, 0x78, 0x01, 0x22, 0x10, 0x1C, 0x08, 0x40
	.byte 0x00, 0x28, 0x04, 0xD0, 0x38, 0x1C, 0x10, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x27, 0x25, 0x49
	.byte 0x0A, 0x68, 0x11, 0x79, 0x07, 0x20, 0x40, 0x42, 0x08, 0x40, 0x04, 0x21, 0x08, 0x43, 0x10, 0x71
	.byte 0x20, 0x4A, 0x10, 0x68, 0x30, 0x30, 0x00, 0x21, 0x01, 0x70, 0x43, 0x46, 0x59, 0x68, 0xDB, 0x23
	.byte 0x5B, 0x00, 0xC9, 0x18, 0x0A, 0x78, 0x11, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x70, 0x40, 0x46
	.byte 0x42, 0x68, 0xD2, 0x18, 0x13, 0x78, 0xD9, 0x07, 0xC9, 0x0F, 0x01, 0x31, 0x01, 0x20, 0x01, 0x40
	.byte 0x02, 0x20, 0x40, 0x42, 0x18, 0x40, 0x08, 0x43, 0x10, 0x70, 0x12, 0x49, 0x0C, 0x68, 0x31, 0x22
	.byte 0x12, 0x19, 0x94, 0x46, 0x10, 0x78, 0x40, 0x00, 0x22, 0x1C, 0x08, 0x32, 0x12, 0x18, 0xAB, 0x8E
	.byte 0x08, 0x21, 0x49, 0x42, 0x08, 0x1C, 0x18, 0x40, 0x33, 0x7B, 0xC0, 0x18, 0x0B, 0x30, 0x10, 0x80
	.byte 0x62, 0x46, 0x10, 0x78, 0x40, 0x00, 0x22, 0x1C, 0x18, 0x32, 0x12, 0x18, 0xE8, 0x8E, 0x01, 0x40
	.byte 0x73, 0x7B, 0xC9, 0x18, 0x04, 0x48, 0x09, 0x18, 0x11, 0x80, 0x61, 0x46, 0x08, 0x78, 0x01, 0x30
	.byte 0x08, 0x70, 0x0B, 0xE7, 0xB8, 0x0F, 0x00, 0x03, 0xF9, 0xFF, 0x00, 0x00, 0x4B, 0x46, 0x1A, 0x78
	.byte 0x78, 0x20, 0x10, 0x40, 0x00, 0x28, 0x0B, 0xD0, 0x50, 0x06, 0x00, 0x0F, 0x01, 0x38, 0x0F, 0x21
	.byte 0x08, 0x40, 0xC0, 0x00, 0x79, 0x21, 0x49, 0x42, 0x11, 0x40, 0x01, 0x43, 0x19, 0x70, 0xF5, 0xE6
	.byte 0x01, 0x20, 0x38, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x00, 0x27, 0x04, 0x20, 0x10, 0x43, 0x49, 0x46
	.byte 0x08, 0x70, 0x4F, 0xE1, 0xB0, 0x68, 0x04, 0x78, 0x01, 0x30, 0xB0, 0x60, 0x36, 0x22, 0xA9, 0x5E
	.byte 0x08, 0x1C, 0x00, 0x29, 0x00, 0xDA, 0xC8, 0x1D, 0xC0, 0x10, 0xC0, 0x00, 0x08, 0x1A, 0x00, 0x04
	.byte 0x00, 0x0C, 0x09, 0x90, 0x02, 0xA8, 0x31, 0x1C, 0x14, 0x22, 0xF6, 0xF0, 0x3F, 0xF9, 0x00, 0x20
	.byte 0x01, 0x90, 0x06, 0x98, 0x00, 0x90, 0x02, 0x98, 0x03, 0x99, 0x04, 0x9A, 0x05, 0x9B, 0x01, 0xF0
	.byte 0x3B, 0xFF, 0x01, 0x1C, 0x04, 0x48, 0x01, 0x40, 0x01, 0x2C, 0x0D, 0xD0, 0x01, 0x2C, 0x05, 0xDC
	.byte 0x00, 0x2C, 0x06, 0xD0, 0x1C, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x02, 0x2C, 0x0D, 0xD0
	.byte 0x16, 0xE0, 0x09, 0x23, 0x07, 0x93, 0x13, 0xE0, 0x28, 0x1C, 0x39, 0x30, 0x00, 0x78, 0x01, 0x38
	.byte 0xC0, 0x00, 0x40, 0x1A, 0x0A, 0x30, 0x00, 0x04, 0x40, 0x0C, 0x08, 0xE0, 0x28, 0x1C, 0x39, 0x30
	.byte 0x00, 0x78, 0x01, 0x38, 0xC0, 0x00, 0x40, 0x1A, 0x04, 0x38, 0x00, 0x04, 0x00, 0x0C, 0x07, 0x90
	.byte 0x09, 0x98, 0x07, 0x99, 0x42, 0x18, 0x12, 0x06, 0x12, 0x0E, 0xB3, 0x68, 0x30, 0x1C, 0x00, 0x21
	.byte 0xB3, 0xF0, 0x16, 0xF9, 0x9A, 0xE6, 0x01, 0x20, 0x38, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x00, 0x27
	.byte 0xB1, 0x68, 0x08, 0x78, 0x68, 0x87, 0x01, 0x31, 0xB1, 0x60, 0xF3, 0xE0, 0xB0, 0x68, 0x04, 0x78
	.byte 0x01, 0x30, 0xB0, 0x60, 0xA8, 0x62, 0x04, 0x48, 0x00, 0x68, 0x80, 0x68, 0x00, 0x68, 0xA0, 0x42
	.byte 0x06, 0xD0, 0x02, 0x48, 0x05, 0xE0, 0x00, 0x00, 0xBC, 0x0F, 0x00, 0x03, 0x04, 0x95, 0x3B, 0x08
	.byte 0x01, 0x48, 0x00, 0x68, 0xB0, 0x60, 0x79, 0xE6, 0x08, 0x95, 0x3B, 0x08, 0xB0, 0x68, 0x01, 0x30
	.byte 0xB0, 0x60, 0xA8, 0x62, 0x28, 0x1C, 0x14, 0x30, 0x03, 0x49, 0x09, 0x68, 0x49, 0x68, 0x09, 0x88
	.byte 0x02, 0xF0, 0xC8, 0xF8, 0xB0, 0x60, 0x69, 0xE6, 0xBC, 0x0F, 0x00, 0x03, 0xB0, 0x68, 0x01, 0x30
	.byte 0xB0, 0x60, 0xA8, 0x62, 0x28, 0x1C, 0x14, 0x30, 0x02, 0x49, 0x09, 0x68, 0x09, 0x68, 0x0A, 0x68
	.byte 0x00, 0x21, 0x0D, 0xE0, 0xBC, 0x0F, 0x00, 0x03, 0xB0, 0x68, 0x04, 0x78, 0x01, 0x30, 0xB0, 0x60
	.byte 0xA8, 0x62, 0x28, 0x1C, 0x14, 0x30, 0x21, 0x1C, 0x03, 0x4A, 0x12, 0x68, 0x12, 0x68, 0x12, 0x68
	.byte 0x02, 0xF0, 0x2C, 0xF8, 0xB0, 0x60, 0x49, 0xE6, 0xBC, 0x0F, 0x00, 0x03, 0x0A, 0x48, 0x04, 0x68
	.byte 0x20, 0x1C, 0x31, 0x30, 0x00, 0x78, 0x00, 0x28, 0x10, 0xD1, 0xB3, 0x68, 0x19, 0x78, 0x03, 0x20
	.byte 0x01, 0x40, 0x49, 0x00, 0x22, 0x79, 0x07, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43, 0x20, 0x71
	.byte 0x01, 0x33, 0xB3, 0x60, 0x05, 0xE0, 0x00, 0x00, 0xB8, 0x0F, 0x00, 0x03, 0xB0, 0x68, 0x01, 0x30
	.byte 0xB0, 0x60, 0x01, 0x20, 0x38, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x00, 0x27, 0x4A, 0x46, 0x11, 0x78
	.byte 0x02, 0x20, 0x40, 0x42, 0x08, 0x40, 0x10, 0x70, 0x43, 0x46, 0x58, 0x68, 0xDB, 0x21, 0x49, 0x00
	.byte 0x42, 0x18, 0x10, 0x78, 0x40, 0x21, 0x08, 0x43, 0x10, 0x70, 0x58, 0x68, 0x02, 0x4A, 0x80, 0x18
	.byte 0x0B, 0xAB, 0x1B, 0x78, 0x03, 0x70, 0x75, 0xE0, 0xB5, 0x01, 0x00, 0x00, 0x01, 0x23, 0x38, 0x1C
	.byte 0x18, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x00, 0x27, 0xA8, 0x6A, 0x00, 0x28, 0x66, 0xD1, 0xA9, 0x8F
	.byte 0x80, 0x20, 0x00, 0x01, 0x08, 0x40, 0x00, 0x28, 0x2C, 0xD0, 0x40, 0x46, 0x42, 0x68, 0xDB, 0x21
	.byte 0x49, 0x00, 0x50, 0x18, 0x01, 0x78, 0x50, 0x20, 0x08, 0x40, 0x00, 0x28, 0x2E, 0xD1, 0xD9, 0x24
	.byte 0x64, 0x00, 0x12, 0x19, 0x11, 0x78, 0x0A, 0x98, 0x08, 0x43, 0x10, 0x70, 0x0C, 0x9A, 0x11, 0x0C
	.byte 0x40, 0x46, 0x00, 0xF0, 0x93, 0xF9, 0x43, 0x46, 0x59, 0x68, 0x09, 0x19, 0x08, 0x78, 0x0A, 0x9A
	.byte 0x90, 0x43, 0x08, 0x70, 0x00, 0x23, 0x0A, 0x93, 0x50, 0x46, 0x01, 0x78, 0x49, 0x09, 0x40, 0x46
	.byte 0x3A, 0x1C, 0x02, 0xF0, 0x43, 0xF9, 0x52, 0x46, 0x11, 0x78, 0x19, 0x20, 0x40, 0x42, 0x08, 0x40
	.byte 0x10, 0x70, 0x75, 0xE0, 0x40, 0x46, 0x42, 0x68, 0xDA, 0x21, 0x49, 0x00, 0x52, 0x18, 0x0C, 0x99
	.byte 0x08, 0x14, 0x19, 0x1C, 0x81, 0x40, 0x10, 0x78, 0x88, 0x43, 0x10, 0x70, 0xB0, 0x68, 0x02, 0x38
	.byte 0xB0, 0x60, 0x4A, 0x46, 0x10, 0x78, 0xC1, 0x07, 0xC9, 0x0F, 0x80, 0x07, 0xC0, 0x0F, 0x01, 0x43
	.byte 0x00, 0x29, 0x1F, 0xD1, 0x0C, 0x9B, 0x1A, 0x0C, 0x40, 0x46, 0x29, 0x1C, 0x00, 0xF0, 0xC4, 0xFE
	.byte 0x0C, 0x98, 0x01, 0x14, 0x01, 0x20, 0x88, 0x40, 0x08, 0x99, 0x01, 0x43, 0x08, 0x04, 0x00, 0x0C
	.byte 0x08, 0x90, 0x52, 0x46, 0x11, 0x78, 0x49, 0x09, 0x40, 0x46, 0x3A, 0x1C, 0x02, 0xF0, 0x0E, 0xF9
	.byte 0x53, 0x46, 0x19, 0x78, 0x19, 0x20, 0x40, 0x42, 0x08, 0x40, 0x40, 0xE0, 0xB0, 0x60, 0x00, 0x20
	.byte 0xA8, 0x62, 0x9B, 0xE5
_080E6D30:
	ldrh r0, [r5, #0x32]
	cmp r0, #0x00
	beq _080E6D64
	ldr r0, [r5, #0x2C]
	mov r2, r8
	ldr r1, [r2, #0x04]
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r1, r1, r3
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	adds r2, r5, #0x0
	adds r2, #0x38
	ldrb r3, [r2, #0x00]
	adds r3, #0x01
	adds r2, #0x01
	ldrb r2, [r2, #0x00]
	adds r2, #0x01
	muls r2, r3
	lsls r2, r2, #0x05
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	strh r4, [r5, #0x32]
_080E6D64:
	ldr r0, [sp, #0x030]
	lsrs r2, r0, #0x10
	mov r0, r8
	adds r1, r5, #0x0
	bl sub_80E7A84
	ldr r2, [sp, #0x030]
	asrs r1, r2, #0x10
	movs r0, #0x01
	lsls r0, r1
	ldr r3, [sp, #0x020]
	orrs r3, r0
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x020]
	mov r0, r10
	ldrb r1, [r0, #0x00]
	lsrs r1, r1, #0x05
	mov r0, r8
	adds r2, r7, #0x0
	bl sub_80E8F38
	movs r2, #0x00
	cmp r7, #0x00
	beq _080E6D9C
	cmp r7, #0x02
	beq _080E6D9C
	movs r2, #0x03
_080E6D9C:
	lsls r2, r2, #0x03
	mov r3, r10
	ldrb r1, [r3, #0x00]
	movs r0, #0x19
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x00]
_080E6DAC:
	ldr r1, [sp, #0x030]
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r1, r2
	ldr r5, [sp, #0x034]
	lsrs r3, r0, #0x10
	str r3, [sp, #0x02C]
	asrs r0, r0, #0x10
	cmp r0, #0x04
	bgt _080E6DC2
	b _080E66EA
_080E6DC2:
	ldr r0, [sp, #0x020]
	cmp r0, #0x00
	beq _080E6DDC
	mov r1, r8
	ldr r0, [r1, #0x04]
	movs r2, #0xDB
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1D
	cmp r0, #0x01
	bls _080E6DF0
_080E6DDC:
	mov r3, r8
	ldr r0, [r3, #0x04]
	movs r1, #0xDB
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x0F
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_080E6DF0:
	mov r3, r8
	ldr r2, [r3, #0x04]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080E6E1A
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r0, r2, r3
	adds r3, #0x01
	adds r1, r2, r3
	ldrb r0, [r0, #0x00]
	ldrb r1, [r1, #0x00]
	eors r1, r0
	mov r0, r8
	bl sub_80E7118
_080E6E1A:
	mov r0, r8
	ldr r1, [r0, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldrb r0, [r0, #0x00]
	ldr r3, _080E6E64 @ =0x000001B3
	adds r1, r1, r3
	strb r0, [r1, #0x00]
	mov r0, r8
	ldr r1, [r0, #0x04]
	adds r2, #0x02
	adds r1, r1, r2
	ldrb r2, [r1, #0x00]
	ldr r0, [sp, #0x020]
	ands r0, r2
	strb r0, [r1, #0x00]
	mov r3, r8
	ldr r0, [r3, #0x04]
	movs r1, #0xDB
	lsls r1, r1, #0x01
	adds r2, r0, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x020]
_080E6E52:
	add sp, #0x038
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E6E64: .4byte 0x000001B3
	thumb_func_start sub_80E6E68
sub_80E6E68:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r10, r0
	movs r3, #0x00
	ldr r0, [r0, #0x04]
	mov r8, r0
_080E6E7C:
	mov r2, r10
	ldr r1, [r2, #0x04]
	movs r6, #0xD9
	lsls r6, r6, #0x01
	adds r0, r1, r6
	ldrb r6, [r0, #0x00]
	asrs r6, r3
	movs r0, #0x01
	eors r6, r0
	ands r6, r0
	adds r3, #0x01
	str r3, [sp, #0x008]
	mov r0, r8
	adds r0, #0x4C
	str r0, [sp, #0x004]
	cmp r6, #0x00
	bne _080E6F38
	mov r2, r8
	ldrh r0, [r2, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldrh r5, [r2, #0x36]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x13
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, r8
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	ldr r3, [sp, #0x000]
	adds r0, r0, r3
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0x39
	ldrb r4, [r0, #0x00]
	adds r4, r4, r5
	adds r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r2, r10
	ldr r0, [r2, #0x00]
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r2, r1, r3
	mov r3, r8
	ldr r1, [r3, #0x2C]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	mov r0, r8
	str r6, [r0, #0x2C]
	cmp r5, r4
	bcs _080E6F2E
	mov r9, r4
	mov r1, r10
	ldr r1, [r1, #0x04]
	mov r12, r1
_080E6EFA:
	ldr r2, [sp, #0x000]
	adds r4, r5, #0x1
	cmp r2, r7
	bcs _080E6F26
	lsls r5, r5, #0x05
	movs r6, #0xC2
	lsls r6, r6, #0x01
	add r6, r12
	movs r3, #0xD8
	lsls r3, r3, #0x01
	add r3, r12
_080E6F10:
	adds r1, r5, r2
	ldr r0, [r6, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r0
	ldrh r0, [r3, #0x00]
	strh r0, [r1, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r7
	bcc _080E6F10
_080E6F26:
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r9
	bcc _080E6EFA
_080E6F2E:
	movs r0, #0x00
	mov r2, r8
	str r0, [r2, #0x08]
	mov r3, r10
	ldr r1, [r3, #0x04]
_080E6F38:
	ldr r6, [sp, #0x008]
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [sp, #0x004]
	mov r8, r0
	cmp r3, #0x04
	bls _080E6E7C
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r5, #0x00
	strb r5, [r0, #0x00]
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r0, r1, r3
	strb r5, [r0, #0x00]
	mov r6, r10
	ldr r3, [r6, #0x04]
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r4, r3, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _080E6FA8
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	eors r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x00]
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	strh r5, [r0, #0x00]
	movs r6, #0xCD
	lsls r6, r6, #0x01
	adds r0, r3, r6
	strh r5, [r0, #0x00]
	adds r1, #0x0C
	adds r0, r3, r1
	strh r5, [r0, #0x00]
	ldrb r1, [r4, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #0x00]
_080E6FA8:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80E6FB8
sub_80E6FB8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x000]
	ldr r2, [r0, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r6, [r0, #0x00]
	ldr r3, [sp, #0x000]
	asrs r6, r3
	movs r0, #0x01
	eors r6, r0
	ands r6, r0
	cmp r6, #0x00
	beq _080E6FE6
	b _080E7108
_080E6FE6:
	movs r0, #0x4C
	muls r0, r3
	adds r0, r0, r2
	mov r8, r0
	ldrh r0, [r0, #0x34]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	mov r0, r8
	ldrh r5, [r0, #0x36]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x13
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, #0x38
	ldrb r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x01
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r0, r8
	adds r0, #0x39
	ldrb r4, [r0, #0x00]
	adds r4, r4, r5
	adds r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r1, r9
	ldr r0, [r1, #0x00]
	movs r3, #0xCA
	lsls r3, r3, #0x01
	adds r2, r2, r3
	mov r3, r8
	ldr r1, [r3, #0x2C]
	ldr r2, [r2, #0x00]
	subs r1, r1, r2
	bl sub_80E9384
	mov r0, r8
	str r6, [r0, #0x2C]
	cmp r5, r4
	bcs _080E707E
	adds r6, r7, #0x0
	str r4, [sp, #0x004]
	mov r1, r9
	ldr r1, [r1, #0x04]
	mov r12, r1
_080E7048:
	mov r2, r10
	adds r7, r5, #0x1
	cmp r2, r6
	bcs _080E7074
	lsls r5, r5, #0x05
	movs r4, #0xC2
	lsls r4, r4, #0x01
	add r4, r12
	movs r3, #0xD8
	lsls r3, r3, #0x01
	add r3, r12
_080E705E:
	adds r0, r5, r2
	ldr r1, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r1, [r3, #0x00]
	strh r1, [r0, #0x00]
	adds r0, r2, #0x1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r6
	bcc _080E705E
_080E7074:
	lsls r0, r7, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0x004]
	cmp r5, r3
	bcc _080E7048
_080E707E:
	mov r6, r9
	ldr r2, [r6, #0x04]
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r2, r2, r3
	movs r6, #0x01
	adds r0, r6, #0x0
	ldr r1, [sp, #0x000]
	lsls r0, r1
	ldrb r1, [r2, #0x00]
	bics r1, r0
	movs r4, #0x00
	strb r1, [r2, #0x00]
	mov r1, r9
	ldr r0, [r1, #0x04]
	movs r1, #0xDA
	lsls r1, r1, #0x01
	adds r2, r0, r1
	adds r0, r0, r3
	ldrb r1, [r2, #0x00]
	ldrb r0, [r0, #0x00]
	ands r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	str r4, [r0, #0x08]
	mov r1, r9
	ldr r4, [r1, #0x04]
	adds r3, r4, r3
	ldrb r3, [r3, #0x00]
	cmp r3, #0x00
	bne _080E7108
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r5, r4, r0
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	ands r0, r6
	cmp r0, #0x00
	beq _080E7108
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	eors r0, r1
	strh r0, [r2, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	strh r3, [r0, #0x00]
	movs r6, #0xC8
	lsls r6, r6, #0x01
	adds r0, r4, r6
	ldr r0, [r0, #0x00]
	strh r3, [r0, #0x00]
	adds r1, #0x0E
	adds r0, r4, r1
	strh r3, [r0, #0x00]
	adds r6, #0x08
	adds r0, r4, r6
	strh r3, [r0, #0x00]
	ldrb r1, [r5, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #0x00]
_080E7108:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80E7118
sub_80E7118:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r10, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	cmp r1, #0x00
	beq _080E71C0
	ldr r2, [r0, #0x04]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x00]
	movs r0, #0xF8
	lsls r0, r0, #0x05
	ands r0, r1
	lsls r0, r0, #0x03
	movs r1, #0xC0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [sp, #0x004]
	movs r1, #0x00
	adds r7, r2, #0x0
	adds r7, #0x34
_080E7152:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r6, r9
	asrs r6, r0
	movs r0, #0x01
	eors r6, r0
	ands r6, r0
	cmp r6, #0x00
	bne _080E71B0
	ldrh r4, [r7, #0x00]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x13
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r3, [r7, #0x02]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x13
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r3, #0x05
	adds r1, r0, r4
	mov r2, r10
	ldr r0, [r2, #0x04]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r0, r2
	lsls r5, r1, #0x01
	ldr r2, [r0, #0x00]
	adds r0, r2, r5
	ldrb r1, [r7, #0x05]
	adds r1, r1, r3
	adds r1, #0x01
	lsls r1, r1, #0x06
	adds r2, r2, r1
	ldrb r1, [r7, #0x04]
	adds r1, r1, r4
	lsls r1, r1, #0x01
	adds r1, #0x04
	adds r2, r2, r1
	subs r2, r2, r0
	ldr r3, [sp, #0x004]
	adds r1, r3, r5
	str r6, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_080E71B0:
	mov r0, r8
	adds r0, #0x01
	lsls r0, r0, #0x10
	adds r7, #0x4C
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	ble _080E7152
_080E71C0:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80E71D0
sub_80E71D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, [sp, #0x020]
	lsls r5, r1, #0x18
	lsrs r1, r5, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r4, r8
	movs r0, #0x01
	ands r1, r0
	cmp r1, #0x00
	beq _080E7202
	lsls r0, r6, #0x14
	lsrs r6, r0, #0x10
	lsls r0, r3, #0x14
	lsrs r3, r0, #0x10
_080E7202:
	lsrs r0, r5, #0x19
	movs r1, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _080E7280
	ldr r2, _080E7248 @ =0x03001038
	lsls r5, r6, #0x10
	asrs r0, r5, #0x10
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r1, #0x0
	lsls r4, r3, #0x10
	asrs r1, r4, #0x10
	adds r3, r1, #0x0
	muls r3, r1
	adds r1, r3, #0x0
	adds r0, r0, r1
	lsls r0, r0, #0x04
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	mov r9, r0
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x40
	ands r0, r1
	adds r6, r5, #0x0
	mov r8, r4
	cmp r0, #0x00
	beq _080E724C
	movs r0, #0x0F
	ands r0, r1
	lsls r4, r0, #0x02
	b _080E7250
_080E7248: .4byte 0x03001038
_080E724C:
	lsls r0, r1, #0x16
	lsrs r4, r0, #0x10
_080E7250:
	ldr r5, [r7, #0x04]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r0, r6, #0x10
	muls r0, r4
	mov r1, r9
	bl __divsi3
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r5, r5, r1
	strh r0, [r5, #0x00]
	ldr r5, [r7, #0x04]
	mov r2, r8
	asrs r0, r2, #0x10
	muls r0, r4
	mov r1, r9
	bl __divsi3
	movs r3, #0xD1
	lsls r3, r3, #0x01
	adds r1, r5, r3
	strh r0, [r1, #0x00]
	b _080E72B6
_080E7280:
	ldr r5, [r7, #0x04]
	lsls r6, r6, #0x10
	mov r8, r6
	asrs r0, r6, #0x0C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0x0
	str r3, [sp, #0x000]
	bl __divsi3
	movs r6, #0xD0
	lsls r6, r6, #0x01
	adds r5, r5, r6
	strh r0, [r5, #0x00]
	ldr r6, [r7, #0x04]
	ldr r3, [sp, #0x000]
	lsls r5, r3, #0x10
	asrs r0, r5, #0x0C
	adds r1, r4, #0x0
	bl __divsi3
	movs r2, #0xD1
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	mov r6, r8
	mov r8, r5
_080E72B6:
	ldr r0, [r7, #0x04]
	asrs r1, r6, #0x0C
	movs r3, #0xCE
	lsls r3, r3, #0x01
	adds r0, r0, r3
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x04]
	mov r4, r8
	asrs r1, r4, #0x0C
	movs r6, #0xCF
	lsls r6, r6, #0x01
	adds r0, r0, r6
	strh r1, [r0, #0x00]
	ldr r2, [r7, #0x04]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	beq _080E72E8
	b _080E7426
_080E72E8:
	adds r3, #0x0A
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	movs r4, #0xD2
	lsls r4, r4, #0x01
	adds r0, r2, r4
	strh r1, [r0, #0x00]
	adds r6, #0x10
	adds r0, r2, r6
	strh r1, [r0, #0x00]
	adds r3, #0x06
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x04]
	adds r4, #0x04
	adds r0, r0, r4
	movs r1, #0xF0
	strh r1, [r0, #0x00]
	ldr r0, [r7, #0x04]
	subs r6, #0x04
	adds r1, r0, r6
	movs r0, #0xA0
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x04]
	movs r0, #0xDC
	lsls r0, r0, #0x01
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r2, #0x00
	ldr r0, [r7, #0x04]
	adds r4, r0, #0x0
	adds r4, #0x34
_080E732E:
	ldr r3, [r7, #0x04]
	movs r1, #0xD9
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	asrs r0, r1
	movs r1, #0x01
	eors r0, r1
	ands r0, r1
	cmp r0, #0x00
	bne _080E73B6
	movs r6, #0xD4
	lsls r6, r6, #0x01
	adds r3, r3, r6
	ldrh r5, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	bge _080E735E
	strh r5, [r3, #0x00]
_080E735E:
	ldr r0, [r7, #0x04]
	movs r1, #0xD5
	lsls r1, r1, #0x01
	adds r3, r0, r1
	ldrh r5, [r4, #0x02]
	movs r6, #0x02
	ldsh r1, [r4, r6]
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	bge _080E7376
	strh r5, [r3, #0x00]
_080E7376:
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldrb r0, [r4, #0x04]
	lsls r5, r0, #0x03
	adds r1, r1, r5
	ldr r0, [r7, #0x04]
	movs r6, #0xD6
	lsls r6, r6, #0x01
	adds r3, r0, r6
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	ble _080E7396
	ldrh r0, [r4, #0x00]
	adds r0, r0, r5
	strh r0, [r3, #0x00]
_080E7396:
	movs r0, #0x02
	ldsh r1, [r4, r0]
	ldrb r0, [r4, #0x05]
	lsls r5, r0, #0x03
	adds r1, r1, r5
	ldr r0, [r7, #0x04]
	movs r6, #0xD7
	lsls r6, r6, #0x01
	adds r3, r0, r6
	movs r6, #0x00
	ldsh r0, [r3, r6]
	cmp r1, r0
	ble _080E73B6
	ldrh r0, [r4, #0x02]
	adds r0, r0, r5
	strh r0, [r3, #0x00]
_080E73B6:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r2, r1
	adds r4, #0x4C
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x04
	ble _080E732E
	ldr r3, [r7, #0x04]
	movs r2, #0xC6
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r4, #0xC8
	lsls r4, r4, #0x01
	adds r0, r3, r4
	ldr r0, [r0, #0x00]
	strh r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ldrh r0, [r2, #0x00]
	movs r6, #0x80
	lsls r6, r6, #0x06
	adds r1, r6, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x40
	movs r1, #0xD4
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r4, #0x1C
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	movs r6, #0xD5
	lsls r6, r6, #0x01
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r4, #0x02
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r1, _080E7434 @ =0x02000048
	movs r0, #0x3F
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x3E
	strh r0, [r1, #0x00]
_080E7426:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E7434: .4byte 0x02000048
	thumb_func_start sub_80E7438
sub_80E7438:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x04]
	movs r1, #0xDC
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _080E7454
	b _080E76A0
_080E7454:
	movs r6, #0xD2
	lsls r6, r6, #0x01
	adds r1, r2, r6
	movs r3, #0xD0
	lsls r3, r3, #0x01
	mov r12, r3
	adds r0, r2, r3
	ldrh r0, [r0, #0x00]
	ldrh r5, [r1, #0x00]
	adds r0, r0, r5
	movs r2, #0x00
	mov r8, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x04]
	movs r2, #0xD3
	lsls r2, r2, #0x01
	adds r1, r0, r2
	adds r3, #0x02
	adds r0, r0, r3
	ldrh r0, [r0, #0x00]
	ldrh r5, [r1, #0x00]
	adds r0, r0, r5
	strh r0, [r1, #0x00]
	ldr r3, [r4, #0x04]
	adds r0, r3, r6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080E7490
	adds r0, #0x0F
_080E7490:
	asrs r0, r0, #0x04
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r1, r3, r5
	ldrh r1, [r1, #0x00]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r3, r2
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	bge _080E74AC
	adds r2, #0x0F
_080E74AC:
	asrs r2, r2, #0x04
	movs r1, #0xCD
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	subs r2, r2, r0
	movs r7, #0xD4
	lsls r7, r7, #0x01
	adds r1, r3, r7
	ldrh r0, [r1, #0x00]
	lsls r3, r5, #0x10
	asrs r3, r3, #0x10
	adds r0, r3, r0
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x04]
	movs r5, #0xD5
	lsls r5, r5, #0x01
	adds r1, r0, r5
	ldrh r0, [r1, #0x00]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, r0
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x04]
	adds r5, #0x02
	adds r0, r0, r5
	ldrh r1, [r0, #0x00]
	adds r3, r3, r1
	strh r3, [r0, #0x00]
	ldr r0, [r4, #0x04]
	movs r3, #0xD7
	lsls r3, r3, #0x01
	adds r1, r0, r3
	ldrh r0, [r1, #0x00]
	adds r2, r2, r0
	strh r2, [r1, #0x00]
	ldr r1, [r4, #0x04]
	mov r2, r12
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	blt _080E7544
	adds r2, r1, r6
	movs r6, #0xCE
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080E7522
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	add r0, r12
	mov r1, r8
	strh r1, [r0, #0x00]
_080E7522:
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0xF0
	ble _080E7532
	movs r0, #0xF0
	strh r0, [r1, #0x00]
_080E7532:
	ldr r0, [r4, #0x04]
	adds r1, r0, r5
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0xF0
	ble _080E7584
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	b _080E7584
_080E7544:
	adds r2, r1, r6
	movs r6, #0xCE
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	bgt _080E7564
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	add r0, r12
	mov r1, r8
	strh r1, [r0, #0x00]
_080E7564:
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	movs r2, #0x00
	ldsh r0, [r1, r2]
	cmp r0, #0x00
	bge _080E7574
	mov r3, r8
	strh r3, [r1, #0x00]
_080E7574:
	ldr r0, [r4, #0x04]
	adds r1, r0, r5
	movs r5, #0x00
	ldsh r0, [r1, r5]
	cmp r0, #0x00
	bge _080E7584
	mov r6, r8
	strh r6, [r1, #0x00]
_080E7584:
	ldr r1, [r4, #0x04]
	movs r5, #0xD1
	lsls r5, r5, #0x01
	adds r0, r1, r5
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	blt _080E75E0
	movs r3, #0xD3
	lsls r3, r3, #0x01
	adds r2, r1, r3
	movs r6, #0xCF
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	blt _080E75B8
	movs r1, #0x00
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	adds r0, r0, r5
	strh r1, [r0, #0x00]
_080E75B8:
	ldr r0, [r4, #0x04]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r1, r0, r2
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0xA0
	ble _080E75CC
	movs r0, #0xA0
	strh r0, [r1, #0x00]
_080E75CC:
	ldr r0, [r4, #0x04]
	movs r5, #0xD7
	lsls r5, r5, #0x01
	adds r1, r0, r5
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0xA0
	ble _080E762C
	movs r0, #0xA0
	b _080E762A
_080E75E0:
	movs r0, #0xD3
	lsls r0, r0, #0x01
	adds r2, r1, r0
	movs r3, #0xCF
	lsls r3, r3, #0x01
	adds r0, r1, r3
	movs r6, #0x00
	ldsh r1, [r2, r6]
	ldrh r3, [r0, #0x00]
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r1, r0
	bgt _080E7604
	movs r1, #0x00
	strh r3, [r2, #0x00]
	ldr r0, [r4, #0x04]
	adds r0, r0, r5
	strh r1, [r0, #0x00]
_080E7604:
	ldr r0, [r4, #0x04]
	movs r2, #0xD5
	lsls r2, r2, #0x01
	adds r1, r0, r2
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	bge _080E7618
	movs r0, #0x00
	strh r0, [r1, #0x00]
_080E7618:
	ldr r0, [r4, #0x04]
	movs r5, #0xD7
	lsls r5, r5, #0x01
	adds r1, r0, r5
	movs r6, #0x00
	ldsh r0, [r1, r6]
	cmp r0, #0x00
	bge _080E762C
	movs r0, #0x00
_080E762A:
	strh r0, [r1, #0x00]
_080E762C:
	ldr r1, [r4, #0x04]
	movs r2, #0xD2
	lsls r2, r2, #0x01
	adds r0, r1, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _080E763E
	adds r0, #0x0F
_080E763E:
	asrs r0, r0, #0x04
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r1, r1, r5
	strh r0, [r1, #0x00]
	negs r0, r0
	ldr r1, _080E76AC @ =0x02000010
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x04]
	movs r6, #0xD3
	lsls r6, r6, #0x01
	adds r0, r1, r6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _080E7660
	adds r0, #0x0F
_080E7660:
	asrs r0, r0, #0x04
	movs r3, #0xCD
	lsls r3, r3, #0x01
	adds r1, r1, r3
	strh r0, [r1, #0x00]
	negs r0, r0
	ldr r1, _080E76B0 @ =0x02000012
	strh r0, [r1, #0x00]
	ldr r2, _080E76B4 @ =0x02000040
	ldr r3, [r4, #0x04]
	movs r4, #0xD4
	lsls r4, r4, #0x01
	adds r0, r3, r4
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	movs r5, #0xD6
	lsls r5, r5, #0x01
	adds r1, r3, r5
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x04
	movs r6, #0xD5
	lsls r6, r6, #0x01
	adds r0, r3, r6
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r4, #0x06
	adds r1, r3, r4
	ldrh r1, [r1, #0x00]
	orrs r0, r1
	strh r0, [r2, #0x00]
_080E76A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E76AC: .4byte 0x02000010
_080E76B0: .4byte 0x02000012
_080E76B4: .4byte 0x02000040
	thumb_func_start sub_80E76B8
sub_80E76B8:
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0x0
	ldr r2, _080E7724 @ =0x0300034C
	movs r4, #0x88
	lsls r4, r4, #0x04
	adds r1, r2, r4
	ldr r4, [r1, #0x00]
	ldr r0, [r0, #0x04]
	movs r5, #0xCC
	lsls r5, r5, #0x01
	adds r7, r0, r5
	ldrh r1, [r7, #0x00]
	ldrh r5, [r3, #0x00]
	adds r1, r1, r5
	lsls r1, r1, #0x10
	movs r5, #0xCD
	lsls r5, r5, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x00]
	ldrh r5, [r3, #0x02]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsrs r5, r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r1, r1, r0
	movs r0, #0x84
	lsls r0, r0, #0x11
	mov r12, r2
	cmp r1, r0
	bls _080E76FA
	b _080E7A74
_080E76FA:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x0C
	negs r0, r0
	cmp r1, r0
	bge _080E7708
	b _080E7A74
_080E7708:
	cmp r1, #0xAC
	ble _080E770E
	b _080E7A74
_080E770E:
	ldrb r2, [r3, #0x04]
	lsls r0, r2, #0x1D
	lsrs r0, r0, #0x1E
	cmp r0, #0x01
	beq _080E778C
	cmp r0, #0x01
	bcc _080E7728
	cmp r0, #0x02
	beq _080E7804
	b _080E7A54
	.byte 0x00, 0x00
_080E7724: .4byte 0x0300034C
_080E7728:
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x00
	beq _080E7736
	cmp r0, #0x01
	beq _080E773A
	b _080E7744
_080E7736:
	adds r0, r1, #0x3
	b _080E773C
_080E773A:
	adds r0, r1, #0x6
_080E773C:
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
_080E7744:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, #0x01
	ldr r2, _080E7780 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrh r0, [r3, #0x04]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080E777A
	ldrb r2, [r3, #0x04]
	lsls r1, r2, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x01
	eors r1, r0
	lsls r1, r1, #0x03
	subs r0, #0x3A
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x04]
	ldrh r1, [r3, #0x04]
	ldr r0, _080E7784 @ =0xFFFFC03F
	ands r0, r1
	strh r0, [r3, #0x04]
_080E777A:
	ldr r5, _080E7788 @ =0x0000F004
	b _080E7A4E
	.byte 0x00, 0x00
_080E7780: .4byte 0x000001FF
_080E7784: .4byte 0xFFFFC03F
_080E7788: .4byte 0x0000F004
_080E778C:
	adds r0, r1, #0x3
	ldr r2, _080E77B8 @ =0x000001FF
	adds r1, r2, #0x0
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrh r0, [r7, #0x00]
	ldrh r5, [r3, #0x00]
	adds r0, r0, r5
	adds r0, #0x01
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrb r1, [r3, #0x04]
	lsls r0, r1, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x00
	beq _080E77BC
	cmp r0, #0x01
	beq _080E77D2
	b _080E77EC
_080E77B8: .4byte 0x000001FF
_080E77BC:
	ldrh r0, [r3, #0x04]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	cmp r0, #0x28
	bls _080E77EC
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	b _080E77E2
_080E77D2:
	ldrh r0, [r3, #0x04]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x18
	cmp r0, #0x14
	bls _080E77EC
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
_080E77E2:
	strb r0, [r3, #0x04]
	ldrh r1, [r3, #0x04]
	ldr r0, _080E7800 @ =0xFFFFC03F
	ands r0, r1
	strh r0, [r3, #0x04]
_080E77EC:
	ldrb r0, [r3, #0x04]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	adds r0, #0x11
	movs r2, #0xF0
	lsls r2, r2, #0x08
	adds r1, r2, #0x0
	orrs r0, r1
	b _080E7A50
	.byte 0x00, 0x00
_080E7800: .4byte 0xFFFFC03F
_080E7804:
	adds r0, r1, #0x0
	subs r0, #0x08
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r4, #0x02
	ldrb r0, [r3, #0x04]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1D
	cmp r0, #0x07
	bls _080E781C
	b _080E7A4A
_080E781C:
	lsls r0, r0, #0x02
	ldr r1, _080E7828 @ =0x080E782C
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080E7828: .4byte 0x080E782C
	.byte 0x4C, 0x78, 0x0E, 0x08, 0x90, 0x78, 0x0E, 0x08, 0xD4, 0x78, 0x0E, 0x08, 0x14, 0x79, 0x0E, 0x08
	.byte 0x54, 0x79, 0x0E, 0x08, 0x94, 0x79, 0x0E, 0x08, 0xD4, 0x79, 0x0E, 0x08, 0x14, 0x7A, 0x0E, 0x08
	.byte 0x28, 0x04, 0x00, 0x14, 0x10, 0x38, 0x0E, 0x4D, 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01
	.byte 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34, 0x99, 0x88, 0xFF, 0x20, 0x80, 0x01, 0x08, 0x40
	.byte 0x00, 0x28, 0x00, 0xD1, 0xEB, 0xE0, 0x1A, 0x79, 0x91, 0x06, 0x49, 0x0F, 0x01, 0x31, 0x07, 0x20
	.byte 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43, 0xDA, 0xE0, 0x00, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0F, 0x38, 0x0E, 0x4D, 0x29, 0x1C, 0x08, 0x40
	.byte 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34, 0x99, 0x88, 0xFF, 0x20
	.byte 0x80, 0x01, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0xC9, 0xE0, 0x1A, 0x79, 0x91, 0x06, 0x49, 0x0F
	.byte 0x01, 0x31, 0x07, 0x20, 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43
	.byte 0xB8, 0xE0, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0E, 0x38, 0x0D, 0x4D
	.byte 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34
	.byte 0x98, 0x88, 0x80, 0x04, 0x00, 0x0E, 0x02, 0x28, 0x00, 0xD8, 0xA8, 0xE0, 0x1A, 0x79, 0x91, 0x06
	.byte 0x49, 0x0F, 0x01, 0x31, 0x07, 0x20, 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40
	.byte 0x08, 0x43, 0x97, 0xE0, 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0D, 0x38, 0x0D, 0x4D
	.byte 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34
	.byte 0x98, 0x88, 0x80, 0x04, 0x00, 0x0E, 0x04, 0x28, 0x00, 0xD8, 0x88, 0xE0, 0x1A, 0x79, 0x91, 0x06
	.byte 0x49, 0x0F, 0x01, 0x31, 0x07, 0x20, 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40
	.byte 0x08, 0x43, 0x77, 0xE0, 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0C, 0x38, 0x0D, 0x4D
	.byte 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34
	.byte 0x98, 0x88, 0x80, 0x04, 0x00, 0x0E, 0x06, 0x28, 0x69, 0xD9, 0x1A, 0x79, 0x91, 0x06, 0x49, 0x0F
	.byte 0x01, 0x31, 0x07, 0x20, 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43
	.byte 0x58, 0xE0, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0D, 0x38, 0x0D, 0x4D
	.byte 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34
	.byte 0x98, 0x88, 0x80, 0x04, 0x00, 0x0E, 0x04, 0x28, 0x49, 0xD9, 0x1A, 0x79, 0x91, 0x06, 0x49, 0x0F
	.byte 0x01, 0x31, 0x07, 0x20, 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43
	.byte 0x38, 0xE0, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0E, 0x38, 0x0D, 0x4D
	.byte 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34
	.byte 0x98, 0x88, 0x80, 0x04, 0x00, 0x0E, 0x02, 0x28, 0x29, 0xD9, 0x1A, 0x79, 0x91, 0x06, 0x49, 0x0F
	.byte 0x01, 0x31, 0x07, 0x20, 0x01, 0x40, 0xC9, 0x00, 0x39, 0x20, 0x40, 0x42, 0x10, 0x40, 0x08, 0x43
	.byte 0x18, 0xE0, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00, 0x28, 0x04, 0x00, 0x14, 0x0F, 0x38, 0x18, 0x4D
	.byte 0x29, 0x1C, 0x08, 0x40, 0x80, 0x22, 0xD2, 0x01, 0x11, 0x1C, 0x08, 0x43, 0x20, 0x80, 0x02, 0x34
	.byte 0x99, 0x88, 0xFF, 0x20, 0x80, 0x01, 0x08, 0x40, 0x00, 0x28, 0x08, 0xD0, 0x19, 0x79, 0x39, 0x20
	.byte 0x40, 0x42, 0x08, 0x40, 0x18, 0x71, 0x99, 0x88, 0x0E, 0x48, 0x08, 0x40, 0x98, 0x80
_080E7A4A:
	movs r5, #0xF0
	lsls r5, r5, #0x08
_080E7A4E:
	adds r0, r5, #0x0
_080E7A50:
	strh r0, [r4, #0x00]
	adds r4, #0x02
_080E7A54:
	ldrh r2, [r3, #0x04]
	lsls r1, r2, #0x12
	lsrs r1, r1, #0x18
	adds r1, #0x01
	movs r0, #0xFF
	ands r1, r0
	lsls r1, r1, #0x06
	ldr r0, _080E7A80 @ =0xFFFFC03F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x04]
	adds r4, #0x02
	movs r0, #0x88
	lsls r0, r0, #0x04
	add r0, r12
	str r4, [r0, #0x00]
_080E7A74:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
_080E7A80: .4byte 0xFFFFC03F
	thumb_func_start sub_80E7A84
sub_80E7A84:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	ldrh r1, [r5, #0x3C]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _080E7B38
	ldr r2, [r5, #0x44]
	ldrh r1, [r5, #0x34]
	ldr r3, [r3, #0x04]
	movs r4, #0xCC
	lsls r4, r4, #0x01
	adds r0, r3, r4
	adds r1, r1, r2
	ldrh r0, [r0, #0x00]
	adds r1, r1, r0
	ldr r2, [r5, #0x48]
	ldrh r0, [r5, #0x36]
	adds r4, #0x02
	adds r3, r3, r4
	adds r0, r0, r2
	ldrh r3, [r3, #0x00]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	movs r0, #0xC0
	lsls r0, r0, #0x0C
	adds r1, r1, r0
	movs r0, #0x84
	lsls r0, r0, #0x11
	cmp r1, r0
	bhi _080E7B38
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x0C
	negs r0, r0
	cmp r2, r0
	blt _080E7B38
	cmp r2, #0xAC
	bgt _080E7B38
	ldr r4, _080E7B40 @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r3, [r4, #0x00]
	movs r0, #0x43
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0F
	movs r1, #0xFF
	ands r1, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r3, #0x02
	mov r1, r12
	ldrb r2, [r1, #0x00]
	lsls r1, r2, #0x1E
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x0E
	ldr r0, _080E7B44 @ =0x000001FF
	ands r6, r0
	orrs r1, r6
	adds r0, r5, #0x0
	adds r0, #0x42
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x07
	lsls r0, r0, #0x0D
	orrs r1, r0
	lsls r2, r2, #0x1F
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0C
	orrs r1, r2
	strh r1, [r3, #0x00]
	adds r3, #0x02
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsrs r0, r0, #0x03
	movs r2, #0xF0
	lsls r2, r2, #0x08
	adds r1, r2, #0x0
	orrs r0, r1
	strh r0, [r3, #0x00]
	adds r3, #0x04
	str r3, [r4, #0x00]
_080E7B38:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E7B40: .4byte 0x0300034C
_080E7B44: .4byte 0x000001FF
	thumb_func_start sub_80E7B48
sub_80E7B48:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x058
	str r1, [sp, #0x008]
	str r2, [sp, #0x00C]
	adds r6, r3, #0x0
	ldr r1, [sp, #0x078]
	ldr r2, [sp, #0x07C]
	ldr r3, [sp, #0x00C]
	lsls r3, r3, #0x10
	str r3, [sp, #0x014]
	lsrs r3, r3, #0x10
	str r3, [sp, #0x010]
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x01C]
	ldr r0, [r0, #0x04]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r7, [r0, #0x00]
	lsrs r3, r1, #0x18
	str r3, [sp, #0x018]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x024]
	ldr r2, _080E7DEC @ =0x08200160
	movs r0, #0x01
	movs r1, #0x80
	bl alloc_heap_8018CEC
	str r0, [sp, #0x020]
	ldr r4, _080E7DF0 @ =0x040000D4
	adds r0, r7, #0x0
	adds r0, #0xC0
	str r0, [r4, #0x00]
	ldr r3, [sp, #0x020]
	str r3, [r4, #0x04]
	ldr r0, _080E7DF4 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r0, r7, #0x0
	adds r0, #0xE0
	str r0, [r4, #0x00]
	adds r3, #0x20
	str r3, [sp, #0x028]
	str r3, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r2, #0x40
	adds r2, r2, r7
	mov r8, r2
	str r2, [r4, #0x00]
	ldr r3, [sp, #0x020]
	adds r3, #0x40
	str r3, [sp, #0x02C]
	str r3, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E7DF8 @ =0x0800112C
	ldr r1, _080E7DFC @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x030]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r3, [sp, #0x010]
	lsls r3, r3, #0x10
	str r3, [sp, #0x038]
	lsrs r0, r3, #0x10
	str r0, [sp, #0x034]
	lsls r6, r6, #0x10
	asrs r1, r6, #0x10
	str r1, [sp, #0x03C]
	movs r2, #0x80
	lsls r2, r2, #0x0B
	adds r6, r6, r2
	lsrs r6, r6, #0x10
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x034]
	adds r3, r6, #0x0
	bl _call_via_r5
	mov r1, r8
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r4, #0x04]
	ldr r3, _080E7DF4 @ =0x84000008
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x028]
	str r2, [r4, #0x04]
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r3, #0x90
	lsls r3, r3, #0x01
	adds r0, r7, r3
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x02C]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	ldr r3, [sp, #0x030]
	adds r5, r5, r3
	ldr r0, [sp, #0x018]
	subs r0, #0x03
	lsls r0, r0, #0x03
	mov r8, r0
	ldr r1, [sp, #0x038]
	asrs r1, r1, #0x10
	str r1, [sp, #0x040]
	add r8, r1
	mov r2, r8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E7E04 @ =0x08001778
	ldr r1, _080E7DFC @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x044]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r3, [sp, #0x024]
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x018]
	subs r0, #0x05
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x048]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	movs r2, #0x18
	adds r3, r6, #0x0
	bl _call_via_r5
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r4, #0x04]
	ldr r3, _080E7DF4 @ =0x84000008
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x028]
	str r2, [r4, #0x04]
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r3, #0x60
	adds r3, r3, r7
	mov r10, r3
	str r3, [r4, #0x00]
	ldr r0, [sp, #0x02C]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, _080E7E00 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	ldr r3, [sp, #0x030]
	adds r5, r5, r3
	ldr r6, [sp, #0x01C]
	subs r6, #0x01
	lsls r6, r6, #0x03
	ldr r0, [sp, #0x03C]
	adds r6, r0, r6
	subs r6, #0x04
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, [sp, #0x024]
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x034]
	adds r3, r6, #0x0
	bl _call_via_r5
	mov r3, r10
	str r3, [r4, #0x00]
	ldr r0, [sp, #0x020]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [r4, #0x00]
	ldr r3, [sp, #0x028]
	str r3, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x02C]
	str r2, [r4, #0x04]
	ldr r3, _080E7DF4 @ =0x84000008
	str r3, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E7E00 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x030]
	adds r5, r5, r1
	ldr r2, [sp, #0x024]
	str r2, [sp, #0x000]
	movs r3, #0x03
	str r3, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E7E00 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x044]
	adds r5, r5, r1
	ldr r2, [sp, #0x024]
	str r2, [sp, #0x000]
	ldr r3, [sp, #0x048]
	str r3, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	movs r2, #0x18
	adds r3, r6, #0x0
	bl _call_via_r5
	adds r0, r7, #0x0
	adds r0, #0x80
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x020]
	str r0, [r4, #0x04]
	ldr r1, _080E7DF4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r6, _080E7E08 @ =0x080018A8
	ldr r2, _080E7DFC @ =0x08001010
	subs r6, r6, r2
	ldr r3, _080E7E00 @ =0x03000FB4
	ldr r5, [r3, #0x00]
	adds r5, r5, r6
	ldr r0, [sp, #0x03C]
	adds r0, #0x0C
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x01C]
	subs r0, #0x03
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x034]
	bl _call_via_r5
	adds r0, r7, #0x0
	adds r0, #0xA0
	str r0, [r4, #0x00]
	ldr r1, [sp, #0x020]
	str r1, [r4, #0x04]
	ldr r2, _080E7DF4 @ =0x84000008
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r3, _080E7E00 @ =0x03000FB4
	ldr r4, [r3, #0x00]
	adds r4, r4, r6
	ldr r0, [sp, #0x018]
	subs r0, #0x01
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x040]
	adds r0, r1, r0
	lsls r2, r0, #0x10
	lsrs r3, r2, #0x10
	str r3, [sp, #0x050]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x020]
	adds r2, r3, #0x0
	mov r3, r9
	bl _call_via_r4
	ldr r0, [sp, #0x020]
	bl free_heap_memory_8018C68
	add sp, #0x058
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E7DEC: .4byte 0x08200160
_080E7DF0: .4byte 0x040000D4
_080E7DF4: .4byte 0x84000008
_080E7DF8: .4byte 0x0800112C
_080E7DFC: .4byte 0x08001010
_080E7E00: .4byte 0x03000FB4
_080E7E04: .4byte 0x08001778
_080E7E08: .4byte 0x080018A8
	thumb_func_start sub_80E7E0C
sub_80E7E0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x064
	str r1, [sp, #0x00C]
	ldr r1, [sp, #0x084]
	ldr r4, [sp, #0x088]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r10, r3
	lsls r1, r1, #0x18
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x014]
	ldr r0, [r0, #0x04]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r7, [r0, #0x00]
	lsrs r0, r1, #0x18
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x018]
	ldr r2, _080E8208 @ =0x08200160
	movs r0, #0x01
	movs r1, #0x80
	bl alloc_heap_8018CEC
	mov r9, r0
	ldr r4, _080E820C @ =0x040000D4
	movs r1, #0xC8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	adds r2, #0x20
	str r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r2, _080E8210 @ =0x84000008
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r0, #0xE0
	lsls r0, r0, #0x01
	adds r0, r7, r0
	str r0, [sp, #0x020]
	str r0, [r4, #0x00]
	mov r1, r9
	adds r1, #0x40
	str r1, [sp, #0x024]
	str r1, [r4, #0x04]
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E8214 @ =0x0800112C
	ldr r2, _080E8218 @ =0x08001010
	subs r0, r0, r2
	str r0, [sp, #0x028]
	ldr r0, _080E821C @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x028]
	adds r5, r5, r1
	lsls r6, r6, #0x10
	str r6, [sp, #0x030]
	lsrs r2, r6, #0x10
	str r2, [sp, #0x02C]
	mov r0, r10
	lsls r6, r0, #0x10
	lsrs r1, r6, #0x10
	str r1, [sp, #0x034]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	ldr r3, [sp, #0x034]
	bl _call_via_r5
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	asrs r1, r6, #0x10
	str r1, [sp, #0x038]
	movs r2, #0x80
	lsls r2, r2, #0x0C
	adds r3, r6, r2
	lsrs r3, r3, #0x10
	str r3, [sp, #0x03C]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	bl _call_via_r5
	movs r2, #0xF8
	lsls r2, r2, #0x02
	adds r0, r7, r2
	str r0, [r4, #0x00]
	mov r0, r9
	str r0, [r4, #0x04]
	ldr r1, _080E8210 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r2, #0x20
	adds r0, r7, r2
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x01C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x88
	lsls r1, r1, #0x02
	adds r1, r7, r1
	str r1, [sp, #0x040]
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x028]
	adds r5, r5, r2
	ldr r0, [sp, #0x014]
	subs r0, #0x01
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x038]
	adds r0, r1, r0
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x044]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	bl _call_via_r5
	movs r1, #0xF0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, [sp, #0x014]
	subs r1, #0x02
	lsls r1, r1, #0x03
	mov r10, r1
	ldr r2, [sp, #0x038]
	add r10, r2
	mov r0, r10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x000]
	ldr r2, _080E821C @ =0x03000FB4
	ldr r5, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	mov r3, r10
	bl _call_via_r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r0, r7, r0
	str r0, [sp, #0x048]
	str r0, [r4, #0x00]
	mov r1, r9
	str r1, [r4, #0x04]
	ldr r2, _080E8210 @ =0x84000008
	str r2, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0xD8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x028]
	adds r5, r5, r2
	ldr r6, [sp, #0x010]
	subs r6, #0x03
	lsls r6, r6, #0x03
	ldr r0, [sp, #0x030]
	asrs r0, r0, #0x10
	str r0, [sp, #0x04C]
	adds r6, r0, r6
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, [sp, #0x018]
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	adds r2, r6, #0x0
	ldr r3, [sp, #0x034]
	bl _call_via_r5
	movs r1, #0xE8
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, [sp, #0x010]
	subs r0, #0x01
	lsls r0, r0, #0x03
	ldr r1, [sp, #0x04C]
	adds r0, r1, r0
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x050]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	ldr r0, _080E821C @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x050]
	ldr r3, [sp, #0x03C]
	bl _call_via_r5
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r1, r7, r1
	str r1, [sp, #0x054]
	str r1, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x84
	lsls r1, r1, #0x03
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x028]
	adds r5, r5, r2
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	adds r2, r6, #0x0
	ldr r3, [sp, #0x044]
	bl _call_via_r5
	movs r2, #0x8C
	lsls r2, r2, #0x03
	adds r0, r7, r2
	str r0, [r4, #0x00]
	mov r0, r9
	str r0, [r4, #0x04]
	ldr r1, _080E8210 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	ldr r0, _080E821C @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x050]
	mov r3, r10
	bl _call_via_r5
	movs r1, #0xA0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r0, _080E8220 @ =0x08001A60
	ldr r1, _080E8218 @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x058]
	ldr r2, _080E821C @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r0, [sp, #0x038]
	adds r0, #0x10
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x05C]
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x014]
	subs r0, #0x03
	lsls r0, r0, #0x0F
	lsrs r0, r0, #0x10
	str r0, [sp, #0x060]
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x02C]
	bl _call_via_r5
	ldr r2, [sp, #0x020]
	str r2, [r4, #0x00]
	mov r0, r9
	str r0, [r4, #0x04]
	ldr r1, _080E8210 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r2, #0xF0
	lsls r2, r2, #0x01
	adds r0, r7, r2
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x01C]
	str r0, [r4, #0x04]
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, [sp, #0x048]
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E8224 @ =0x080013E4
	mov r10, r1
	mov r2, r10
	ldr r0, _080E8218 @ =0x08001010
	subs r2, r2, r0
	mov r10, r2
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	add r5, r10
	ldr r2, [sp, #0x04C]
	adds r2, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r0, #0x04
	movs r1, #0x03
	bl __divsi3
	adds r6, r0, #0x0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	str r6, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	ldr r3, [sp, #0x034]
	bl _call_via_r5
	ldr r1, [sp, #0x040]
	str r1, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, [sp, #0x054]
	str r1, [r4, #0x00]
	ldr r2, [sp, #0x024]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r5, [r1, #0x00]
	add r5, r10
	ldr r2, [sp, #0x018]
	str r2, [sp, #0x000]
	movs r0, #0x03
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	mov r2, r8
	ldr r3, [sp, #0x044]
	bl _call_via_r5
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	str r0, [r4, #0x00]
	mov r2, r9
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	adds r1, #0x20
	adds r0, r7, r1
	str r0, [r4, #0x00]
	ldr r2, [sp, #0x01C]
	str r2, [r4, #0x04]
	ldr r0, _080E8210 @ =0x84000008
	str r0, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r1, _080E821C @ =0x03000FB4
	ldr r4, [r1, #0x00]
	ldr r2, [sp, #0x058]
	adds r4, r4, r2
	ldr r0, [sp, #0x018]
	str r0, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	ldr r2, [sp, #0x060]
	str r2, [sp, #0x008]
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ldr r2, [sp, #0x050]
	ldr r3, [sp, #0x05C]
	bl _call_via_r4
	mov r0, r9
	bl free_heap_memory_8018C68
	add sp, #0x064
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E8208: .4byte 0x08200160
_080E820C: .4byte 0x040000D4
_080E8210: .4byte 0x84000008
_080E8214: .4byte 0x0800112C
_080E8218: .4byte 0x08001010
_080E821C: .4byte 0x03000FB4
_080E8220: .4byte 0x08001A60
_080E8224: .4byte 0x080013E4
	thumb_func_start sub_80E8228
sub_80E8228:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	str r1, [sp, #0x008]
	mov r9, r3
	ldr r1, [sp, #0x060]
	ldr r3, [sp, #0x064]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x00C]
	mov r2, r9
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r1, r1, #0x18
	lsls r6, r3, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0x014]
	ldr r0, [r0, #0x04]
	movs r4, #0xC0
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r7, [r0, #0x00]
	lsrs r0, r1, #0x18
	str r0, [sp, #0x010]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r1, r2
	lsrs r0, r0, #0x18
	str r0, [sp, #0x01C]
	ldr r2, _080E849C @ =0x08200160
	movs r0, #0x01
	movs r1, #0x80
	bl alloc_heap_8018CEC
	str r0, [sp, #0x018]
	movs r4, #0x90
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	movs r0, #0x94
	lsls r0, r0, #0x03
	adds r0, r0, r7
	mov r8, r0
	str r0, [r1, #0x00]
	adds r2, #0x20
	str r2, [sp, #0x020]
	str r2, [r1, #0x04]
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r0, _080E84A8 @ =0x0800112C
	ldr r1, _080E84AC @ =0x08001010
	subs r0, r0, r1
	str r0, [sp, #0x024]
	ldr r2, _080E84B0 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r0
	ldr r4, [sp, #0x00C]
	lsls r4, r4, #0x10
	mov r10, r4
	lsrs r4, r4, #0x10
	str r4, [sp, #0x028]
	mov r0, r9
	lsls r0, r0, #0x10
	mov r9, r0
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	adds r2, r4, #0x0
	adds r3, r6, #0x0
	bl _call_via_r5
	mov r4, r8
	ldr r0, _080E84A0 @ =0x040000D4
	str r4, [r0, #0x00]
	ldr r1, [sp, #0x018]
	str r1, [r0, #0x04]
	ldr r2, _080E84A4 @ =0x84000008
	str r2, [r0, #0x08]
	ldr r0, [r0, #0x08]
	movs r4, #0x98
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x024]
	adds r5, r5, r1
	ldr r2, [sp, #0x010]
	subs r2, #0x02
	lsls r2, r2, #0x03
	mov r8, r2
	mov r4, r10
	asrs r4, r4, #0x10
	str r4, [sp, #0x02C]
	add r8, r4
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E84B4 @ =0x08001778
	ldr r4, _080E84AC @ =0x08001010
	subs r0, r0, r4
	str r0, [sp, #0x030]
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x030]
	adds r5, r5, r1
	ldr r2, [sp, #0x01C]
	str r2, [sp, #0x000]
	ldr r0, [sp, #0x010]
	subs r0, #0x03
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x034]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	movs r2, #0x10
	adds r3, r6, #0x0
	bl _call_via_r5
	movs r4, #0xA8
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	movs r0, #0xAC
	lsls r0, r0, #0x03
	adds r4, r7, r0
	str r4, [r1, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r1, #0x04]
	ldr r0, _080E84A4 @ =0x84000008
	str r0, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r1, _080E84B0 @ =0x03000FB4
	ldr r5, [r1, #0x00]
	ldr r2, [sp, #0x024]
	adds r5, r5, r2
	ldr r6, [sp, #0x014]
	subs r6, #0x01
	lsls r6, r6, #0x03
	mov r0, r9
	asrs r0, r0, #0x10
	mov r9, r0
	add r6, r9
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	movs r2, #0x02
	str r2, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x028]
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E84A0 @ =0x040000D4
	str r4, [r0, #0x00]
	ldr r1, [sp, #0x018]
	str r1, [r0, #0x04]
	ldr r2, _080E84A4 @ =0x84000008
	str r2, [r0, #0x08]
	ldr r0, [r0, #0x08]
	movs r4, #0xB0
	lsls r4, r4, #0x03
	adds r0, r7, r4
	ldr r1, _080E84A0 @ =0x040000D4
	str r0, [r1, #0x00]
	ldr r2, [sp, #0x020]
	str r2, [r1, #0x04]
	ldr r4, _080E84A4 @ =0x84000008
	str r4, [r1, #0x08]
	ldr r0, [r1, #0x08]
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x024]
	adds r5, r5, r1
	ldr r2, [sp, #0x01C]
	str r2, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	mov r2, r8
	adds r3, r6, #0x0
	bl _call_via_r5
	ldr r0, _080E84B0 @ =0x03000FB4
	ldr r5, [r0, #0x00]
	ldr r1, [sp, #0x030]
	adds r5, r5, r1
	ldr r2, [sp, #0x01C]
	str r2, [sp, #0x000]
	ldr r4, [sp, #0x034]
	str r4, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	movs r2, #0x10
	adds r3, r6, #0x0
	bl _call_via_r5
	movs r1, #0x9C
	lsls r1, r1, #0x03
	adds r0, r7, r1
	ldr r2, _080E84A0 @ =0x040000D4
	str r0, [r2, #0x00]
	ldr r4, [sp, #0x018]
	str r4, [r2, #0x04]
	ldr r0, _080E84A4 @ =0x84000008
	str r0, [r2, #0x08]
	ldr r0, [r2, #0x08]
	ldr r6, _080E84B8 @ =0x080018A8
	ldr r1, _080E84AC @ =0x08001010
	subs r6, r6, r1
	ldr r2, _080E84B0 @ =0x03000FB4
	ldr r5, [r2, #0x00]
	adds r5, r5, r6
	movs r4, #0x08
	add r9, r4
	mov r0, r9
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, [sp, #0x01C]
	str r1, [sp, #0x000]
	ldr r0, [sp, #0x014]
	subs r0, #0x02
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	ldr r2, [sp, #0x028]
	mov r3, r9
	bl _call_via_r5
	movs r2, #0xA4
	lsls r2, r2, #0x03
	adds r0, r7, r2
	ldr r4, _080E84A0 @ =0x040000D4
	str r0, [r4, #0x00]
	ldr r0, [sp, #0x018]
	str r0, [r4, #0x04]
	ldr r1, _080E84A4 @ =0x84000008
	str r1, [r4, #0x08]
	ldr r0, [r4, #0x08]
	ldr r2, _080E84B0 @ =0x03000FB4
	ldr r2, [r2, #0x00]
	adds r6, r2, r6
	ldr r0, [sp, #0x010]
	subs r0, #0x01
	lsls r2, r0, #0x03
	ldr r4, [sp, #0x02C]
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	ldr r0, [sp, #0x008]
	ldr r1, [sp, #0x018]
	mov r3, r9
	bl _call_via_r6
	ldr r0, [sp, #0x018]
	bl free_heap_memory_8018C68
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E849C: .4byte 0x08200160
_080E84A0: .4byte 0x040000D4
_080E84A4: .4byte 0x84000008
_080E84A8: .4byte 0x0800112C
_080E84AC: .4byte 0x08001010
_080E84B0: .4byte 0x03000FB4
_080E84B4: .4byte 0x08001778
_080E84B8: .4byte 0x080018A8
	thumb_func_start sub_80E84BC
sub_80E84BC:
	push {r4, r5, r6, lr}
	mov r12, r1
	ldr r0, [sp, #0x010]
	ldr r1, [sp, #0x014]
	ldr r2, [sp, #0x018]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	movs r0, #0x38
	ands r0, r5
	cmp r0, #0x00
	beq _080E85BE
	movs r0, #0xE0
	lsls r0, r0, #0x03
	ands r0, r5
	lsrs r4, r0, #0x08
	cmp r4, #0x01
	bgt _080E85BE
	cmp r4, #0x00
	blt _080E85BE
	mov r0, r12
	str r1, [r0, #0x44]
	movs r1, #0x80
	ands r1, r5
	lsls r1, r1, #0x10
	mov r2, r12
	adds r2, #0x43
	lsrs r1, r1, #0x17
	ldrb r3, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x00]
	cmp r4, #0x00
	bne _080E8518
	mov r3, r12
	adds r3, #0x42
	ldrb r0, [r3, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #0x00]
	b _080E851E
_080E8518:
	lsls r0, r6, #0x03
	mov r1, r12
	str r0, [r1, #0x48]
_080E851E:
	mov r1, r12
	ldr r0, [r1, #0x48]
	subs r0, #0x08
	str r0, [r1, #0x48]
	movs r0, #0x78
	ands r0, r5
	lsrs r0, r0, #0x03
	subs r0, #0x01
	cmp r0, #0x0A
	bhi _080E85BE
	lsls r0, r0, #0x02
	ldr r1, _080E853C @ =0x080E8540
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080E853C: .4byte 0x080E8540
	.byte 0x6C, 0x85, 0x0E, 0x08, 0x8E, 0x85, 0x0E, 0x08, 0x6C, 0x85, 0x0E, 0x08, 0xBE, 0x85, 0x0E, 0x08
	.byte 0xBE, 0x85, 0x0E, 0x08, 0xBE, 0x85, 0x0E, 0x08, 0xBE, 0x85, 0x0E, 0x08, 0xBE, 0x85, 0x0E, 0x08
	.byte 0x84, 0x85, 0x0E, 0x08, 0xA6, 0x85, 0x0E, 0x08, 0x84, 0x85, 0x0E, 0x08, 0x11, 0x78, 0x07, 0x20
	.byte 0x08, 0x40, 0x28, 0x21, 0x08, 0x43, 0x04, 0x21, 0x08, 0x43, 0x10, 0x70, 0x61, 0x46, 0x48, 0x6C
	.byte 0x04, 0x38, 0x1B, 0xE0, 0x11, 0x78, 0x07, 0x20, 0x08, 0x40, 0x48, 0x21, 0x0F, 0xE0, 0x11, 0x78
	.byte 0x07, 0x20, 0x08, 0x40, 0x38, 0x21, 0x08, 0x43, 0x04, 0x21, 0x08, 0x43, 0x10, 0x70, 0x61, 0x46
	.byte 0x48, 0x6C, 0x04, 0x38, 0x0A, 0xE0, 0x11, 0x78, 0x07, 0x20, 0x08, 0x40, 0x68, 0x21, 0x08, 0x43
	.byte 0x02, 0x21, 0x08, 0x43, 0x10, 0x70, 0x61, 0x46, 0x48, 0x6C, 0x08, 0x38, 0x48, 0x64
_080E85BE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_80E85C4
sub_80E85C4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x00C]
	adds r7, r1, #0x0
	ldrh r0, [r7, #0x3C]
	movs r1, #0x07
	ands r1, r0
	cmp r1, #0x01
	bge _080E85E0
	b _080E86EC
_080E85E0:
	cmp r1, #0x02
	ble _080E85EA
	cmp r1, #0x03
	beq _080E866C
	b _080E86EC
_080E85EA:
	movs r0, #0x34
	ldsh r1, [r7, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E85F6
	adds r0, r1, #0x7
_080E85F6:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x36
	ldsh r0, [r7, r1]
	adds r5, r0, #0x0
	cmp r0, #0x00
	bge _080E860C
	adds r5, r0, #0x7
_080E860C:
	asrs r5, r5, #0x03
	lsls r5, r5, #0x03
	subs r5, r0, r5
	movs r3, #0x38
	adds r3, r3, r7
	mov r10, r3
	ldrb r4, [r3, #0x00]
	movs r0, #0x39
	adds r0, r0, r7
	mov r9, r0
	ldrb r6, [r0, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r1, _080E8664 @ =0x03000F8C
	mov r12, r1
	adds r1, r4, #0x1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r2
	adds r2, #0x08
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r3, r5, #0x0
	adds r3, #0x08
	subs r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x0D
	add r8, r4
	mov r4, r8
	str r4, [sp, #0x000]
	subs r6, #0x01
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x0D
	adds r5, r5, r6
	str r5, [sp, #0x004]
	ldr r4, _080E8668 @ =0x55555555
	str r4, [sp, #0x008]
	mov r5, r12
	ldr r4, [r5, #0x00]
	bl _call_via_r4
	mov r2, r10
	mov r5, r9
	b _080E874C
	.byte 0x00, 0x00
_080E8664: .4byte 0x03000F8C
_080E8668: .4byte 0x55555555
_080E866C:
	movs r0, #0x34
	ldsh r1, [r7, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E8678
	adds r0, r1, #0x7
_080E8678:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x36
	ldsh r0, [r7, r1]
	adds r5, r0, #0x0
	cmp r0, #0x00
	bge _080E868E
	adds r5, r0, #0x7
_080E868E:
	asrs r5, r5, #0x03
	lsls r5, r5, #0x03
	subs r5, r0, r5
	adds r3, r7, #0x0
	adds r3, #0x38
	str r3, [sp, #0x010]
	ldrb r4, [r3, #0x00]
	movs r0, #0x39
	adds r0, r0, r7
	mov r9, r0
	ldrb r6, [r0, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r1, _080E86E4 @ =0x03000F8C
	mov r12, r1
	adds r1, r4, #0x1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r2
	adds r2, #0x08
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r3, r5, #0x0
	adds r3, #0x08
	subs r4, #0x01
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x0D
	add r8, r4
	mov r4, r8
	str r4, [sp, #0x000]
	subs r6, #0x01
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x0D
	adds r5, r5, r6
	str r5, [sp, #0x004]
	ldr r4, _080E86E8 @ =0x88888888
	str r4, [sp, #0x008]
	mov r5, r12
	ldr r4, [r5, #0x00]
	bl _call_via_r4
	ldr r2, [sp, #0x010]
	mov r5, r9
	b _080E874C
_080E86E4: .4byte 0x03000F8C
_080E86E8: .4byte 0x88888888
_080E86EC:
	movs r0, #0x34
	ldsh r1, [r7, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E86F8
	adds r0, r1, #0x7
_080E86F8:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r1, #0x36
	ldsh r0, [r7, r1]
	adds r3, r0, #0x0
	cmp r0, #0x00
	bge _080E870E
	adds r3, r0, #0x7
_080E870E:
	asrs r3, r3, #0x03
	lsls r3, r3, #0x03
	subs r3, r0, r3
	movs r4, #0x38
	adds r4, r4, r7
	mov r9, r4
	ldrb r4, [r4, #0x00]
	movs r5, #0x39
	adds r5, r5, r7
	mov r8, r5
	ldrb r5, [r5, #0x00]
	ldr r0, [r7, #0x2C]
	ldr r6, _080E87A4 @ =0x03000F8C
	adds r1, r4, #0x1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r4, r4, #0x03
	adds r4, r2, r4
	str r4, [sp, #0x000]
	lsls r5, r5, #0x03
	adds r5, r3, r5
	str r5, [sp, #0x004]
	movs r4, #0x00
	str r4, [sp, #0x008]
	ldr r4, [r6, #0x00]
	bl _call_via_r4
	mov r2, r9
	mov r5, r8
_080E874C:
	ldr r0, [r7, #0x2C]
	ldr r3, [sp, #0x00C]
	ldr r1, [r3, #0x04]
	movs r4, #0xCA
	lsls r4, r4, #0x01
	adds r1, r1, r4
	ldr r1, [r1, #0x00]
	subs r1, r0, r1
	ldrb r3, [r2, #0x00]
	adds r3, #0x01
	ldrb r2, [r5, #0x00]
	adds r2, #0x01
	lsls r2, r2, #0x02
	muls r2, r3
	lsls r2, r2, #0x03
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	adds r2, r7, #0x0
	strb r4, [r2, #0x0C]
	movs r0, #0x36
	ldsh r1, [r2, r0]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _080E8784
	adds r0, r1, #0x7
_080E8784:
	asrs r0, r0, #0x03
	lsls r0, r0, #0x03
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r4, r3, #0x0
	adds r4, #0x09
	ldrb r0, [r5, #0x00]
	subs r1, r0, #0x4
	cmp r1, #0x05
	bgt _080E87AC
	ldr r0, _080E87A8 @ =0x083B9530
	adds r0, r1, r0
	ldrb r0, [r0, #0x00]
	adds r0, r4, r0
	b _080E87B0
_080E87A4: .4byte 0x03000F8C
_080E87A8: .4byte 0x083B9530
_080E87AC:
	adds r0, r3, #0x0
	adds r0, #0x0C
_080E87B0:
	strb r0, [r2, #0x0D]
	ldrb r0, [r2, #0x12]
	movs r1, #0x21
	negs r1, r1
	ands r1, r0
	ldr r0, [r2, #0x08]
	adds r0, #0x01
	str r0, [r2, #0x08]
	movs r0, #0x02
	negs r0, r0
	ands r1, r0
	subs r0, #0x01
	ands r1, r0
	subs r0, #0x0A
	ands r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r2, #0x12]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_80E87E4
sub_80E87E4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x010
	adds r7, r0, #0x0
	ldr r2, _080E8864 @ =0x08200168
	movs r0, #0x01
	movs r1, #0x40
	bl alloc_heap_8018CEC
	str r0, [r7, #0x00]
	adds r4, r0, #0x0
	ldr r0, _080E8868 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x40
	bl _call_via_r3
	ldr r1, _080E886C @ =0x00008001
	movs r0, #0x00
	str r0, [sp, #0x000]
	add r0, sp, #0x00C
	str r0, [sp, #0x004]
	movs r0, #0x0F
	str r0, [sp, #0x008]
	movs r0, #0x07
	movs r2, #0x01
	movs r3, #0x00
	bl sub_8021574
	movs r6, #0x04
	movs r5, #0x01
	negs r5, r5
_080E8824:
	movs r0, #0xFF
	strb r0, [r4, #0x0C]
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x00
	ldr r1, _080E8870 @ =0x00008004
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	movs r1, #0x00
	strb r1, [r0, #0x1F]
	str r1, [sp, #0x000]
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	lsls r0, r6, #0x10
	ldr r1, _080E8874 @ =0xFFFF0000
	adds r0, r0, r1
	adds r4, #0x10
	lsrs r6, r0, #0x10
	cmp r0, #0x00
	bgt _080E8824
	adds r0, r7, #0x0
	add sp, #0x010
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080E8864: .4byte 0x08200168
_080E8868: .4byte 0x03001034
_080E886C: .4byte 0x00008001
_080E8870: .4byte 0x00008004
_080E8874: .4byte 0xFFFF0000
	thumb_func_start sub_80E8878
sub_80E8878:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	ldr r4, [sp, #0x02C]
	ldr r5, [sp, #0x030]
	ldr r6, [sp, #0x034]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	lsls r2, r2, #0x18
	lsrs r1, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x008]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r9, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r8, r5
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r10, r6
	movs r7, #0x00
	ldr r5, [r0, #0x00]
_080E88B0:
	ldrb r6, [r5, #0x0F]
	cmp r6, #0x00
	bne _080E8920
	ldr r4, [r5, #0x00]
	str r6, [sp, #0x000]
	adds r0, r4, #0x0
	movs r2, #0x01
	negs r2, r2
	movs r3, #0x00
	bl sub_801E150
	mov r0, sp
	ldrb r0, [r0, #0x04]
	strb r0, [r5, #0x0C]
	mov r1, sp
	ldrb r1, [r1, #0x08]
	strb r1, [r5, #0x0E]
	mov r2, r9
	strh r2, [r5, #0x04]
	mov r0, r8
	strh r0, [r5, #0x06]
	strh r6, [r5, #0x08]
	strh r6, [r5, #0x0A]
	mov r1, r10
	strb r1, [r5, #0x0D]
	movs r0, #0x01
	strb r0, [r5, #0x0F]
	ldrb r1, [r4, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r2, #0x31
	negs r2, r2
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	adds r2, #0x24
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	adds r2, #0x09
	adds r1, r2, #0x0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x1F]
	strh r6, [r4, #0x0E]
	adds r0, r4, #0x0
	bl sprite_show_8020CBC
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	b _080E8934
_080E8920:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x09
	adds r0, r0, r2
	adds r5, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080E88B0
	movs r0, #0xFF
_080E8934:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_80E8944
sub_80E8944:
	add sp, #-0x010
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x034]
	str r1, [sp, #0x038]
	str r2, [sp, #0x03C]
	str r3, [sp, #0x040]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bne _080E8964
	movs r0, #0x00
	b _080E8B72
_080E8964:
	movs r0, #0x00
	mov r8, r0
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r2, #0x00
	str r2, [sp, #0x008]
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x038]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	mov r9, r0
	add r1, sp, #0x034
	movs r2, #0x20
	movs r0, #0x20
	strb r0, [r1, #0x0D]
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x0C]
	str r0, [sp, #0x00C]
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x0D]
	str r0, [sp, #0x010]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
_080E899A:
	ldr r0, [sp, #0x03C]
	ldrb r4, [r0, #0x00]
_080E899E:
	add r0, sp, #0x034
	ldrb r0, [r0, #0x0C]
	ldr r1, [sp, #0x000]
	cmp r1, r0
	bcs _080E89AA
	str r0, [sp, #0x000]
_080E89AA:
	add r0, sp, #0x034
	ldrb r1, [r0, #0x12]
	movs r3, #0x20
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _080E89E8
	add r0, sp, #0x034
	strb r1, [r0, #0x0C]
	adds r2, r0, #0x0
	adds r1, r0, #0x0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x1C
	add r0, r9
	ldrb r1, [r1, #0x0D]
	adds r0, r0, r1
	strb r0, [r2, #0x0D]
	ldr r0, [sp, #0x038]
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x00]
	movs r1, #0x0F
	ands r0, r1
	lsls r0, r0, #0x02
	mov r9, r0
	adds r1, r2, #0x0
	ldrb r0, [r1, #0x12]
	orrs r0, r3
	strb r0, [r1, #0x12]
_080E89E8:
	add r0, sp, #0x034
	ldrb r0, [r0, #0x0D]
	add r0, r9
	cmp r8, r0
	bcs _080E89F4
	mov r8, r0
_080E89F4:
	cmp r4, #0x00
	bne _080E8A24
	movs r2, #0x20
	negs r2, r2
	add r8, r2
	ldr r0, [sp, #0x004]
	ldr r1, [sp, #0x000]
	cmp r0, r1
	bcs _080E8A08
	str r1, [sp, #0x004]
_080E8A08:
	ldr r2, [sp, #0x008]
	cmp r2, r8
	bcs _080E8A12
	mov r0, r8
	str r0, [sp, #0x008]
_080E8A12:
	ldr r1, _080E8A20 @ =0x0000FFFF
	ldr r2, [sp, #0x008]
	ands r1, r2
	ldr r2, [sp, #0x004]
	lsls r0, r2, #0x10
	orrs r0, r1
	b _080E8B72
_080E8A20: .4byte 0x0000FFFF
_080E8A24:
	cmp r4, #0xFF
	bne _080E8A9E
	ldr r1, [sp, #0x03C]
	ldrb r2, [r1, #0x01]
	movs r0, #0xE0
	ands r0, r2
	cmp r0, #0x00
	bne _080E8A3A
	movs r5, #0x1F
	ands r5, r2
	b _080E8A3C
_080E8A3A:
	movs r5, #0x00
_080E8A3C:
	ldrb r4, [r1, #0x02]
	adds r0, r1, #0x2
	str r0, [sp, #0x03C]
	add r0, sp, #0x034
	movs r1, #0x01
	bl sub_8199888
	cmp r5, #0x11
	beq _080E8A50
	b _080E8B5C
_080E8A50:
	cmp r4, #0x01
	beq _080E8A56
	b _080E8B5C
_080E8A56:
	ldr r0, [sp, #0x048]
	ands r4, r0
	cmp r4, #0x00
	beq _080E8A9A
	add r0, sp, #0x034
	mov r1, sp
	ldrb r1, [r1, #0x0C]
	strb r1, [r0, #0x0C]
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0, #0x0D]
	adds r2, r0, #0x0
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x20
	negs r0, r0
	add r8, r0
	ldr r1, [sp, #0x004]
	ldr r2, [sp, #0x000]
	cmp r1, r2
	bcs _080E8A86
	str r2, [sp, #0x004]
_080E8A86:
	ldr r0, [sp, #0x008]
	cmp r0, r8
	bcs _080E8A90
	mov r1, r8
	str r1, [sp, #0x008]
_080E8A90:
	movs r2, #0x00
	mov r8, r2
	movs r0, #0x00
	str r0, [sp, #0x000]
	b _080E8B5C
_080E8A9A:
	movs r4, #0x00
	b _080E899E
_080E8A9E:
	cmp r4, #0x20
	bne _080E8AB6
	add r2, sp, #0x034
	adds r1, r2, #0x0
	adds r0, r1, #0x0
	ldrh r0, [r0, #0x12]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1C
	ldrb r1, [r1, #0x0C]
	adds r0, r0, r1
	strb r0, [r2, #0x0C]
	b _080E8B56
_080E8AB6:
	movs r0, #0xFF
	subs r0, r0, r4
	ldr r2, [sp, #0x038]
	cmp r0, #0x05
	bgt _080E8AD4
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080E8AD4
	ldr r0, [sp, #0x03C]
	adds r0, #0x01
	str r0, [sp, #0x03C]
	adds r7, r1, #0x0
	b _080E8AD6
_080E8AD4:
	ldr r7, [r2, #0x00]
_080E8AD6:
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x18
	mov r12, r0
	ldr r0, [sp, #0x03C]
	ldrb r4, [r0, #0x00]
	movs r1, #0x0F
	mov r10, r1
	mov r0, r12
	lsrs r2, r0, #0x18
	ands r2, r1
	lsls r3, r2, #0x02
	add r0, sp, #0x034
	ldrb r1, [r0, #0x12]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080E8AFA
	lsls r3, r2, #0x03
_080E8AFA:
	cmp r9, r3
	bcs _080E8B00
	mov r9, r3
_080E8B00:
	add r2, sp, #0x034
	adds r1, r2, #0x0
	adds r0, r1, #0x0
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	ldrb r1, [r1, #0x0C]
	adds r6, r0, r1
	strb r6, [r2, #0x0C]
	adds r0, r2, #0x0
	ldrb r5, [r0, #0x12]
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0x00
	beq _080E8B42
	adds r3, r2, #0x0
	lsrs r1, r4, #0x03
	lsls r1, r1, #0x02
	adds r1, r1, r7
	movs r0, #0x07
	ands r4, r0
	lsls r2, r4, #0x02
	ldr r0, [r1, #0x04]
	lsrs r0, r2
	mov r1, r10
	ands r0, r1
	adds r0, #0x01
	lsls r1, r5, #0x1E
	lsrs r1, r1, #0x1F
	lsls r0, r1
	adds r0, r6, r0
	strb r0, [r3, #0x0C]
	b _080E8B56
_080E8B42:
	add r2, sp, #0x034
	mov r0, r12
	lsrs r1, r0, #0x1A
	movs r0, #0xFC
	ands r1, r0
	lsls r0, r5, #0x1E
	lsrs r0, r0, #0x1F
	lsls r1, r0
	adds r1, r6, r1
	strb r1, [r2, #0x0C]
_080E8B56:
	ldr r0, [sp, #0x03C]
	adds r0, #0x01
	str r0, [sp, #0x03C]
_080E8B5C:
	movs r1, #0x00
	cmp r1, #0x00
	bne _080E8B64
	b _080E899A
_080E8B64:
	ldr r0, [sp, #0x03C]
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E8B6E
	b _080E899A
_080E8B6E:
	str r1, [sp, #0x03C]
	b _080E899A
_080E8B72:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x010
	bx r3
	thumb_func_start sub_80E8B84
sub_80E8B84:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r3, [r4, #0x08]
	subs r0, r3, #0x1
	ldrb r2, [r0, #0x00]
	adds r5, r2, #0x0
	ldrb r6, [r3, #0x00]
	cmp r1, #0x00
	beq _080E8C1C
	cmp r2, #0x0A
	bls _080E8B9E
	adds r0, r3, #0x1
	str r0, [r4, #0x08]
_080E8B9E:
	cmp r2, #0x0E
	beq _080E8BB6
	cmp r2, #0x0E
	bgt _080E8BAC
	cmp r2, #0x0A
	beq _080E8C0C
	b _080E8C1C
_080E8BAC:
	cmp r5, #0x0F
	beq _080E8BD4
	cmp r5, #0x10
	beq _080E8BEC
	b _080E8C1C
_080E8BB6:
	ldr r0, _080E8BD0 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x04]
	ldrh r1, [r1, #0x00]
	bl sub_80E8D20
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8BD0: .4byte 0x03000FBC
_080E8BD4:
	ldr r0, _080E8BE8 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	movs r1, #0x00
	b _080E8BFE
_080E8BE8: .4byte 0x03000FBC
_080E8BEC:
	ldr r0, _080E8C08 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x08]
	str r0, [r1, #0x0C]
	adds r0, r1, #0x0
	adds r0, #0x10
	ldr r1, [r1, #0x00]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
_080E8BFE:
	bl sub_80E8C28
	str r0, [r4, #0x08]
	b _080E8C1C
	.byte 0x00, 0x00
_080E8C08: .4byte 0x03000FBC
_080E8C0C:
	ldr r0, _080E8C24 @ =0x03000FBC
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	beq _080E8C1C
	str r0, [r4, #0x08]
	movs r0, #0x00
	str r0, [r1, #0x0C]
_080E8C1C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E8C24: .4byte 0x03000FBC
	thumb_func_start sub_80E8C28
sub_80E8C28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	adds r5, r2, #0x0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	adds r4, r7, #0x0
	movs r0, #0x00
	mov r10, r0
	cmp r5, #0x00
	bge _080E8C56
	cmp r6, #0x00
	beq _080E8C4E
	movs r1, #0x01
	mov r10, r1
	b _080E8C54
_080E8C4E:
	movs r0, #0x2D
	strb r0, [r7, #0x00]
	adds r4, r7, #0x1
_080E8C54:
	negs r5, r5
_080E8C56:
	ldr r1, _080E8C78 @ =0x000F4240
	adds r0, r5, #0x0
	bl __modsi3
	adds r5, r0, #0x0
	movs r0, #0x00
	mov r12, r0
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r3, r0, #0x0
	cmp r2, #0x00
	beq _080E8C7C
	movs r0, #0x06
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080E8C7E
_080E8C78: .4byte 0x000F4240
_080E8C7C:
	movs r0, #0x00
_080E8C7E:
	adds r2, r0, #0x0
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bhi _080E8CEC
	ldr r0, _080E8CCC @ =0x083B9538
	mov r9, r0
	asrs r3, r3, #0x10
	mov r8, r3
_080E8C90:
	movs r6, #0x00
	asrs r0, r1, #0x0E
	add r0, r9
	ldr r3, [r0, #0x00]
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bne _080E8CA2
	movs r1, #0x01
	mov r12, r1
_080E8CA2:
	lsls r2, r2, #0x10
	cmp r5, r3
	bcc _080E8CB4
_080E8CA8:
	subs r5, r5, r3
	adds r0, r6, #0x1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r5, r3
	bcs _080E8CA8
_080E8CB4:
	cmp r6, #0x00
	bne _080E8CBE
	mov r0, r12
	cmp r0, #0x00
	beq _080E8CD0
_080E8CBE:
	adds r0, r6, #0x0
	adds r0, #0x30
	strb r0, [r4, #0x00]
	movs r1, #0x01
	mov r12, r1
	b _080E8CDA
	.byte 0x00, 0x00
_080E8CCC: .4byte 0x083B9538
_080E8CD0:
	movs r0, #0x20
	strb r0, [r4, #0x00]
	mov r0, r8
	cmp r0, #0x00
	beq _080E8CDC
_080E8CDA:
	adds r4, #0x01
_080E8CDC:
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r2, r1
	lsrs r2, r0, #0x10
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x05
	bls _080E8C90
_080E8CEC:
	movs r0, #0xFF
	strb r0, [r4, #0x00]
	movs r0, #0x0A
	strb r0, [r4, #0x01]
	movs r0, #0x00
	strb r0, [r4, #0x02]
	mov r0, r10
	cmp r0, #0x00
	beq _080E8D0E
_080E8CFE:
	subs r4, #0x01
	cmp r4, r7
	beq _080E8D0A
	ldrb r0, [r4, #0x00]
	cmp r0, #0x20
	bne _080E8CFE
_080E8D0A:
	movs r0, #0x2D
	strb r0, [r4, #0x00]
_080E8D0E:
	adds r0, r7, #0x0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
