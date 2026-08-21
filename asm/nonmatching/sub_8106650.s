	.syntax unified
	.text

	thumb_func_start sub_8106650
sub_8106650:
	push {lr}
	adds r2, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r2, r1]
	cmp r0, #0x00
	beq _08106678
	ldr r0, _08106674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x00]
	adds r1, #0x40
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldrh r0, [r2, #0x10]
	subs r0, #0x01
	strh r0, [r2, #0x10]
	b _0810667E
	.byte 0x00, 0x00
_08106674: .4byte 0x03000FD8
_08106678:
	strh r0, [r2, #0x18]
	ldr r0, _08106684 @ =0x08106609
	str r0, [r2, #0x04]
_0810667E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106684: .4byte sub_8106608
