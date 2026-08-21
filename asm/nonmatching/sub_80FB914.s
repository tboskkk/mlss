	.syntax unified
	.text

	thumb_func_start sub_80FB914
sub_80FB914:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r5, #0x0C
	ldr r7, [r1, #0x00]
	movs r0, #0x0C
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bge _080FB958
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FB942
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FB952
	b _080FB990
_080FB942:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r1, sp, #0x004
	strb r0, [r1, #0x00]
_080FB952:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _080FB95C
_080FB958:
	movs r0, #0x0C
	ldsb r0, [r5, r0]
_080FB95C:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r4, [r0, #0x28]
	ldr r6, _080FB98C @ =0x00007FFF
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FB990
	adds r5, #0x10
	str r6, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	adds r3, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080FB992
_080FB98C: .4byte 0x00007FFF
_080FB990:
	movs r0, #0x00
_080FB992:
	add sp, #0x008
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
