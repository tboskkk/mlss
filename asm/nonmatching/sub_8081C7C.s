	.syntax unified
	.text

	thumb_func_start sub_8081C7C
sub_8081C7C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80E3D1C
	ldr r0, _08081CAC @ =0x080FC91D
	movs r1, #0x00
	bl sub_807FF48
	ldr r0, _08081CB0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r0, #0x04
	strb r0, [r1, #0x10]
	ldr r1, _08081CB4 @ =0x0300034C
	ldr r0, _08081CB8 @ =0x00000888
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, _08081CBC @ =0x08081A69
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
_08081CAC: .4byte sub_80FC91C
_08081CB0: .4byte 0x03000FD8
_08081CB4: .4byte 0x0300034C
_08081CB8: .4byte 0x00000888
_08081CBC: .4byte sub_8081A68
