	.syntax unified
	.text

	thumb_func_start sub_8106A30
sub_8106A30:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	ldr r0, _08106A7C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, _08106A80 @ =0x00000342
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	lsls r4, r4, #0x04
	adds r4, #0x28
	movs r0, #0x16
	ldsh r5, [r6, r0]
	adds r0, r5, #0x0
	movs r1, #0xB8
	bl sub_810D260
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_810D34C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08106A74
	adds r0, r2, #0x0
	bl sub_807FB34
	movs r0, #0x00
	strh r0, [r6, #0x10]
	ldr r0, _08106A84 @ =0x08107249
	str r0, [r6, #0x04]
_08106A74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106A7C: .4byte 0x03000FD8
_08106A80: .4byte 0x00000342
_08106A84: .4byte sub_8107248
