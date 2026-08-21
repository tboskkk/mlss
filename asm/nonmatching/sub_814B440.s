	.syntax unified
	.text

	thumb_func_start sub_814B440
sub_814B440:
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r2, #0x0
	cmp r2, #0x00
	bne _0814B456
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x50
	b _0814B4C0
_0814B456:
	cmp r2, #0x01
	bne _0814B464
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x41
	b _0814B4C0
_0814B464:
	cmp r2, #0x02
	bne _0814B472
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B472:
	cmp r2, #0x03
	beq _0814B4C2
	cmp r2, #0x04
	bne _0814B48A
	movs r0, #0xEB
	lsls r0, r0, #0x01
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #0x00]
	b _0814B4C2
_0814B48A:
	cmp r2, #0x05
	beq _0814B4C2
	cmp r2, #0x06
	beq _0814B4C2
	cmp r2, #0x07
	bne _0814B4A0
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x01
	b _0814B4C0
_0814B4A0:
	cmp r0, #0x08
	beq _0814B4C2
	cmp r0, #0x09
	beq _0814B4C2
	cmp r0, #0x0A
	beq _0814B4C2
	cmp r0, #0x0B
	beq _0814B4C2
	cmp r0, #0x0C
	beq _0814B4C2
	cmp r0, #0x0D
	bne _0814B4C2
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r1, r0
	movs r0, #0x00
_0814B4C0:
	strh r0, [r1, #0x00]
_0814B4C2:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
