	.syntax unified
	.text

	thumb_func_start sub_8163D80
sub_8163D80:
	push {r4, r5, lr}
	add sp, #-0x004
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	orrs r4, r0
	str r4, [sp, #0x000]
	movs r1, #0xA0
	lsls r1, r1, #0x13
	ldr r5, _08163DB0 @ =0x01000080
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, _08163DB4 @ =0x05000200
	mov r0, sp
	adds r2, r5, #0x0
	bl CpuFastSet
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163DB0: .4byte 0x01000080
_08163DB4: .4byte 0x05000200
