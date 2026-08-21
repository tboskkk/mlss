	.syntax unified
	.text

	thumb_func_start sub_80E3CF4
sub_80E3CF4:
	push {lr}
	ldr r0, _080E3D10 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080E3D14
	movs r0, #0x00
	b _080E3D16
_080E3D10: .4byte 0x03000FD8
_080E3D14:
	movs r0, #0x01
_080E3D16:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
