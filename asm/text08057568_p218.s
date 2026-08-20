	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80FA818
sub_80FA818:
	push {r4, r5, r6, lr}
	mov r6, r10
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	add sp, #-0x00C
	mov r10, r0
	ldr r1, [r2, #0x00]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	mov r9, r0
	movs r0, #0x00
	str r0, [sp, #0x000]
	mov r0, r9
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	mov r0, r10
	ldr r3, [r0, #0x24]
	ldr r6, _080FA89C @ =0x000009A2
	adds r5, r3, r6
	ldrb r4, [r5, #0x00]
	lsls r2, r4, #0x18
	lsrs r1, r2, #0x19
	adds r1, #0x01
	lsls r1, r1, #0x01
	movs r0, #0x01
	mov r8, r0
	movs r0, #0x01
	ands r0, r4
	orrs r0, r1
	strb r0, [r5, #0x00]
	lsrs r2, r2, #0x19
	lsls r2, r2, #0x02
	ldr r0, _080FA8A0 @ =0x00000888
	adds r3, r3, r0
	adds r3, r3, r2
	mov r2, r9
	str r2, [r3, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x24]
	adds r1, r1, r6
	ldrb r0, [r1, #0x00]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x00]
	movs r0, #0x00
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080FA89C: .4byte 0x000009A2
_080FA8A0: .4byte 0x00000888
	thumb_func_start sub_80FA8A4
sub_80FA8A4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r6, #0x14]
	ldr r3, [r4, #0x00]
	ldrb r1, [r4, #0x00]
	movs r5, #0xAC
	lsls r5, r5, #0x01
	adds r2, r0, r5
	ldr r2, [r2, #0x00]
	lsls r3, r3, #0x06
	adds r3, r3, r2
	ldr r2, [r3, #0x00]
	adds r2, #0x24
	ldrb r2, [r2, #0x00]
	ldr r3, [r4, #0x04]
	bl sub_81218E4
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r1, [r4, #0x08]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r6, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80FA908
sub_80FA908:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldr r0, [r5, #0x14]
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	ldr r3, [r4, #0x08]
	bl sub_81218E4
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	movs r6, #0xAC
	lsls r6, r6, #0x01
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r1, [r4, #0x0C]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FA960
sub_80FA960:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r5, #0x14]
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	movs r3, #0x00
	bl sub_81218E4
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldr r1, [r4, #0x08]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r3, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r5, #0x1C
	ldrb r3, [r4, #0x0C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FA9C4
sub_80FA9C4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r2, #0x0
	ldrb r1, [r4, #0x00]
	bl sub_80F9544
	ldr r0, [r5, #0x14]
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x04]
	bl sub_8121910
	ldr r0, [r5, #0x14]
	ldrb r1, [r4, #0x00]
	ldr r2, [r4, #0x08]
	ldr r3, [r4, #0x0C]
	bl sub_81218E4
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_80F95FC
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	movs r6, #0xAC
	lsls r6, r6, #0x01
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	ldr r1, [r4, #0x10]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	lsls r1, r1, #0x06
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FAA34
sub_80FAA34:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0x0
	adds r5, r2, #0x0
	ldr r0, [r6, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	subs r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r6, #0x14]
	ldr r2, [r5, #0x00]
	ldr r3, [r5, #0x04]
	adds r1, r4, #0x0
	bl sub_81218E4
	ldr r0, [r6, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x06
	adds r0, r4, r0
	ldr r3, [r0, #0x00]
	ldr r1, [r5, #0x08]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r6, #0x14]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FAAA0
sub_80FAAA0:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	adds r6, r2, #0x0
	ldr r0, [r5, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	subs r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x00]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_81218E4
	ldr r0, [r5, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x06
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x04]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r3, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r5, #0x1C
	ldrb r3, [r6, #0x08]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r8
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80FAB18
sub_80FAB18:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	adds r6, r2, #0x0
	ldr r0, [r5, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	subs r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F9544
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x00]
	adds r1, r4, #0x0
	bl sub_8121910
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x04]
	ldr r3, [r6, #0x08]
	adds r1, r4, #0x0
	bl sub_81218E4
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F95FC
	ldr r0, [r5, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x06
	adds r0, r4, r0
	ldr r3, [r0, #0x00]
	ldr r1, [r6, #0x0C]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	ldr r0, [r5, #0x14]
	add r0, r8
	ldr r0, [r0, #0x00]
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r0, [r2, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80FAB9C
sub_80FAB9C:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	mov r8, r1
	adds r6, r2, #0x0
	ldr r0, [r5, #0x24]
	movs r1, #0x9A
	lsls r1, r1, #0x04
	adds r0, r0, r1
	ldrb r4, [r0, #0x00]
	subs r4, #0x01
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F9544
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x00]
	adds r1, r4, #0x0
	bl sub_8121910
	ldr r0, [r5, #0x14]
	ldr r2, [r6, #0x04]
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_81218E4
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_80F95FC
	ldr r0, [r5, #0x14]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r4, r4, #0x06
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r6, #0x08]
	movs r0, #0x01
	ands r1, r0
	lsls r1, r1, #0x06
	ldrb r3, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0x11]
	adds r5, #0x1C
	ldrb r3, [r6, #0x0C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	mov r1, r8
	bl sub_80EA60C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80FAC30
sub_80FAC30:
	push {lr}
	add sp, #-0x008
	adds r0, #0x1C
	ldr r1, _080FAC58 @ =0x03000FD0
	ldr r1, [r1, #0x00]
	movs r3, #0xFC
	lsls r3, r3, #0x01
	adds r1, r1, r3
	ldr r2, [r2, #0x04]
	movs r3, #0x01
	str r3, [sp, #0x000]
	movs r3, #0xFF
	str r3, [sp, #0x004]
	movs r3, #0x00
	bl sub_80EA5C8
	movs r0, #0x01
	add sp, #0x008
	pop {r1}
	bx r1
_080FAC58: .4byte 0x03000FD0
	thumb_func_start sub_80FAC5C
sub_80FAC5C:
	push {r4, lr}
	ldr r2, [r2, #0x00]
	movs r1, #0xA8
	adds r3, r2, #0x0
	muls r3, r1
	ldr r1, [r0, #0x24]
	adds r1, r1, r3
	adds r3, r1, #0x0
	adds r3, #0xA8
	ldr r0, [r0, #0x14]
	movs r4, #0xAC
	lsls r4, r4, #0x01
	adds r0, r0, r4
	ldr r0, [r0, #0x00]
	lsls r2, r2, #0x06
	adds r2, r2, r0
	ldr r2, [r2, #0x00]
	movs r0, #0xA4
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x04]
	str r0, [r3, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
