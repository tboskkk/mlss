	.syntax unified
	.text

	thumb_func_start sub_8079568
sub_8079568:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080795C4
	ldr r0, _080795CC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x06
	adds r0, r0, r3
	str r0, [r4, #0x10]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r0, r3
	str r0, [r4, #0x14]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r1, [r2, #0x00]
	adds r1, #0x08
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080795D0 @ =0x080799B5
	str r0, [r4, #0x4C]
_080795C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080795CC: .4byte 0x03000FD8
_080795D0: .4byte sub_80799B4
