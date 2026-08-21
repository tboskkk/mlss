	.syntax unified
	.text

	thumb_func_start sub_812A8AC
sub_812A8AC:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r4, #0x20]
	ldr r1, _0812A8DC @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r3, #0x08
	bl sub_81151E4
	adds r4, #0x69
	movs r0, #0x01
	strb r0, [r4, #0x00]
	add sp, #0x010
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0812A8DC: .4byte 0x0000FFFF
