	.syntax unified
	.text

	thumb_func_start sub_809D358
sub_809D358:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _0809D390 @ =0x00004109
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
	adds r0, #0x75
	movs r1, #0xFF
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0809D390: .4byte 0x00004109
