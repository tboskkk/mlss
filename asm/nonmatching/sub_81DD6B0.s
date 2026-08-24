	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r2, _081DD6E8 @ =0x08212804
	movs r0, #0x0C
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	adds r0, #0x08
	bl sub_816168C
	ldr r0, [r4, #0x08]
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	bne _081DD6EC
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	bne _081DD6EC
	str r4, [r5, #0x04]
	str r4, [r5, #0x00]
	str r0, [r4, #0x00]
	str r4, [r4, #0x04]
	b _081DD6FA
	.byte 0x00, 0x00
_081DD6E8: .4byte 0x08212804
_081DD6EC:
	ldr r0, [r5, #0x04]
	str r4, [r0, #0x04]
	ldr r0, [r5, #0x04]
	str r0, [r4, #0x00]
	movs r0, #0x00
	str r0, [r4, #0x04]
	str r4, [r5, #0x04]
_081DD6FA:
	ldr r0, [r5, #0x08]
	adds r0, #0x01
	str r0, [r5, #0x08]
	adds r0, r6, #0x0
	movs r1, #0x02
	bl sub_816166C
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
