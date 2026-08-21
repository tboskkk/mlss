	.syntax unified
	.text

	thumb_func_start sub_8106F34
sub_8106F34:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08106F78
	ldr r0, _08106F80 @ =0x08106D9D
	str r0, [r4, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x01
	bl sub_80F75D8
	ldr r4, _08106F84 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldr r2, [r1, #0x7C]
	adds r1, r2, #0x0
	adds r1, #0xF4
	ldrb r1, [r1, #0x00]
	adds r2, #0xE8
	ldr r2, [r2, #0x00]
	bl sub_80F8E80
	ldr r1, [r4, #0x00]
	ldr r0, _08106F88 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x04
	orrs r0, r2
	strb r0, [r1, #0x00]
_08106F78:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08106F80: .4byte sub_8106D9C
_08106F84: .4byte 0x03000FD8
_08106F88: .4byte 0x000002BF
