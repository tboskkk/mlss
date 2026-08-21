	.syntax unified
	.text

	thumb_func_start sub_80798C4
sub_80798C4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807990C
	ldr r0, _080798EC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080798F4
	ldr r2, _080798F0 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r3, #0x00
	bl sub_8082E1C
	b _08079900
	.byte 0x00, 0x00
_080798EC: .4byte 0x03000F6C
_080798F0: .4byte 0x00004029
_080798F4:
	ldr r2, _08079914 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r3, #0x00
	bl sub_8082E1C
_08079900:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x06
	strh r1, [r0, #0x00]
	ldr r0, _08079918 @ =0x08079B49
	str r0, [r4, #0x4C]
_0807990C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079914: .4byte 0x00004029
_08079918: .4byte sub_8079B48
