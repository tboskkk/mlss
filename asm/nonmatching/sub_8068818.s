	.syntax unified
	.text

	thumb_func_start sub_8068818
sub_8068818:
	push {lr}
	adds r1, r0, #0x0
	adds r2, r1, #0x0
	adds r2, #0xAC
	movs r3, #0x00
	ldsh r0, [r2, r3]
	cmp r0, #0x00
	bne _0806883C
	ldr r0, [r1, #0x10]
	ldr r3, _08068840 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [r1, #0x10]
	adds r1, #0x84
	ldr r1, [r1, #0x00]
	cmp r1, r0
	blt _0806883C
	movs r0, #0x01
	strh r0, [r2, #0x00]
_0806883C:
	pop {r0}
	bx r0
_08068840: .4byte 0xFFFFFE00
