	.syntax unified
	.text

	thumb_func_start sub_80FAC30
sub_80FAC30:
	push {lr}
	add sp, #-0x008
	adds r0, #0x1C
	ldr r1, _080FAC58 @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r3, #0xFC
	lsls r3, r3, #0x01
	adds r1, r1, r3
	ldr r2, [r2, #0x04]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0xFF
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80EA5C8
	movs r0, #0x01
	add sp, #0x008
	pop {r1}
	bx r1
_080FAC58: .4byte 0x03000FD0
