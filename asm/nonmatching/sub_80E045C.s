	.syntax unified
	.text

	thumb_func_start sub_80E045C
sub_80E045C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r9, r0
	mov r12, r1
	adds r6, r2, #0x0
	ldr r0, _080E05A0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r1, #0x98
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080E047E
	b _080E0590
_080E047E:
	ldr r0, _080E05A4 @ =0x03000FDC
	ldr r1, [r0, #0x00]
	ldr r4, _080E05A8 @ =0x000052F0
	adds r2, r1, r4
	movs r7, #0x9C
	lsls r7, r7, #0x02
	adds r0, r3, r7
	ldrb r5, [r0, #0x00]
	mov r0, r9
	muls r0, r6
	mov r8, r0
	cmp r5, #0x00
	beq _080E0550
	adds r3, r2, #0x0
	adds r4, r5, #0x0
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _080E04E0
	ldr r0, [r2, #0x00]
	mov r3, r9
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080E04B2
	adds r0, #0xFF
_080E04B2:
	asrs r0, r0, #0x08
	str r0, [r2, #0x00]
	ldr r0, [r2, #0x04]
	mov r4, r12
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _080E04C4
	adds r0, #0xFF
_080E04C4:
	asrs r0, r0, #0x08
	str r0, [r2, #0x04]
	ldr r0, [r2, #0x08]
	muls r0, r6
	cmp r0, #0x00
	bge _080E04D2
	adds r0, #0xFF
_080E04D2:
	asrs r0, r0, #0x08
	str r0, [r2, #0x08]
	ldr r7, _080E05AC @ =0x000052FC
	adds r3, r1, r7
	subs r4, r5, #0x1
	cmp r4, #0x00
	beq _080E0550
_080E04E0:
	ldr r0, [r3, #0x00]
	mov r1, r9
	muls r1, r0
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _080E04EE
	adds r0, #0xFF
_080E04EE:
	asrs r0, r0, #0x08
	str r0, [r3, #0x00]
	ldr r0, [r3, #0x04]
	mov r7, r12
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _080E0500
	adds r0, #0xFF
_080E0500:
	asrs r0, r0, #0x08
	str r0, [r3, #0x04]
	ldr r0, [r3, #0x08]
	muls r0, r6
	cmp r0, #0x00
	bge _080E050E
	adds r0, #0xFF
_080E050E:
	asrs r0, r0, #0x08
	str r0, [r3, #0x08]
	adds r1, r3, #0x0
	adds r1, #0x0C
	ldr r0, [r3, #0x0C]
	mov r7, r9
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _080E0524
	adds r0, #0xFF
_080E0524:
	asrs r0, r0, #0x08
	str r0, [r3, #0x0C]
	ldr r0, [r1, #0x04]
	mov r7, r12
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _080E0536
	adds r0, #0xFF
_080E0536:
	asrs r0, r0, #0x08
	str r0, [r1, #0x04]
	ldr r0, [r1, #0x08]
	muls r0, r6
	cmp r0, #0x00
	bge _080E0544
	adds r0, #0xFF
_080E0544:
	asrs r0, r0, #0x08
	str r0, [r1, #0x08]
	adds r3, #0x18
	subs r4, #0x02
	cmp r4, #0x00
	bne _080E04E0
_080E0550:
	mov r0, r8
	cmp r0, #0x00
	bge _080E0590
	movs r4, #0x00
	subs r5, #0x01
	cmp r4, r5
	bge _080E0590
	lsls r0, r5, #0x01
	adds r0, r0, r5
	lsls r0, r0, #0x02
	adds r0, r0, r2
	mov r8, r0
_080E0568:
	mov r1, sp
	adds r0, r2, #0x0
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	adds r1, r2, #0x0
	mov r0, r8
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	mov r1, r8
	mov r0, sp
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	adds r2, #0x0C
	adds r4, #0x01
	movs r0, #0x0C
	negs r0, r0
	add r8, r0
	subs r5, #0x01
	cmp r4, r5
	blt _080E0568
_080E0590:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E05A0: .4byte 0x03000FD8
_080E05A4: .4byte 0x03000FDC
_080E05A8: .4byte 0x000052F0
_080E05AC: .4byte 0x000052FC
