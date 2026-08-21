	.syntax unified
	.text

	thumb_func_start sub_80823C0
sub_80823C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	ldr r0, _08082580 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r6, #0x01
	negs r6, r6
	adds r7, r0, #0x4
	movs r0, #0x07
	mov r8, r0
_080823D6:
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	movs r5, #0x10
	orrs r1, r5
	strb r1, [r2, #0x00]
	str r0, [r7, #0x00]
	str r0, [r7, #0x0C]
	bl sub_80842D8
	movs r1, #0x98
	lsls r1, r1, #0x01
	adds r4, r7, r1
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r2, r0, #0x0
	adds r2, #0x29
	ldrb r1, [r2, #0x00]
	orrs r1, r5
	strb r1, [r2, #0x00]
	str r0, [r4, #0x00]
	str r0, [r4, #0x0C]
	bl sub_80842D8
	movs r0, #0x98
	lsls r0, r0, #0x02
	adds r7, r7, r0
	movs r1, #0x02
	negs r1, r1
	add r8, r1
	mov r0, r8
	cmp r0, #0x00
	bge _080823D6
	ldr r0, _08082580 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x04
	adds r7, r0, r1
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x01
	negs r6, r6
_0808244A:
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	movs r5, #0xD0
	mov r1, r8
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	mov r4, r8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	movs r1, #0x04
	add r8, r1
	mov r0, r8
	cmp r0, #0x07
	ble _0808244A
	ldr r0, _08082580 @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r7, r0, r1
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x01
	negs r6, r6
_080824E8:
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	movs r5, #0xD0
	mov r1, r8
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	mov r4, r8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	adds r4, #0x01
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	str r6, [sp, #0x008]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x01
	adds r3, r6, #0x0
	bl sub_8020DD0
	adds r1, r4, #0x0
	muls r1, r5
	adds r1, r1, r7
	str r0, [r1, #0x08]
	bl sub_80842D8
	movs r1, #0x04
	add r8, r1
	mov r0, r8
	cmp r0, #0x0F
	ble _080824E8
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08082580: .4byte 0x03000FDC
