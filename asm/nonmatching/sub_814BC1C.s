	.syntax unified
	.text

	thumb_func_start sub_814BC1C
sub_814BC1C:
	push {r4, r5, lr}
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bne _0814BC46
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x05
	orrs r0, r1
	strb r0, [r2, #0x00]
_0814BC46:
	adds r0, r4, #0x0
	bl sub_813B564
	adds r0, r4, #0x0
	bl sub_813B6A0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814BC5C
	ldr r0, _0814BC64 @ =0x081494F5
	str r0, [r5, #0x00]
_0814BC5C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814BC64: .4byte sub_81494F4
