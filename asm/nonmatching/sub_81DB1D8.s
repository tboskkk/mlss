	.syntax unified
	.text

	thumb_func_start sub_81DB1D8
sub_81DB1D8:
	push {r4, lr}
	add sp, #-0x04C
	str r0, [sp, #0x03C]
	str r1, [sp, #0x040]
	str r2, [sp, #0x044]
	str r3, [sp, #0x048]
	add r0, sp, #0x03C
	mov r1, sp
	bl sub_81DAE94
	add r0, sp, #0x044
	add r4, sp, #0x014
	adds r1, r4, #0x0
	bl sub_81DAE94
	add r2, sp, #0x028
	mov r0, sp
	adds r1, r4, #0x0
	bl sub_81DAF6C
	bl sub_81DAD4C
	add sp, #0x04C
	pop {r4, pc}
