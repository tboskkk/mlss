	.syntax unified
	.text

	thumb_func_start sub_816BE10
sub_816BE10:
	push {lr}
	adds r3, r0, #0x0
	ldr r2, [r3, #0x6C]
	ldr r0, [r3, #0x18]
	str r0, [r2, #0x18]
	adds r1, r3, #0x0
	adds r1, #0x84
	ldr r0, [r3, #0x1C]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r2, #0x1C]
	ldr r2, [r3, #0x70]
	ldr r0, [r3, #0x18]
	str r0, [r2, #0x18]
	adds r1, r3, #0x0
	adds r1, #0x88
	ldr r0, [r3, #0x1C]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x1C]
	adds r1, r3, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0816BE4E
	adds r0, #0x03
	str r0, [r1, #0x00]
	cmp r0, #0x80
	ble _0816BE4E
	movs r0, #0x00
	str r0, [r1, #0x00]
_0816BE4E:
	ldr r0, [r3, #0x6C]
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x11]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _0816BE8C
	ldr r1, _0816BE84 @ =0x08198504
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, [r3, #0x74]
	cmp r1, #0x00
	bge _0816BE74
	adds r1, #0x3F
_0816BE74:
	asrs r1, r1, #0x06
	lsls r1, r1, #0x05
	ldr r0, _0816BE88 @ =0xFFFFD800
	adds r1, r1, r0
	ldr r0, [r3, #0x18]
	subs r0, r0, r1
	b _0816BEB0
	.byte 0x00, 0x00
_0816BE84: .4byte 0x08198504
_0816BE88: .4byte 0xFFFFD800
_0816BE8C:
	ldr r1, _0816BEBC @ =0x08198504
	adds r0, r3, #0x0
	adds r0, #0x8C
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r2, [r3, #0x74]
	cmp r1, #0x00
	bge _0816BEA4
	adds r1, #0x3F
_0816BEA4:
	asrs r1, r1, #0x06
	lsls r1, r1, #0x05
	ldr r0, _0816BEC0 @ =0xFFFFD800
	adds r1, r1, r0
	ldr r0, [r3, #0x18]
	adds r0, r0, r1
_0816BEB0:
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x1C]
	str r0, [r2, #0x1C]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0816BEBC: .4byte 0x08198504
_0816BEC0: .4byte 0xFFFFD800
