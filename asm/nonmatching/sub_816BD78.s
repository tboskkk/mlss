	.syntax unified
	.text

	thumb_func_start sub_816BD78
sub_816BD78:
	push {r4, lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x80
	ldr r0, [r3, #0x1C]
	ldr r1, [r2, #0x00]
	adds r1, r0, r1
	str r1, [r3, #0x1C]
	ldr r0, _0816BD94 @ =0x00003FFF
	cmp r1, r0
	bgt _0816BD98
	adds r0, #0x01
	b _0816BDA0
	.byte 0x00, 0x00
_0816BD94: .4byte 0x00003FFF
_0816BD98:
	movs r0, #0x80
	lsls r0, r0, #0x08
	cmp r1, r0
	ble _0816BDA8
_0816BDA0:
	str r0, [r3, #0x1C]
	ldr r0, [r2, #0x00]
	negs r0, r0
	str r0, [r2, #0x00]
_0816BDA8:
	ldr r0, [r3, #0x78]
	cmp r0, #0x02
	beq _0816BDB8
	cmp r0, #0x02
	ble _0816BE00
	cmp r0, #0x03
	beq _0816BDDE
	b _0816BE00
_0816BDB8:
	adds r2, r3, #0x0
	adds r2, #0x84
	ldr r0, [r2, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r4, r3, #0x0
	adds r4, #0x88
	str r0, [r4, #0x00]
	ldr r0, [r2, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x05
	cmp r0, r1
	ble _0816BE00
	str r1, [r4, #0x00]
	str r1, [r2, #0x00]
	movs r0, #0x00
	b _0816BDFE
_0816BDDE:
	adds r1, r3, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	ldr r2, _0816BE0C @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r3, #0x0
	adds r2, #0x88
	str r0, [r2, #0x00]
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bge _0816BE00
	movs r0, #0x00
	str r0, [r2, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0x01
_0816BDFE:
	str r0, [r3, #0x78]
_0816BE00:
	adds r0, r3, #0x0
	bl sub_816BE10
	pop {r4}
	pop {r0}
	bx r0
_0816BE0C: .4byte 0xFFFFFF00
