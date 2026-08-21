	.syntax unified
	.text

	thumb_func_start sub_80F40CC
sub_80F40CC:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	movs r6, #0x00
	ldr r0, [r3, #0x2C]
	ldr r1, _080F40EC @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F40F0
	subs r0, #0x01
	cmp r0, #0x07
	ble _080F40F6
	b _080F4124
	.byte 0x00, 0x00
_080F40EC: .4byte 0x0000179C
_080F40F0:
	subs r0, #0x07
	cmp r0, #0x07
	bgt _080F4124
_080F40F6:
	ldr r0, _080F410C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r0, [r3, #0x2C]
	ldr r1, _080F4110 @ =0x0000179C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x06
	bhi _080F4114
	subs r0, #0x01
	b _080F4116
	.byte 0x00, 0x00
_080F410C: .4byte 0x03000FD8
_080F4110: .4byte 0x0000179C
_080F4114:
	subs r0, #0x07
_080F4116:
	lsls r1, r0, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x08
	b _080F4160
_080F4124:
	ldr r0, [r3, #0x2C]
	ldr r2, _080F4148 @ =0x0000179C
	adds r0, r0, r2
	ldrb r1, [r0, #0x00]
	ldr r0, _080F414C @ =0x03000FDC
	ldr r0, [r0, #0x00]
	movs r2, #0x98
	lsls r2, r2, #0x04
	adds r3, r0, r2
	cmp r1, #0x06
	bhi _080F4154
	subs r1, #0x01
	movs r0, #0xD0
	muls r0, r1
	adds r0, r3, r0
	ldr r1, _080F4150 @ =0xFFFFF980
	adds r0, r0, r1
	b _080F4160
_080F4148: .4byte 0x0000179C
_080F414C: .4byte 0x03000FDC
_080F4150: .4byte 0xFFFFF980
_080F4154:
	subs r1, #0x07
	movs r0, #0xD0
	muls r0, r1
	adds r0, r3, r0
	ldr r2, _080F417C @ =0xFFFFF980
	adds r0, r0, r2
_080F4160:
	adds r0, #0x94
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080F416A
	movs r6, #0x01
_080F416A:
	ldm r4!, {r0}
	cmp r6, r0
	beq _080F4174
	ldr r0, [r4, #0x00]
	str r0, [r5, #0x00]
_080F4174:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080F417C: .4byte 0xFFFFF980
