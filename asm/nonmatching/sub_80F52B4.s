	.syntax unified
	.text

	thumb_func_start sub_80F52B4
sub_80F52B4:
	push {r4, lr}
	ldr r4, [r2, #0x08]
	cmp r4, #0x1F
	bne _080F52CC
	ldr r0, _080F52C8 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x04]
	strh r0, [r1, #0x18]
	b _080F53D8
	.byte 0x00, 0x00
_080F52C8: .4byte 0x03000FD8
_080F52CC:
	ldr r0, _080F52FC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r3, [r1, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	beq _080F53D8
	adds r0, r4, #0x0
	subs r0, #0x08
	cmp r0, #0x11
	bhi _080F53D8
	lsls r0, r0, #0x02
	ldr r1, _080F5300 @ =lbl_080F5304
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F52FC: .4byte 0x03000FD8
_080F5300: .4byte lbl_080F5304
lbl_080F5304:
	.4byte _080F534C
	.4byte _080F5356
	.4byte _080F536A
	.4byte _080F5372
	.4byte _080F53D8
	.4byte _080F53D8
	.4byte _080F53D8
	.4byte _080F5388
	.4byte _080F53D8
	.4byte _080F53CC
	.4byte _080F5394
	.4byte _080F539A
	.4byte _080F53A0
	.4byte _080F53D8
	.4byte _080F53D8
	.4byte _080F53D8
	.4byte _080F53AA
	.4byte _080F53B6
_080F534C:
	ldr r1, [r2, #4]
	adds r0, r3, #0
	adds r0, #246 @ 0xf6
	strh r1, [r0, #0]
	b.n _080F53D8
_080F5356:
	adds r0, r3, #0
	adds r0, #236 @ 0xec
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge.n _080F53D8
	ldr r0, [r2, #4]
	movs r2, #129 @ 0x81
	lsls r2, r2, #1
	b.n _080F53B0
_080F536A:
	ldr r0, [r2, #4]
	movs r2, #131 @ 0x83
	lsls r2, r2, #1
	b.n _080F53B0
_080F5372:
	adds r0, r3, #0
	adds r0, #236 @ 0xec
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge.n _080F53D8
	ldr r1, [r2, #4]
	adds r0, r3, #0
	adds r0, #252 @ 0xfc
	strh r1, [r0, #0]
	b.n _080F53D8
_080F5388:
	ldr r1, [r2, #4]
	movs r2, #130 @ 0x82
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0, #0]
	b.n _080F53D8
_080F5394:
	adds r1, r3, #0
	adds r1, #164 @ 0xa4
	b.n _080F53A4
_080F539A:
	adds r1, r3, #0
	adds r1, #168 @ 0xa8
	b.n _080F53A4
_080F53A0:
	adds r1, r3, #0
	adds r1, #172 @ 0xac
_080F53A4:
	ldr r0, [r2, #4]
	str r0, [r1, #0]
	b.n _080F53D8
_080F53AA:
	ldr r0, [r2, #4]
	movs r2, #135 @ 0x87
	lsls r2, r2, #1
_080F53B0:
	adds r1, r3, r2
	strh r0, [r1, #0]
	b.n _080F53D8
_080F53B6:
	ldr r1, [r2, #4]
	adds r3, #126 @ 0x7e
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #0]
	subs r0, #10
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	b.n _080F53D8
_080F53CC:
	ldr r1, [r2, #4]
	adds r0, r3, #0
	movs r2, #200 @ 0xc8
	movs r3, #0
	bl sub_8107D58
_080F53D8:
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
