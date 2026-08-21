	.syntax unified
	.text

	thumb_func_start sub_802973C
sub_802973C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	ldr r5, [sp, #0x02C]
	add r4, sp, #0x030
	ldrb r4, [r4, #0x00]
	ldr r6, [r1, #0x0C]
	ldr r7, [r1, #0x10]
	mov r8, r7
	ldr r7, [r1, #0x14]
	mov r9, r7
	lsls r5, r5, #0x08
	movs r7, #0xF0
	lsls r7, r7, #0x04
	adds r5, r5, r7
	ldr r1, [r1, #0x18]
	adds r1, r1, r5
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	add r1, sp, #0x008
	strb r3, [r1, #0x00]
	add r1, sp, #0x00C
	strb r4, [r1, #0x00]
	adds r1, r6, #0x0
	mov r2, r8
	mov r3, r9
	bl sub_80262CC
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
