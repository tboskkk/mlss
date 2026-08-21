	.syntax unified
	.text

	thumb_func_start sub_8066820
sub_8066820:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r1, _08066860 @ =0x00004095
	movs r2, #0x00
	bl sub_807C0D0
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	movs r2, #0x08
	orrs r1, r2
	strb r1, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x75
	ldrb r1, [r1, #0x00]
	subs r1, #0x02
	adds r0, #0x75
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066860: .4byte 0x00004095
