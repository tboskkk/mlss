	.syntax unified
	.text

	thumb_func_start sub_80BC37C
sub_80BC37C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080BC400 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r4, [r0, #0x70]
	adds r5, r4, #0x0
	adds r5, #0x08
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080BC3A8
	cmp r1, #0x04
	bne _080BC3F4
_080BC3A8:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _080BC3B0
	adds r1, #0xFF
_080BC3B0:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCB
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _080BC3C6
	adds r2, #0xFF
_080BC3C6:
	asrs r2, r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0xCC
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	movs r3, #0x17
	bl sub_808843C
	movs r1, #0x18
	adds r0, r4, #0x0
	adds r0, #0x9A
	strh r1, [r0, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_8088164
_080BC3F4:
	ldr r0, _080BC404 @ =0x080BC409
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080BC400: .4byte 0x03000FD8
_080BC404: .4byte sub_80BC408
