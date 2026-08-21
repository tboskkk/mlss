	.syntax unified
	.text

	thumb_func_start sub_80BF628
sub_80BF628:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	ldr r0, _080BF71C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	ldr r0, [r0, #0x74]
	adds r6, r0, #0x0
	adds r6, #0x08
	adds r0, r5, #0x0
	bl sub_8087CE4
	adds r0, r4, #0x0
	adds r0, #0x81
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _080BF714
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF664
	cmp r1, #0x04
	bne _080BF67C
_080BF664:
	ldr r2, _080BF720 @ =0x00002033
	adds r0, r5, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BF67C:
	adds r0, r6, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF68E
	cmp r1, #0x04
	bne _080BF6A6
_080BF68E:
	ldr r2, _080BF724 @ =0x00002062
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080BF6A6:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BF6C4
	cmp r1, #0x04
	bne _080BF710
_080BF6C4:
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF6D2
	adds r0, #0xFF
_080BF6D2:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x10
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF6E4
	adds r0, #0xFF
_080BF6E4:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x18
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080BF6F6
	adds r0, #0xFF
_080BF6F6:
	asrs r3, r0, #0x08
	adds r3, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl sub_80880C4
_080BF710:
	ldr r0, _080BF728 @ =0x080BF72D
	str r0, [r7, #0x4C]
_080BF714:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080BF71C: .4byte 0x03000FD8
_080BF720: .4byte 0x00002033
_080BF724: .4byte 0x00002062
_080BF728: .4byte sub_80BF72C
