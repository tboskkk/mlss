	.syntax unified
	.text

	thumb_func_start sub_813993C
sub_813993C:
	push {lr}
	mov r12, r1
	movs r1, #0xCC
	lsls r1, r1, #0x01
	add r1, r12
	ldr r3, _08139968 @ =0x081398C5
	str r3, [r1, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	add r1, r12
	ldr r2, _0813996C @ =0x0813955D
	str r2, [r1, #0x00]
	movs r1, #0xD2
	lsls r1, r1, #0x01
	add r1, r12
	str r2, [r1, #0x00]
	mov r1, r12
	bl _call_via_r3
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08139968: .4byte sub_81398C4
_0813996C: .4byte sub_813955C
