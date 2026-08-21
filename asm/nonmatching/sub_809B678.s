	.syntax unified
	.text

	thumb_func_start sub_809B678
sub_809B678:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x2C]
	ldr r0, [r2, #0x40]
	cmp r0, #0x00
	bne _0809B69C
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x3E
	ands r0, r1
	cmp r0, #0x02
	bne _0809B69C
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0809B69C:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0809B6C8
	ldr r2, _0809B6D0 @ =0x000040C2
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0809B6D4 @ =0x0809B739
	str r0, [r4, #0x4C]
_0809B6C8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0809B6D0: .4byte 0x000040C2
_0809B6D4: .4byte sub_809B738
