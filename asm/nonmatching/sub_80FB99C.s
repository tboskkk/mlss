	.syntax unified
	.text

	thumb_func_start sub_80FB99C
sub_80FB99C:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r4, #0x0C
	ldr r6, [r1, #0x00]
	movs r0, #0x0C
	ldsb r0, [r4, r0]
	cmp r0, #0x00
	bge _080FB9E0
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FB9CA
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FB9DA
	b _080FBA1C
_080FB9CA:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r1, sp, #0x004
	strb r0, [r1, #0x00]
_080FB9DA:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _080FB9E4
_080FB9E0:
	movs r0, #0x0C
	ldsb r0, [r4, r0]
_080FB9E4:
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r5, [r0, #0x28]
	ldr r2, _080FBA18 @ =0x00007FFF
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _080FBA1C
	adds r4, #0x10
	movs r0, #0x08
	ldsh r3, [r4, r0]
	movs r1, #0x0A
	ldsh r0, [r4, r1]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	adds r2, r5, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080FBA1E
_080FBA18: .4byte 0x00007FFF
_080FBA1C:
	movs r0, #0x00
_080FBA1E:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
