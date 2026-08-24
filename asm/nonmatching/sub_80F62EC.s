	.syntax unified
	.text

	thumb_func_start sub_80F62EC
sub_80F62EC:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r2, #0x0
	ldr r1, [r4, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F639A
	movs r0, #0x04
	ands r1, r0
	cmp r1, #0x00
	bne _080F630E
	ldr r0, _080F636C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x04]
	cmp r0, #0x00
	beq _080F6394
_080F630E:
	ldr r2, _080F6370 @ =0x03001034
	ldr r0, _080F6374 @ =0x08198154
	ldr r1, _080F6378 @ =0x081980D8
	subs r0, r0, r1
	ldr r3, [r2, #0x00]
	adds r3, r3, r0
	ldr r0, _080F637C @ =0x02000080
	ldr r1, _080F6380 @ =0x03000FDC
	ldr r1, [r1, #0x00]
	ldr r2, _080F6384 @ =0x00003AF0
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #0x03
	bl _call_via_r3
	ldr r3, _080F636C @ =0x03000FD8
	ldr r1, [r3, #0x00]
	ldr r0, _080F6388 @ =0x000002BF
	adds r1, r1, r0
	ldrb r0, [r1, #0x00]
	movs r2, #0x08
	orrs r0, r2
	strb r0, [r1, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	ldr r0, [r4, #0x00]
	movs r1, #0x02
	ands r0, r1
	movs r2, #0x00
	cmp r0, #0x00
	beq _080F6354
	ldr r2, _080F638C @ =0x00007FFF
_080F6354:
	ldr r0, _080F6390 @ =0x0000FFFF
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x00
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	adds r0, r3, #0x0
	movs r1, #0x04
	movs r3, #0x10
	bl sub_81151E4
	b _080F63AA
_080F636C: .4byte 0x03000FD8
_080F6370: .4byte 0x03001034
_080F6374: .4byte dword_8198154 @ =0x08198154
_080F6378: .4byte dword_81980D8 @ =0x081980D8
_080F637C: .4byte 0x02000080
_080F6380: .4byte 0x03000FDC
_080F6384: .4byte 0x00003AF0
_080F6388: .4byte 0x000002BF
_080F638C: .4byte 0x00007FFF
_080F6390: .4byte 0x0000FFFF
_080F6394:
	bl sub_8106724
	b _080F63AA
_080F639A:
	ldr r0, _080F63B4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _080F63B8 @ =0x000002BF
	adds r1, r1, r2
	ldrb r0, [r1, #0x00]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1, #0x00]
_080F63AA:
	movs r0, #0x01
	add sp, #0x010
	pop {r4}
	pop {r1}
	bx r1
_080F63B4: .4byte 0x03000FD8
_080F63B8: .4byte 0x000002BF
