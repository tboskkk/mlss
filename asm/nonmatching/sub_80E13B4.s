	.syntax unified
	.text

	thumb_func_start sub_80E13B4
sub_80E13B4:
	push {r4, lr}
	adds r2, r0, #0x0
	ldr r0, _080E13D0 @ =0x03000FD8
	ldr r4, [r0, #0x00]
	ldrb r1, [r4, #0x0D]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _080E13D4
	movs r0, #0x00
	b _080E13EA
	.byte 0x00, 0x00
_080E13D0: .4byte 0x03000FD8
_080E13D4:
	movs r0, #0x02
	orrs r0, r1
	strb r0, [r4, #0x0D]
	ldr r1, [r2, #0x0C]
	strh r3, [r2, #0x12]
	strh r3, [r2, #0x14]
	ldrh r0, [r1, #0x00]
	strh r0, [r2, #0x10]
	adds r1, #0x02
	str r1, [r2, #0x0C]
	ldr r0, _080E13F4 @ =0x080E0BF9
_080E13EA:
	str r0, [r2, #0x04]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E13F4: .4byte sub_80E0BF8
