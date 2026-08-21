	.syntax unified
	.text

	thumb_func_start sub_801AE1C
sub_801AE1C:
	push {lr}
	add sp, #-0x004
	movs r0, #0x00
	str r0, [sp, #0x000]
	ldr r1, _0801AE34 @ =0x03000D28
	ldr r2, _0801AE38 @ =0x05000002
	mov r0, sp
	bl CpuSet
	add sp, #0x004
	pop {r0}
	bx r0
_0801AE34: .4byte 0x03000D28
_0801AE38: .4byte 0x05000002
