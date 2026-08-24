	.syntax unified
	.text

	thumb_func_start sub_80DEEA8
sub_80DEEA8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	mov r10, r2
	str r3, [sp, #0x000]
	ldr r0, [sp, #0x024]
	ldr r5, [sp, #0x028]
	ldr r6, [sp, #0x040]
	ldr r7, [sp, #0x044]
	bl sub_807FF98
	adds r4, r0, #0x0
	mov r0, r8
	strh r0, [r4, #0x12]
	mov r1, r9
	strh r1, [r4, #0x14]
	mov r2, r10
	strh r2, [r4, #0x16]
	mov r0, sp
	ldrh r0, [r0, #0x00]
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x038]
	lsls r2, r1, #0x07
	ldrb r1, [r4, #0x1B]
	movs r0, #0x7F
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1B]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0x0
	ldr r1, [sp, #0x02C]
	movs r2, #0x02
	movs r3, #0x01
	bl sub_8084338
	movs r1, #0x01
	ldr r2, [sp, #0x03C]
	ands r2, r1
	lsls r3, r2, #0x06
	ldrb r2, [r0, #0x11]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x11]
	str r0, [r4, #0x08]
	ldr r0, [sp, #0x034]
	mov r9, r0
	lsls r1, r0, #0x01
	adds r1, r1, r0
	adds r1, r1, r7
	lsls r1, r1, #0x02
	ldr r2, _080DF00C @ =0x082000E0
	movs r0, #0x01
	bl alloc_heap_8018CEC
	adds r5, r0, #0x0
	str r5, [r4, #0x0C]
	subs r7, #0x01
	movs r0, #0x01
	negs r0, r0
	cmp r7, r0
	beq _080DEF74
	adds r1, r0, #0x0
	movs r0, #0x03
	bics r0, r7
	cmp r0, #0x00
	beq _080DEF5A
	cmp r0, #0x03
	bge _080DEF50
	cmp r0, #0x02
	bge _080DEF4A
	ldm r6!, {r0}
	stm r5!, {r0}
	subs r7, #0x01
_080DEF4A:
	ldm r6!, {r0}
	stm r5!, {r0}
	subs r7, #0x01
_080DEF50:
	ldm r6!, {r0}
	stm r5!, {r0}
	subs r7, #0x01
	cmp r7, r1
	beq _080DEF74
_080DEF5A:
	ldr r0, [r6, #0x00]
	str r0, [r5, #0x00]
	ldr r0, [r6, #0x04]
	str r0, [r5, #0x04]
	ldr r0, [r6, #0x08]
	str r0, [r5, #0x08]
	ldr r0, [r6, #0x0C]
	str r0, [r5, #0x0C]
	adds r6, #0x10
	adds r5, #0x10
	subs r7, #0x04
	cmp r7, r1
	bne _080DEF5A
_080DEF74:
	ldr r0, [sp, #0x030]
	cmp r0, #0x00
	bne _080DEFFC
	ldr r1, [sp, #0x034]
	subs r1, #0x01
	str r1, [sp, #0x034]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _080DEFFC
	ldr r2, _080DF010 @ =0x03001038
	mov r8, r2
	ldr r1, _080DF014 @ =0x0819832C
	ldr r0, _080DF018 @ =0x08198220
	subs r6, r1, r0
	ldr r0, _080DF01C @ =0x08198584
	mov r10, r0
	movs r7, #0xFF
_080DEF98:
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r6
	ldr r0, [sp, #0x034]
	lsls r4, r0, #0x08
	adds r0, r4, #0x0
	mov r1, r9
	bl _call_via_r2
	adds r1, r5, #0x0
	ands r0, r7
	lsls r0, r0, #0x01
	add r0, r10
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r5, #0x04
	cmp r0, #0x00
	bge _080DEFBE
	adds r0, #0x3F
_080DEFBE:
	asrs r0, r0, #0x06
	str r0, [r1, #0x00]
	movs r0, #0x00
	stm r5!, {r0}
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r6
	adds r0, r4, #0x0
	mov r1, r9
	bl _call_via_r2
	adds r2, r5, #0x0
	ldr r1, _080DF020 @ =0x08198504
	ands r0, r7
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r5, r2, #0x4
	cmp r0, #0x00
	bge _080DEFEA
	adds r0, #0x3F
_080DEFEA:
	asrs r0, r0, #0x06
	str r0, [r2, #0x00]
	ldr r2, [sp, #0x034]
	subs r2, #0x01
	str r2, [sp, #0x034]
	movs r0, #0x01
	negs r0, r0
	cmp r2, r0
	bne _080DEF98
_080DEFFC:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DF00C: .4byte 0x082000E0
_080DF010: .4byte 0x03001038
_080DF014: .4byte 0x0819832C
_080DF018: .4byte 0x08198220
_080DF01C: .4byte 0x08198584
_080DF020: .4byte 0x08198504
