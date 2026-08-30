	.syntax unified
	.text

	thumb_func_start sub_8121ABC
sub_8121ABC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x010
	adds r2, r1, #0x0
	ldr r0, _08121B10 @ =0x03000FF4
	mov r8, r0
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	movs r6, #0x38
	str r6, [sp, #0x000]
	movs r5, #0x02
	str r5, [sp, #0x004]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x08
	movs r3, #0xA8
	bl sub_8121B5C
	adds r2, r0, #0x0
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r0, #0x6C
	ldrb r1, [r0, #0x00]
	str r6, [sp, #0x000]
	str r5, [sp, #0x004]
	str r4, [sp, #0x008]
	str r4, [sp, #0x00C]
	movs r0, #0x08
	movs r3, #0x48
	bl sub_8121B5C
	adds r2, r0, #0x0
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08121B10: .4byte 0x03000FF4
