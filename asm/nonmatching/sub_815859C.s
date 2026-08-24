	.syntax unified
	.text

	thumb_func_start sub_815859C
sub_815859C:
	push {lr}
	ldr r2, _081585AC @ =0x08CDC670
	str r2, [r0, #0x30]
	bl sub_815FB14
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081585AC: .4byte dword_8CDC670 @ =0x08CDC670
