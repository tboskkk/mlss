	.syntax unified
	.text

	thumb_func_start sub_8070C2C
sub_8070C2C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070C50
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x1C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08070C58 @ =0x08070F65
	str r0, [r4, #0x4C]
_08070C50:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070C58: .4byte sub_8070F64
