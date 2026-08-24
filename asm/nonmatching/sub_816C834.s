	.syntax unified
	.text

	thumb_func_start sub_816C834
sub_816C834:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x1C]
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _0816C844
	b _0816C95E
_0816C844:
	ldr r6, [r4, #0x08]
	ldr r0, [r4, #0x00]
	cmp r0, #0x02
	beq _0816C864
	cmp r0, #0x02
	bgt _0816C856
	cmp r0, #0x00
	beq _0816C85C
	b _0816C956
_0816C856:
	cmp r0, #0x06
	beq _0816C86C
	b _0816C956
_0816C85C:
	adds r0, r4, #0x0
	bl sub_816BAB4
	b _0816C956
_0816C864:
	adds r0, r4, #0x0
	bl sub_816BD78
	b _0816C956
_0816C86C:
	ldr r1, [r5, #0x1C]
	ldr r2, [r5, #0x2C]
	ldr r3, [r5, #0x30]
	ldr r0, [r5, #0x34]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_816BEC4
	adds r4, r0, #0x0
	ldr r0, _0816C8DC @ =0x08218EB6
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	bne _0816C8A0
	ldr r0, [r5, #0x64]
	adds r0, #0x3C
	str r0, [r5, #0x64]
	ldr r0, [r5, #0x48]
	ldr r2, [r0, #0x10]
	ldrb r0, [r2, #0x12]
	movs r3, #0x11
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x12]
_0816C8A0:
	cmp r4, #0x00
	blt _0816C8E4
	cmp r4, #0x00
	ble _0816C956
	movs r0, #0x2E
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	ldr r0, [r1, #0x18]
	adds r0, r0, r4
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bge _0816C8C2
	movs r0, #0x00
	str r0, [r1, #0x18]
_0816C8C2:
	ldr r0, [r1, #0x18]
	ldr r2, _0816C8E0 @ =0x000003E7
	cmp r0, r2
	ble _0816C8CC
	str r2, [r1, #0x18]
_0816C8CC:
	ldr r0, [r1, #0x34]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	bge _0816C956
	str r2, [r1, #0x34]
	movs r0, #0x01
	str r0, [r1, #0x50]
	b _0816C956
_0816C8DC: .4byte 0x08218EB6
_0816C8E0: .4byte 0x000003E7
_0816C8E4:
	ldr r1, [r5, #0x38]
	ldr r0, [r1, #0x18]
	subs r0, r0, r4
	str r0, [r1, #0x18]
	cmp r0, #0x00
	bge _0816C8F4
	movs r0, #0x00
	str r0, [r1, #0x18]
_0816C8F4:
	ldr r0, [r1, #0x18]
	ldr r2, _0816C934 @ =0x000003E7
	cmp r0, r2
	ble _0816C8FE
	str r2, [r1, #0x18]
_0816C8FE:
	ldr r0, [r1, #0x34]
	ldr r2, [r1, #0x18]
	cmp r0, r2
	bge _0816C90C
	str r2, [r1, #0x34]
	movs r0, #0x01
	str r0, [r1, #0x50]
_0816C90C:
	ldr r0, [r5, #0x60]
	cmp r0, #0x00
	bne _0816C938
	ldr r1, [r5, #0x30]
	ldr r0, [r1, #0x78]
	cmp r0, #0x00
	bne _0816C956
	movs r0, #0x03
	str r0, [r1, #0x78]
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	adds r0, #0x10
	str r0, [r1, #0x00]
	movs r0, #0x40
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _0816C956
	.byte 0x00, 0x00
_0816C934: .4byte 0x000003E7
_0816C938:
	ldr r1, [r5, #0x34]
	ldr r0, [r1, #0x78]
	cmp r0, #0x00
	bne _0816C956
	movs r0, #0x03
	str r0, [r1, #0x78]
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	adds r0, #0x10
	str r0, [r1, #0x00]
	movs r0, #0x40
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0816C956:
	adds r4, r6, #0x0
	cmp r4, #0x00
	beq _0816C95E
	b _0816C844
_0816C95E:
	ldr r0, [r5, #0x38]
	movs r1, #0x00
	bl sub_816B690
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
