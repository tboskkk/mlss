	.syntax unified
	.text

	thumb_func_start sub_81615E4
sub_81615E4:
	push {r4, lr}
	ldr r4, _08161600 @ =0x03001024
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x2C]
	bl sub_8160E4C
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x30]
	bl sub_8160E4C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08161600: .4byte 0x03001024
