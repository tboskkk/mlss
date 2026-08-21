	.syntax unified
	.text

	thumb_func_start sub_8070F98
sub_8070F98:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08070FC4
	movs r0, #0x8E
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	ldr r0, _08070FCC @ =0x0806F90D
	str r0, [r4, #0x4C]
_08070FC4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08070FCC: .4byte sub_806F90C
