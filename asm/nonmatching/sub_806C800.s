	.syntax unified
	.text

	thumb_func_start sub_806C800
sub_806C800:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806C83C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _0806C82E
	movs r0, #0x00
	b _0806C83A
_0806C82E:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x08
	strh r1, [r0, #0x00]
	ldr r0, _0806C844 @ =0x0806CAC1
_0806C83A:
	str r0, [r4, #0x4C]
_0806C83C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C844: .4byte sub_806CAC0
