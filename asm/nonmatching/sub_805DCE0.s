	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r2, [r4, #0x08]
	ldrh r3, [r2, #0x04]
	movs r0, #0x04
	ldsh r1, [r2, r0]
	ldr r0, _0805DD3C @ =0x0000013F
	cmp r1, r0
	bgt _0805DD40
	adds r0, r3, #0x0
	adds r0, #0x0C
	strh r0, [r2, #0x04]
	ldr r1, [r4, #0x08]
	ldrh r0, [r1, #0x06]
	adds r0, #0x0C
	strh r0, [r1, #0x06]
	ldr r1, [r4, #0x38]
	adds r0, r1, #0x0
	subs r0, #0x80
	str r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0805DD10
	adds r0, #0xFF
_0805DD10:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _0805DD1C
	adds r0, #0xFF
_0805DD1C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _0805DD28
	adds r0, #0xFF
_0805DD28:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	b _0805DD4A
	.byte 0x00, 0x00
_0805DD3C: .4byte 0x0000013F
_0805DD40:
	movs r1, #0xA0
	lsls r1, r1, #0x01
	strh r1, [r2, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
_0805DD4A:
	ldr r0, [r4, #0x28]
	adds r0, #0xB4
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _0805DD66
	ldr r0, [r4, #0x08]
	movs r1, #0xA0
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	ldr r0, _0805DD70 @ =0x0805DD75
	str r0, [r4, #0x4C]
_0805DD66:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805DD70: .4byte sub_805DD74
