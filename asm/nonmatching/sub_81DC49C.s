	.syntax unified
	.text

	thumb_func_start sub_81DC49C
sub_81DC49C:
	push {lr}
	ldr r0, _081DC4AC @ =0x08CDB630
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	adds r0, #0x08
	pop {pc}
	.byte 0x00, 0x00
_081DC4AC: .4byte 0x08CDB630
