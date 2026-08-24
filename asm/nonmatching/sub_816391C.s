	.syntax unified
	.text

	thumb_func_start sub_816391C
sub_816391C:
	mov r12, r0
	adds r0, #0x4C
	movs r3, #0x00
	strh r3, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	ldr r0, _08163938 @ =0x0821282A
	mov r2, r12
	str r0, [r2, #0x44]
	mov r0, r12
	adds r0, #0x48
	strh r3, [r0, #0x00]
	str r1, [r2, #0x40]
	bx lr
_08163938: .4byte dword_821282A @ =0x0821282A
