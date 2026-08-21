	.syntax unified
	.text

	thumb_func_start sub_80FBFEC
sub_80FBFEC:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r5, #0x0C
	ldr r6, [r1, #0x00]
	movs r0, #0x0C
	ldsb r0, [r5, r0]
	cmp r0, #0x00
	bge _080FC032
	ldrb r1, [r1, #0x0B]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	bne _080FC01C
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080FC02C
	movs r0, #0x00
	b _080FC04C
_080FC01C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1F
	add r1, sp, #0x004
	strb r0, [r1, #0x00]
_080FC02C:
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _080FC036
_080FC032:
	movs r0, #0x0C
	ldsb r0, [r5, r0]
_080FC036:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r2, [r0, #0x28]
	ldr r3, _080FC054 @ =0x00007FFF
	str r3, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl sub_80FBB50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080FC04C:
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080FC054: .4byte 0x00007FFF
