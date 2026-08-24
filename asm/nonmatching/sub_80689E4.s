	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08068A1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08068A04
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08068A08
_08068A04:
	adds r0, r4, #0x0
	movs r1, #0x0F
_08068A08:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _08068A24 @ =0x08068A51
	str r0, [r4, #0x4C]
_08068A1C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068A24: .4byte sub_8068A50
