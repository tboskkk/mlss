	.syntax unified
	.text

	thumb_func_start sub_80E13F8
sub_80E13F8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	ldr r0, _080E14F0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	movs r5, #0x98
	lsls r5, r5, #0x02
	adds r0, r3, r5
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E14EA
	ldr r0, _080E14F4 @ =0x03000FDC
	ldr r6, [r0, #0x00]
	ldr r0, _080E14F8 @ =0x000052F0
	adds r0, r0, r6
	mov r12, r0
	adds r5, #0x10
	adds r0, r3, r5
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E14EA
	lsls r5, r4, #0x08
	lsls r4, r1, #0x08
	lsls r2, r2, #0x08
	adds r1, r0, #0x0
	negs r3, r1
	movs r0, #0x03
	ands r3, r0
	cmp r3, #0x00
	beq _080E148E
	cmp r3, #0x03
	bge _080E1470
	cmp r3, #0x02
	bge _080E1456
	mov r0, r12
	ldr r3, [r0, #0x00]
	adds r3, r3, r5
	str r3, [r0, #0x00]
	ldr r3, [r0, #0x04]
	adds r3, r3, r4
	str r3, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r3, r3, r2
	str r3, [r0, #0x08]
	ldr r0, _080E14FC @ =0x000052FC
	adds r0, r0, r6
	mov r12, r0
	subs r1, #0x01
_080E1456:
	mov r6, r12
	ldr r3, [r6, #0x00]
	adds r3, r3, r5
	str r3, [r6, #0x00]
	ldr r3, [r6, #0x04]
	adds r3, r3, r4
	str r3, [r6, #0x04]
	ldr r3, [r6, #0x08]
	adds r3, r3, r2
	str r3, [r6, #0x08]
	movs r0, #0x0C
	add r12, r0
	subs r1, #0x01
_080E1470:
	mov r6, r12
	ldr r3, [r6, #0x00]
	adds r3, r3, r5
	str r3, [r6, #0x00]
	ldr r3, [r6, #0x04]
	adds r3, r3, r4
	str r3, [r6, #0x04]
	ldr r3, [r6, #0x08]
	adds r3, r3, r2
	str r3, [r6, #0x08]
	movs r0, #0x0C
	add r12, r0
	subs r1, #0x01
	cmp r1, #0x00
	beq _080E14EA
_080E148E:
	mov r6, r12
	ldr r3, [r6, #0x00]
	adds r3, r3, r5
	str r3, [r6, #0x00]
	ldr r3, [r6, #0x04]
	adds r3, r3, r4
	str r3, [r6, #0x04]
	ldr r3, [r6, #0x08]
	adds r3, r3, r2
	str r3, [r6, #0x08]
	mov r0, r12
	adds r0, #0x0C
	ldr r3, [r6, #0x0C]
	adds r3, r3, r5
	str r3, [r6, #0x0C]
	ldr r3, [r0, #0x04]
	adds r3, r3, r4
	str r3, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r3, r3, r2
	str r3, [r0, #0x08]
	adds r0, #0x0C
	ldr r3, [r6, #0x18]
	adds r3, r3, r5
	str r3, [r6, #0x18]
	ldr r3, [r0, #0x04]
	adds r3, r3, r4
	str r3, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r3, r3, r2
	str r3, [r0, #0x08]
	adds r0, #0x0C
	ldr r3, [r6, #0x24]
	adds r3, r3, r5
	str r3, [r6, #0x24]
	ldr r3, [r0, #0x04]
	adds r3, r3, r4
	str r3, [r0, #0x04]
	ldr r3, [r0, #0x08]
	adds r3, r3, r2
	str r3, [r0, #0x08]
	movs r0, #0x30
	add r12, r0
	subs r1, #0x04
	cmp r1, #0x00
	bne _080E148E
_080E14EA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080E14F0: .4byte 0x03000FD8
_080E14F4: .4byte 0x03000FDC
_080E14F8: .4byte 0x000052F0
_080E14FC: .4byte 0x000052FC
