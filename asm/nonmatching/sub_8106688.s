	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, _081066C4 @ =0x0200000C
	ldrh r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strh r0, [r2, #0x00]
	adds r2, #0x10
	ldr r1, _081066C8 @ =0x0200001E
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x00]
	ldr r2, _081066CC @ =0x03001034
	ldr r0, _081066D0 @ =0x11111111
	ldr r1, _081066D4 @ =0x06008000
	ldr r3, [r2, #0x00]
	movs r2, #0x20
	bl _call_via_r3
	movs r1, #0x00
	movs r0, #0x40
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x18]
	ldr r0, _081066D8 @ =0x081064F9
	str r0, [r4, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081066C4: .4byte 0x0200000C
_081066C8: .4byte 0x0200001E
_081066CC: .4byte 0x03001034
_081066D0: .4byte 0x11111111
_081066D4: .4byte 0x06008000
_081066D8: .4byte sub_81064F8
