	.syntax unified
	.text

	thumb_func_start sub_809A9A0
sub_809A9A0:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0809A9B0
	str r0, [r5, #0x4C]
	b _0809AAEC
_0809A9B0:
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bge _0809A9DA
	ldr r0, _0809AA8C @ =0x0000015D
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x28
	bl sub_81DD77C
	adds r0, #0x1E
	strh r0, [r4, #0x00]
_0809A9DA:
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bge _0809AA1E
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _0809A9F0
	adds r1, #0xFF
_0809A9F0:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x14]
	cmp r2, #0x00
	bge _0809A9FA
	adds r2, #0xFF
_0809A9FA:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _0809AA04
	adds r3, #0xFF
_0809AA04:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0809AA90 @ =0x00002C7D
	bl sub_80DF024
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x0A
	bl sub_81DD77C
	adds r0, #0x32
	str r0, [r4, #0x00]
_0809AA1E:
	movs r6, #0x00
	ldr r3, [r5, #0x30]
	adds r0, r3, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0809AA4A
	ldr r0, [r3, #0x2C]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x0E]
	ldr r2, [r3, #0x08]
	adds r1, r0, #0x1
	strh r1, [r2, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	movs r6, #0x01
_0809AA4A:
	ldr r0, [r5, #0x30]
	ldr r3, [r0, #0x30]
	cmp r3, #0x00
	beq _0809AA7C
	adds r0, r3, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	beq _0809AA7C
	ldr r0, [r3, #0x2C]
	ldr r0, [r0, #0x08]
	ldrh r0, [r0, #0x0E]
	ldr r2, [r3, #0x08]
	adds r1, r0, #0x1
	strh r1, [r2, #0x0E]
	subs r0, #0x01
	strh r0, [r4, #0x0E]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x00]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r4, #0x02]
	movs r0, #0x02
	orrs r6, r0
_0809AA7C:
	cmp r6, #0x01
	beq _0809AAB2
	cmp r6, #0x01
	bgt _0809AA94
	cmp r6, #0x00
	beq _0809AA9A
	b _0809AAEC
	.byte 0x00, 0x00
_0809AA8C: .4byte 0x0000015D
_0809AA90: .4byte 0x00002C7D
_0809AA94:
	cmp r6, #0x02
	beq _0809AACC
	b _0809AAEC
_0809AA9A:
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x03
	strh r1, [r0, #0x0E]
	ldr r0, [r5, #0x30]
	ldr r0, [r0, #0x30]
	cmp r0, #0x00
	beq _0809AAEC
	ldr r0, [r0, #0x08]
	strh r1, [r0, #0x0E]
	b _0809AAEC
_0809AAB2:
	ldr r3, [r5, #0x30]
	ldr r2, [r3, #0x30]
	cmp r2, #0x00
	beq _0809AAEC
	ldr r1, [r3, #0x14]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _0809AAE2
	ldr r1, [r2, #0x08]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	b _0809AAEA
_0809AACC:
	ldr r2, [r5, #0x30]
	ldr r3, [r2, #0x30]
	ldr r1, [r3, #0x14]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	bge _0809AAE2
	ldr r1, [r2, #0x08]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	subs r0, #0x03
	b _0809AAEA
_0809AAE2:
	ldr r1, [r2, #0x08]
	ldr r0, [r3, #0x08]
	ldrh r0, [r0, #0x0E]
	adds r0, #0x01
_0809AAEA:
	strh r0, [r1, #0x0E]
_0809AAEC:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
