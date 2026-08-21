	.syntax unified
	.text

	thumb_func_start sub_810707C
sub_810707C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081070AC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x7C]
	movs r1, #0x91
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _081070A8
	ldr r0, _081070B0 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	ldr r1, _081070B4 @ =0x00008E58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	str r1, [r2, #0x04]
	adds r0, r2, #0x0
	bl _call_via_r1
_081070A8:
	pop {r0}
	bx r0
_081070AC: .4byte 0x03000FD8
_081070B0: .4byte 0x03000FDC
_081070B4: .4byte 0x00008E58
