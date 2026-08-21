	.syntax unified
	.text

	thumb_func_start sub_807B7A8
sub_807B7A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	cmp r5, #0x00
	beq _0807B828
	adds r1, r5, #0x0
	adds r1, #0x7E
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	bne _0807B7D0
	ldr r0, _0807B7CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x04]
	subs r0, #0x01
	strb r0, [r1, #0x04]
	b _0807B7DE
_0807B7CC: .4byte 0x03000FD8
_0807B7D0:
	cmp r2, #0x04
	bne _0807B7DE
	ldr r0, _0807B830 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r1, #0x05]
	subs r0, #0x01
	strb r0, [r1, #0x05]
_0807B7DE:
	adds r4, r5, #0x0
	adds r4, #0x08
	cmp r4, #0x00
	beq _0807B7F2
_0807B7E6:
	adds r0, r4, #0x0
	bl sub_807F47C
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _0807B7E6
_0807B7F2:
	ldr r4, _0807B830 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	ldrb r1, [r1, #0x05]
	bl sub_80F8DE0
	ldrb r0, [r6, #0x00]
	movs r1, #0x06
	orrs r0, r1
	movs r1, #0x39
	negs r1, r1
	ands r0, r1
	strb r0, [r6, #0x00]
	ldr r1, _0807B834 @ =0x0000012D
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x1D
	bne _0807B828
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0D]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0D]
_0807B828:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807B830: .4byte 0x03000FD8
_0807B834: .4byte 0x0000012D
