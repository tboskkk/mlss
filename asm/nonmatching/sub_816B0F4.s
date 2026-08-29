	.syntax unified
	.text

	thumb_func_start sub_816B0F4
sub_816B0F4:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	mov r8, r3
	movs r1, #0x06
	bl sub_8161C28
	ldr r0, _0816B154 @ =0x08CDD1C8
	str r0, [r4, #0x0C]
	ldr r2, _0816B158 @ =0x0000415A
	movs r0, #0x00
	str r0, [sp, #0x000]
	movs r0, #0x02
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8163ADC
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x00]
	subs r1, r1, r6
	ldr r2, [r5, #0x04]
	ldr r3, [r5, #0x08]
	mov r0, r8
	subs r3, r3, r0
	adds r0, r4, #0x0
	bl sub_8163A64
	adds r0, r4, #0x0
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0816B154: .4byte 0x08CDD1C8
_0816B158: .4byte 0x0000415A
