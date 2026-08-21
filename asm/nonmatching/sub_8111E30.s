	.syntax unified
	.text

	thumb_func_start sub_8111E30
sub_8111E30:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	mov r10, r1
	adds r6, r2, #0x0
	adds r0, #0x88
	str r0, [sp, #0x00C]
	movs r1, #0x00
	ldsh r2, [r0, r1]
	lsls r2, r2, #0x08
	movs r1, #0x02
	ldsh r3, [r0, r1]
	lsls r3, r3, #0x08
	add r1, sp, #0x008
	lsls r0, r6, #0x08
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	bl sub_8087878
	adds r1, r5, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	mov r8, r1
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	asrs r1, r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r1, r0
	ldr r7, _08111EF8 @ =0x03001038
	ldr r1, _08111EFC @ =0x0819832C
	ldr r0, _08111F00 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r0, [r7, #0x00]
	adds r3, r0, r1
	ldr r2, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	subs r0, r6, r0
	ldr r2, [sp, #0x004]
	muls r0, r2
	cmp r0, #0x00
	bge _08111EA6
	adds r0, #0x3F
_08111EA6:
	asrs r0, r0, #0x06
	muls r2, r0
	ldr r1, [sp, #0x008]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08111EB4
	adds r0, #0x3F
_08111EB4:
	asrs r0, r0, #0x06
	muls r1, r0
	adds r0, r2, #0x0
	bl _call_via_r3
	adds r1, r0, #0x0
	mov r2, r8
	mov r0, r8
	muls r0, r2
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	adds r0, r0, r1
	adds r1, r4, #0x0
	muls r1, r4
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	bl _call_via_r1
	adds r3, r0, #0x0
	cmp r3, #0x00
	beq _08111F04
	ldr r2, [r7, #0x00]
	add r2, r9
	mov r1, r10
	lsls r0, r1, #0x06
	lsrs r1, r3, #0x1F
	adds r1, r3, r1
	asrs r1, r1, #0x01
	adds r0, r0, r1
	adds r1, r3, #0x0
	bl _call_via_r2
	b _08111F0A
_08111EF8: .4byte 0x03001038
_08111EFC: .4byte 0x0819832C
_08111F00: .4byte 0x08198220
_08111F04:
	movs r2, #0x80
	lsls r2, r2, #0x07
	adds r0, r2, #0x0
_08111F0A:
	adds r1, r5, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x94
	ldr r0, [sp, #0x004]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
