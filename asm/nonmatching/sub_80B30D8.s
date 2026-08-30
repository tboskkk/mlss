	.syntax unified
	.text

	thumb_func_start sub_80B30D8
sub_80B30D8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r3, _080B3128 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	ldrb r0, [r2, #0x0A]
	movs r1, #0xC0
	orrs r0, r1
	strb r0, [r2, #0x0A]
	ldr r0, [r3, #0x00]
	ldr r0, [r0, #0x70]
	adds r4, r0, #0x0
	adds r4, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080B3100
	cmp r1, #0x04
	bne _080B311C
_080B3100:
	ldr r2, _080B312C @ =0x00002032
	adds r0, r4, #0x0
	movs r1, #0x08
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
_080B311C:
	ldr r0, _080B3130 @ =0x080B328D
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080B3128: .4byte 0x03000FD8
_080B312C: .4byte 0x00002032
_080B3130: .4byte sub_80B328C
