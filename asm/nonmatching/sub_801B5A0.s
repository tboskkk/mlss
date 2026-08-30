	.syntax unified
	.text

	thumb_func_start sub_801B5A0
sub_801B5A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x020]
	ldr r5, [sp, #0x024]
	ldr r6, [sp, #0x028]
	ldr r7, [sp, #0x02C]
	mov r8, r7
	ldr r7, [sp, #0x030]
	mov r9, r7
	ldr r7, [sp, #0x034]
	mov r10, r7
	str r1, [r0, #0x00]
	str r2, [r0, #0x04]
	str r3, [r0, #0x08]
	str r4, [r0, #0x0C]
	str r5, [r0, #0x10]
	str r6, [r0, #0x14]
	mov r1, r8
	strh r1, [r0, #0x18]
	mov r7, r9
	strh r7, [r0, #0x1A]
	mov r1, r10
	strh r1, [r0, #0x1C]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
