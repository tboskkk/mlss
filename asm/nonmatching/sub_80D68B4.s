	.syntax unified
	.text

	thumb_func_start sub_80D68B4
sub_80D68B4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r3, _080D695C @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r3, [r0, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080D68E0
	cmp r1, #0x04
	bne _080D6928
_080D68E0:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080D68E8
	adds r0, #0xFF
_080D68E8:
	asrs r0, r0, #0x08
	adds r1, r3, #0x0
	adds r1, #0xCB
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r1, r0, #0x0
	subs r1, #0x1E
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080D6902
	adds r2, #0xFF
_080D6902:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
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
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r4, #0x0
	bl sub_80880C4
_080D6928:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r5, r1, #0x0
	cmp r2, #0x02
	beq _080D693C
	cmp r2, #0x04
	bne _080D69A0
_080D693C:
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080D6964
	ldr r2, _080D6960 @ =0x00002002
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D6970
	.byte 0x00, 0x00
_080D695C: .4byte 0x03000FD8
_080D6960: .4byte 0x00002002
_080D6964:
	ldr r2, _080D69D0 @ =0x0000204F
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080D6970:
	ldr r3, [r4, #0x08]
	movs r2, #0x00
	adds r0, r4, #0x0
	adds r0, #0x84
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r7, #0x02
	ldsh r0, [r0, r7]
	cmp r1, r0
	blt _080D6986
	movs r2, #0x01
_080D6986:
	lsls r2, r2, #0x06
	ldrb r1, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080D69A0:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x11]
	ldrb r0, [r5, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080D69BA
	cmp r2, #0x04
	bne _080D69C4
_080D69BA:
	movs r0, #0x00
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	bl sub_808863C
_080D69C4:
	ldr r0, _080D69D4 @ =0x080D8D19
	str r0, [r6, #0x4C]
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080D69D0: .4byte 0x0000204F
_080D69D4: .4byte sub_80D8D18
