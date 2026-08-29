	.syntax unified
	.text

	thumb_func_start sub_81DC43C
sub_81DC43C:
	push {lr}
	ldr r0, _081DC448 @ =0x08CDB62C
	ldr r0, [r0, #0x00]
	bl _call_via_r0
	pop {pc}
_081DC448: .4byte 0x08CDB62C
