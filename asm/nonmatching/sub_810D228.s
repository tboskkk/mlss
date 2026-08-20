	.syntax unified
	.text

	thumb_func_start sub_810D228
sub_810D228:
	push {r4, lr}
	ldr r3, _0810D25C @ =0x03000FD8
	ldr r3, [r3, #0x00]
	movs r4, #0x9E
	lsls r4, r4, #0x02
	adds r3, r3, r4
	ldr r3, [r3, #0x00]
	mov r12, r3
	adds r3, #0x84
	lsls r0, r0, #0x08
	str r0, [r3, #0x00]
	mov r3, r12
	str r0, [r3, #0x10]
	mov r0, r12
	adds r0, #0x88
	lsls r1, r1, #0x08
	str r1, [r0, #0x00]
	str r1, [r3, #0x14]
	adds r0, #0x04
	lsls r2, r2, #0x08
	str r2, [r0, #0x00]
	str r2, [r3, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810D25C: .4byte 0x03000FD8
