	.syntax unified
	.text

	thumb_func_start sub_8114380
sub_8114380:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081143AC
	ldr r2, _081143A8 @ =0x03000FD8
	ldr r1, [r2, #0x00]
	ldr r0, [r3, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r4, #0x00
	ldsh r0, [r0, r4]
	adds r0, #0x02
	lsls r0, r0, #0x02
	adds r1, #0x80
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	b _081143B0
_081143A8: .4byte 0x03000FD8
_081143AC:
	ldr r0, [r3, #0x2C]
	ldr r2, _081143F4 @ =0x03000FD8
_081143B0:
	str r0, [r3, #0x2C]
	ldr r0, _081143F8 @ =0x081141F5
	str r0, [r3, #0x4C]
	ldr r0, [r2, #0x00]
	ldr r2, [r0, #0x58]
	ldr r0, _081143FC @ =0x00000113
	adds r1, r2, r0
	movs r0, #0x03
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x2C]
	str r0, [r2, #0x34]
	adds r1, r2, #0x0
	adds r1, #0xA4
	adds r0, r3, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08114400 @ =0x08114681
	str r0, [r2, #0x54]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081143F4: .4byte 0x03000FD8
_081143F8: .4byte 0x081141F5
_081143FC: .4byte 0x00000113
_08114400: .4byte sub_8114680
