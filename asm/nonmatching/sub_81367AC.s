	.syntax unified
	.text

	thumb_func_start sub_81367AC
sub_81367AC:
	push {lr}
	ldr r2, _081367BC @ =0x08CDC4A0
	str r2, [r0, #0x18]
	bl process_remove
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081367BC: .4byte dword_8CDC4A0 @ =0x08CDC4A0
