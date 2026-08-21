	.syntax unified
	.text

	thumb_func_start sub_814E060
sub_814E060:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r7, r2, #0x0
	add r4, sp, #0x010
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E0FC
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E098
	ldr r0, _0814E094 @ =0x081505A9
	b _0814E0FA
	.byte 0x00, 0x00
_0814E094: .4byte sub_81505A8
_0814E098:
	movs r1, #0x00
	ldrb r0, [r4, #0x00]
	cmp r0, #0x00
	bne _0814E0A2
	movs r1, #0x01
_0814E0A2:
	strb r1, [r4, #0x00]
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r5
	ldr r2, [r0, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1F
	lsrs r1, r1, #0x1F
	ldr r3, _0814E0DC @ =0x00000352
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	ands r1, r0
	cmp r1, #0x00
	beq _0814E0E4
	adds r0, r6, #0x0
	adds r1, r2, #0x0
	bl sub_814E820
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814E0E4
	ldr r0, _0814E0E0 @ =0x081505A9
	b _0814E0FA
	.byte 0x00, 0x00
_0814E0DC: .4byte 0x00000352
_0814E0E0: .4byte sub_81505A8
_0814E0E4:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0814E0FC
	ldr r0, _0814E104 @ =0x0814E109
_0814E0FA:
	str r0, [r7, #0x00]
_0814E0FC:
	add sp, #0x014
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0814E104: .4byte sub_814E108
