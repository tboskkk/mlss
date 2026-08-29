	.syntax unified
	.text

	thumb_func_start sub_80E163C
sub_80E163C:
	push {lr}
	ldr r0, _080E1674 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	ldr r0, _080E1678 @ =0x04000040
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r3, _080E167C @ =0x03001034
	ldr r0, _080E1680 @ =0xE1FFE1FF
	ldr r1, _080E1684 @ =0x0600F000
	movs r2, #0xA0
	lsls r2, r2, #0x03
	ldr r3, [r3, #0x00]
	bl _call_via_r3
	ldr r1, _080E1688 @ =0x080E1A2D
	movs r0, #0x02
	bl sub_8018B78
	pop {r0}
	bx r0
_080E1674: .4byte 0x03000FD8
_080E1678: .4byte 0x04000040
_080E167C: .4byte 0x03001034
_080E1680: .4byte 0xE1FFE1FF
_080E1684: .4byte 0x0600F000
_080E1688: .4byte sub_80E1A2C
