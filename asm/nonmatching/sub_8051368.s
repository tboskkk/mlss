	.syntax unified
	.text

	thumb_func_start sub_8051368
sub_8051368:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08051394 @ =0x0000020F
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	bl sub_8021ED8
	ldr r0, _08051398 @ =0x0000023D
	adds r4, r4, r0
	movs r0, #0x07
	strb r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08051394: .4byte 0x0000020F
_08051398: .4byte 0x0000023D
