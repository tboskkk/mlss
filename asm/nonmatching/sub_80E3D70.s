	.syntax unified
	.text

	thumb_func_start sub_80E3D70
sub_80E3D70:
	push {r4, lr}
	ldr r4, _080E3D98 @ =0x03001034
	ldr r1, _080E3D9C @ =0x06004000
	movs r2, #0x90
	lsls r2, r2, #0x08
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	ldr r1, _080E3DA0 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #0x05
	ldr r3, [r4, #0x00]
	movs r0, #0x00
	bl _call_via_r3
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E3D98: .4byte 0x03001034
_080E3D9C: .4byte 0x06004000
_080E3DA0: .4byte 0x0600F000
