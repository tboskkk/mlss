	.syntax unified
	.text

	thumb_func_start sub_80FB888
sub_80FB888:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0x0C
	ldr r7, [r5, #0x00]
	ldr r2, _080FB8D0 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FB8CC
	adds r4, r5, #0x0
	adds r4, #0x1C
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	bge _080FB8EA
	ldrb r1, [r5, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FB8D4
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FB8E4
_080FB8CC:
	movs r0, #0x00
	b _080FB90A
_080FB8D0: .4byte 0x00007FFF
_080FB8D4:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r1, sp, #0x004
	strb r0, [r1, #0x00]
_080FB8E4:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _080FB8EE
_080FB8EA:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
_080FB8EE:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	movs r0, #0x08
	ldsh r3, [r4, r0]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r7, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080FB90A:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
