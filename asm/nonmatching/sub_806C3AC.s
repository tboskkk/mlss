	.syntax unified
	.text

	thumb_func_start sub_806C3AC
sub_806C3AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C438
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806C438
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x44
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806C3FC
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C3F8 @ =0x0000163A
	b _0806C40A
_0806C3F8: .4byte 0x0000163A
_0806C3FC:
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _0806C440 @ =0x000016BC
_0806C40A:
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _0806C444 @ =0x03000E3C
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806C448 @ =0x0806C8C1
	str r0, [r4, #0x58]
	ldr r0, _0806C44C @ =0x0806C849
	str r0, [r4, #0x5C]
	ldr r0, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r1, [r1, #0x00]
	adds r0, #0x20
	strb r1, [r0, #0x00]
	ldr r0, _0806C450 @ =0x0806C8D9
	str r0, [r4, #0x4C]
_0806C438:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C440: .4byte 0x000016BC
_0806C444: .4byte 0x03000E3C
_0806C448: .4byte sub_806C8C0
_0806C44C: .4byte sub_806C848
_0806C450: .4byte sub_806C8D8
