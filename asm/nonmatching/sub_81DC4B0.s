	.syntax unified
	.text

	thumb_func_start sub_81DC4B0
sub_81DC4B0:
	push {lr}
	ldr r1, _081DC4C0 @ =0x08CDB630
	ldr r0, _081DC4C4 @ =0x081DC4C9
	str r0, [r1, #0x00]
	bl _call_via_r0
	pop {pc}
	.byte 0x00, 0x00
_081DC4C0: .4byte 0x08CDB630
_081DC4C4: .4byte sub_81DC4C8
