	.syntax unified
	.text

	thumb_func_start sub_80FAE34
sub_80FAE34:
	push {r4, r5, lr}
	movs r5, #0x0D
	ldr r4, [r0, #0x24]
_080FAE3A:
	ldr r0, _080FAE5C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0xA8
	bl _call_via_r3
	adds r4, #0xA8
	lsls r0, r5, #0x10
	ldr r1, _080FAE60 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	cmp r0, #0x00
	bgt _080FAE3A
	pop {r4, r5}
	pop {r0}
	bx r0
_080FAE5C: .4byte 0x03001034
_080FAE60: .4byte 0xFFFF0000
