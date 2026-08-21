	.syntax unified
	.text

	thumb_func_start sub_807175C
sub_807175C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xA0
	ldr r0, [r5, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r5, #0x18]
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bgt _080717E2
	movs r4, #0x00
	str r4, [r5, #0x18]
	ldr r2, _080717E8 @ =0x000040AE
	adds r0, r5, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080717EC @ =0x080717F1
	str r0, [r5, #0x4C]
_080717E2:
	pop {r4, r5}
	pop {r0}
	bx r0
_080717E8: .4byte 0x000040AE
_080717EC: .4byte sub_80717F0
