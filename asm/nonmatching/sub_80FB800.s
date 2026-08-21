	.syntax unified
	.text

	thumb_func_start sub_80FB800
sub_80FB800:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r4, #0x0
	adds r5, #0x0C
	ldr r7, [r4, #0x00]
	ldr r2, _080FB848 @ =0x00007FFF
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FB844
	adds r5, r4, #0x0
	adds r5, #0x1C
	movs r0, #0x0C
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bge _080FB862
	ldrb r1, [r4, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FB84C
	adds r0, r6, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FB85C
_080FB844:
	movs r0, #0x00
	b _080FB87C
_080FB848: .4byte 0x00007FFF
_080FB84C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r1, sp, #0x004
	strb r0, [r1, #0x00]
_080FB85C:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _080FB866
_080FB862:
	movs r0, #0x0C
	ldsb r0, [r5, r0]
_080FB866:
	lsls r0, r0, #0x02
	adds r0, r0, r6
	ldr r2, [r0, #0x28]
	ldr r3, _080FB884 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080FB87C:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080FB884: .4byte 0x00007FFF
