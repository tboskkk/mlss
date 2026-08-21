	.syntax unified
	.text

	thumb_func_start sub_80C964C
sub_80C964C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, _080C9688 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r5, [r0, #0x70]
	adds r4, r5, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C970C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bne _080C9690
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C9680
	cmp r2, #0x04
	bne _080C970C
_080C9680:
	ldr r0, _080C968C @ =0x080C9855
	str r0, [r4, #0x4C]
	b _080C970C
	.byte 0x00, 0x00
_080C9688: .4byte 0x03000FD8
_080C968C: .4byte sub_80C9854
_080C9690:
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C96A2
	cmp r1, #0x04
	bne _080C96FC
_080C96A2:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080C96AA
	adds r0, #0xFF
_080C96AA:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x3A
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080C96C4
	adds r2, #0xFF
_080C96C4:
	asrs r2, r2, #0x08
	adds r0, r5, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	movs r3, #0x00
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C96E8
	adds r0, #0xFF
_080C96E8:
	asrs r0, r0, #0x08
	adds r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0x9A
	strh r0, [r1, #0x00]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C96FC:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C9714 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C9718 @ =0x080C971D
	str r0, [r6, #0x4C]
_080C970C:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080C9714: .4byte 0x00000FFF
_080C9718: .4byte sub_80C971C
