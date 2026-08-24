	push {r4, r5, r6, r7, lr}
	movs r1, #0x00
	adds r7, r0, #0x4
_0816367A:
	lsls r4, r1, #0x01
	adds r6, r1, #0x1
	adds r4, r4, r1
	lsls r4, r4, #0x02
	adds r4, r4, r7
	adds r5, r4, #0x0
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldm r4!, {r0}
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r4, #0x00]
	bl sub_8161E38
	ldr r0, [r4, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	ldr r0, [r5, #0x08]
	bl sub_8161E38
	ldr r0, [r5, #0x08]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8161C9C
	adds r1, r6, #0x0
	cmp r1, #0x01
	ble _0816367A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
