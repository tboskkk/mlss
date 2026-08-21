	.syntax unified
	.text

	thumb_func_start sub_8103B6C
sub_8103B6C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r0
	ldr r0, _08103B90 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08103B94
	mov r2, r8
	str r0, [r2, #0x04]
	b _08103D46
_08103B90: .4byte 0x03000FD8
_08103B94:
	mov r3, r8
	ldr r1, [r3, #0x08]
	movs r4, #0x00
	ldsh r0, [r1, r4]
	subs r7, r0, #0x4
	ldr r0, _08103D58 @ =0x000001FF
	ands r7, r0
	movs r0, #0x02
	ldsh r2, [r1, r0]
	movs r4, #0x14
	ldsh r0, [r3, r4]
	subs r2, r2, r0
	movs r0, #0x12
	negs r0, r0
	adds r0, r0, r2
	mov r10, r0
	adds r1, #0x21
	ldrb r0, [r1, #0x00]
	cmp r0, #0x04
	bne _08103BC0
	subs r2, #0x0E
	mov r10, r2
_08103BC0:
	ldr r0, _08103D5C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldr r5, [r0, #0x00]
	ldr r1, _08103D60 @ =0x0819832C
	ldr r0, _08103D64 @ =0x08198220
	subs r1, r1, r0
	mov r9, r1
	ldr r2, _08103D68 @ =0x03001038
	ldr r0, [r2, #0x00]
	adds r2, r0, r1
	movs r0, #0x00
	movs r1, #0x06
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r3, r8
	movs r4, #0x14
	ldsh r0, [r3, r4]
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	ldr r4, _08103D68 @ =0x03001038
	ldr r0, [r4, #0x00]
	mov r1, r9
	adds r2, r0, r1
	mov r0, r10
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	mov r4, r10
	lsls r6, r4, #0x01
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r2, _08103D70 @ =0x0000B0A5
	strh r2, [r5, #0x04]
	adds r5, #0x08
	add r6, r10
	movs r3, #0x03
	str r3, [sp, #0x000]
_08103C62:
	ldr r4, _08103D68 @ =0x03001038
	ldr r0, [r4, #0x00]
	mov r1, r9
	adds r2, r0, r1
	adds r0, r6, #0x0
	movs r1, #0x06
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r3, #0x14
	ldsh r0, [r2, r3]
	adds r0, r0, r1
	movs r3, #0xFF
	ands r0, r3
	ldr r4, _08103D6C @ =0xFFFF8000
	orrs r0, r4
	strh r0, [r5, #0x00]
	strh r7, [r5, #0x02]
	ldr r0, _08103D70 @ =0x0000B0A5
	strh r0, [r5, #0x04]
	adds r1, r5, #0x0
	adds r1, #0x08
	str r1, [sp, #0x008]
	add r6, r10
	ldr r2, _08103D68 @ =0x03001038
	ldr r0, [r2, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x08]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r4, _08103D70 @ =0x0000B0A5
	strh r4, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x10
	str r0, [sp, #0x008]
	add r6, r10
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x10]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r4, _08103D70 @ =0x0000B0A5
	strh r4, [r2, #0x04]
	adds r0, r5, #0x0
	adds r0, #0x18
	str r0, [sp, #0x008]
	add r6, r10
	ldr r1, _08103D68 @ =0x03001038
	ldr r0, [r1, #0x00]
	mov r4, r9
	adds r2, r0, r4
	adds r0, r6, #0x0
	movs r1, #0x06
	str r3, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r4, #0x14
	ldsh r0, [r2, r4]
	adds r0, r0, r1
	ldr r3, [sp, #0x004]
	ands r0, r3
	ldr r1, _08103D6C @ =0xFFFF8000
	orrs r0, r1
	strh r0, [r5, #0x18]
	ldr r2, [sp, #0x008]
	strh r7, [r2, #0x02]
	ldr r3, _08103D70 @ =0x0000B0A5
	strh r3, [r2, #0x04]
	adds r5, #0x20
	add r6, r10
	ldr r4, [sp, #0x000]
	subs r4, #0x04
	str r4, [sp, #0x000]
	cmp r4, #0x00
	bge _08103C62
	ldr r0, _08103D5C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r5, [r0, #0x00]
_08103D46:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08103D58: .4byte 0x000001FF
_08103D5C: .4byte 0x0300034C
_08103D60: .4byte 0x0819832C
_08103D64: .4byte 0x08198220
_08103D68: .4byte 0x03001038
_08103D6C: .4byte 0xFFFF8000
_08103D70: .4byte 0x0000B0A5
