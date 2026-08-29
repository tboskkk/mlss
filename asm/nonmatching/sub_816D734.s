	.syntax unified
	.text

	thumb_func_start sub_816D734
sub_816D734:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x78]
	ldr r3, [r2, #0x70]
	adds r0, r0, r3
	str r0, [r2, #0x78]
	ldr r1, _0816D774 @ =0x000057FF
	cmp r0, r1
	bgt _0816D756
	movs r0, #0xB0
	lsls r0, r0, #0x07
	str r0, [r2, #0x78]
	negs r0, r3
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r2, #0x70]
_0816D756:
	ldr r0, [r2, #0x78]
	movs r1, #0xF0
	lsls r1, r1, #0x07
	cmp r0, r1
	ble _0816D76E
	str r1, [r2, #0x78]
	ldr r0, [r2, #0x70]
	negs r0, r0
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	str r0, [r2, #0x70]
_0816D76E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816D774: .4byte 0x000057FF
