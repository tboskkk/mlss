	.syntax unified
	.text

	thumb_func_start sub_806BDA4
sub_806BDA4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806BE26
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _0806BDF8
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BDDA
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BDE6
_0806BDDA:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BDE6:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806BDF4 @ =0x0806BC41
	b _0806BE24
	.byte 0x00, 0x00
_0806BDF4: .4byte sub_806BC40
_0806BDF8:
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806BE16
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806BE22
_0806BE16:
	adds r0, r4, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806BE22:
	ldr r0, _0806BE2C @ =0x0806BE31
_0806BE24:
	str r0, [r4, #0x4C]
_0806BE26:
	pop {r4}
	pop {r0}
	bx r0
_0806BE2C: .4byte sub_806BE30
