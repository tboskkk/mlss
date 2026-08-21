	.syntax unified
	.text

	thumb_func_start sub_80EF70C
sub_80EF70C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	mov r9, r0
	movs r7, #0x00
	ldr r1, _080EF794 @ =0x03000FC8
	ldr r0, [r1, #0x00]
	ldr r5, [r0, #0x00]
	mov r8, r1
_080EF722:
	mov r1, r8
	ldr r0, [r1, #0x00]
	lsls r1, r7, #0x18
	lsrs r6, r1, #0x18
	adds r1, r6, #0x0
	bl sub_80E8EA0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080EF774
	ldrb r0, [r5, #0x0E]
	cmp r0, #0x00
	beq _080EF76A
	mov r1, r9
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x14]
	ldrb r1, [r5, #0x0C]
	lsls r3, r1, #0x02
	adds r2, r0, #0x0
	adds r2, #0x28
	adds r2, r2, r3
	ldr r4, [r2, #0x00]
	mov r2, sp
	add r3, sp, #0x004
	bl get_fobj_screen_pos
	ldr r0, _080EF798 @ =0x00000283
	adds r4, r4, r0
	ldrb r1, [r4, #0x00]
	ldr r0, [sp, #0x004]
	subs r0, r0, r1
	str r0, [sp, #0x004]
	ldr r0, [sp, #0x000]
	strh r0, [r5, #0x08]
	ldr r0, [sp, #0x004]
	strh r0, [r5, #0x0A]
_080EF76A:
	mov r1, r8
	ldr r0, [r1, #0x00]
	adds r1, r6, #0x0
	bl sub_80E8E78
_080EF774:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r0, r1
	adds r5, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080EF722
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EF794: .4byte 0x03000FC8
_080EF798: .4byte 0x00000283
