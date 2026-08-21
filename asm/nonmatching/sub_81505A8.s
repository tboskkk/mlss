	.syntax unified
	.text

	thumb_func_start sub_81505A8
sub_81505A8:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xDF
	lsls r1, r1, #0x01
	adds r0, r4, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	cmp r1, #0x00
	beq _081505C4
	cmp r1, #0x01
	beq _081505DC
	b _081505F4
_081505C4:
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r1, [sp, #0x000]
	movs r1, #0x06
	movs r3, #0x00
	bl sub_801E150
	b _081505F4
_081505DC:
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r1, #0x00
	str r1, [sp, #0x000]
	movs r1, #0x07
	movs r3, #0x00
	bl sub_801E150
_081505F4:
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08150614 @ =0x0814E1BD
	str r0, [r5, #0x00]
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08150614: .4byte sub_814E1BC
