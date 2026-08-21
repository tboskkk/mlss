	.syntax unified
	.text

	thumb_func_start sub_80D9F50
sub_80D9F50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080D9F9E
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	beq _080D9F78
	adds r0, r4, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080D9F92
_080D9F78:
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, _080D9FA4 @ =0x000013CA
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r0, _080D9FA8 @ =0x080D9E35
	str r0, [r4, #0x5C]
	str r5, [r4, #0x54]
_080D9F92:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x18
	strh r1, [r0, #0x00]
	ldr r0, _080D9FAC @ =0x080DA099
	str r0, [r4, #0x4C]
_080D9F9E:
	pop {r4, r5}
	pop {r0}
	bx r0
_080D9FA4: .4byte 0x000013CA
_080D9FA8: .4byte sub_80D9E34
_080D9FAC: .4byte sub_80DA098
