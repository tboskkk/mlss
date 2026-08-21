	.syntax unified
	.text

	thumb_func_start sub_801DC00
sub_801DC00:
	push {lr}
	add sp, #-0x004
	adds r3, r1, #0x0
	lsls r1, r3, #0x04
	orrs r1, r3
	lsls r2, r3, #0x08
	orrs r1, r2
	lsls r2, r3, #0x0C
	orrs r1, r2
	lsls r2, r3, #0x10
	orrs r1, r2
	lsls r2, r3, #0x14
	orrs r1, r2
	lsls r2, r3, #0x18
	orrs r1, r2
	lsls r2, r3, #0x1C
	orrs r1, r2
	str r1, [sp, #0x000]
	ldr r1, [r0, #0x00]
	ldr r2, _0801DC34 @ =0x01001400
	mov r0, sp
	bl CpuFastSet
	add sp, #0x004
	pop {r0}
	bx r0
_0801DC34: .4byte 0x01001400
