	.syntax unified
	.text

	thumb_func_start sub_81DC4C8
sub_81DC4C8:
	push {r4, lr}
	ldr r1, _081DC4EC @ =0x03001A58
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _081DC4E6
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r4, _081DC4F0 @ =0x03001A48
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x10
	bl memset
	ldr r0, _081DC4F4 @ =0x03001A60
	str r0, [r4, #0x04]
_081DC4E6:
	ldr r0, _081DC4F0 @ =0x03001A48
	pop {r4, pc}
	.byte 0x00, 0x00
_081DC4EC: .4byte 0x03001A58
_081DC4F0: .4byte 0x03001A48
_081DC4F4: .4byte 0x03001A60
