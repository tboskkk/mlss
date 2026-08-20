	.syntax unified
	.text

	thumb_func_start sub_806D770
sub_806D770:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _0806D7C8 @ =0x03000E3C
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x10]
	str r0, [r1, #0x10]
	ldr r0, [r2, #0x14]
	str r0, [r1, #0x14]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	subs r0, #0x01
	adds r3, r2, #0x0
	adds r3, #0x75
	strb r0, [r3, #0x00]
	ldr r1, [r2, #0x30]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x05
	adds r1, #0x75
	strb r0, [r1, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D7C4
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	strb r0, [r3, #0x00]
	ldr r1, [r2, #0x30]
	ldr r0, [r2, #0x2C]
	adds r0, #0x75
	ldrb r0, [r0, #0x00]
	adds r0, #0x01
	adds r1, #0x75
	strb r0, [r1, #0x00]
	ldr r0, _0806D7CC @ =0x0806D7D1
	str r0, [r2, #0x4C]
_0806D7C4:
	pop {r0}
	bx r0
_0806D7C8: .4byte 0x03000E3C
_0806D7CC: .4byte sub_806D7D0
