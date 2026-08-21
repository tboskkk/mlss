	.syntax unified
	.text

	thumb_func_start sub_8106EE8
sub_8106EE8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _08106F28 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0xD9
	lsls r1, r1, #0x02
	adds r4, r0, r1
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x08]
	cmp r0, #0x00
	beq _08106F06
_08106EFE:
	bl sub_807FA94
	cmp r0, #0x00
	bne _08106EFE
_08106F06:
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x04]
	bl sub_807FB34
	ldr r1, [r4, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x04]
	str r0, [r4, #0x00]
	ldr r0, _08106F2C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _08106F30 @ =0x00008E58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x04]
	pop {r4, r5}
	pop {r0}
	bx r0
_08106F28: .4byte 0x03000FD8
_08106F2C: .4byte 0x03000FDC
_08106F30: .4byte 0x00008E58
