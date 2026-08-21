	.syntax unified
	.text

	thumb_func_start sub_80F53E0
sub_80F53E0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r2, #0x0
	ldr r0, _080F5408 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldm r4!, {r0}
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	adds r5, r3, #0x0
	adds r5, #0x08
	ldm r4!, {r0}
	cmp r0, #0x01
	beq _080F5452
	cmp r0, #0x01
	bgt _080F540C
	cmp r0, #0x00
	beq _080F5412
	b _080F546C
_080F5408: .4byte 0x03000FD8
_080F540C:
	cmp r0, #0x02
	beq _080F5462
	b _080F546C
_080F5412:
	adds r3, #0x80
	ldrb r2, [r3, #0x00]
	lsls r1, r2, #0x1D
	lsrs r1, r1, #0x1F
	lsls r1, r1, #0x03
	movs r0, #0x09
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080F5434
	adds r1, #0xFF
_080F5434:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080F543E
	adds r2, #0xFF
_080F543E:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _080F5448
	adds r3, #0xFF
_080F5448:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	bl sub_80DF024
	b _080F546C
_080F5452:
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r1, r0
	ldr r1, [r0, #0x00]
	adds r0, r3, #0x0
	bl sub_807FDE8
	b _080F546C
_080F5462:
	ldr r1, [r4, #0x00]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r3, r2
	strh r1, [r0, #0x00]
_080F546C:
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
