	.syntax unified
	.text

	thumb_func_start sub_80EA5C8
sub_80EA5C8:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x008
	adds r6, r0, #0x0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r4, [sp, #0x024]
	ldr r5, [sp, #0x028]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	bl sub_80EA550
	str r4, [sp, #0x000]
	str r5, [sp, #0x004]
	adds r0, r6, #0x0
	mov r1, r8
	mov r2, r9
	mov r3, r10
	bl sub_80EA530
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
