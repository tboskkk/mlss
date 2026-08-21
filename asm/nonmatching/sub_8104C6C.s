	.syntax unified
	.text

	thumb_func_start sub_8104C6C
sub_8104C6C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	movs r1, #0x10
	ldsh r0, [r5, r1]
	cmp r0, #0x2B
	bgt _08104C8E
	cmp r0, #0x20
	bne _08104C86
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x79
	bl play_sfx_80195B4
_08104C86:
	ldrh r0, [r5, #0x10]
	adds r0, #0x01
	strh r0, [r5, #0x10]
	b _08104D06
_08104C8E:
	movs r0, #0x79
	bl stop_sfx_80195A8
	ldr r4, [r5, #0x0C]
	cmp r4, #0x00
	beq _08104CF2
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08104CF2
	adds r0, r4, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08104CCC
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x06
	ldr r2, _08104CC8 @ =0x00002003
	movs r3, #0x00
	bl sub_8082E1C
	b _08104CDA
_08104CC8: .4byte 0x00002003
_08104CCC:
	adds r0, r4, #0x0
	adds r0, #0x08
	movs r1, #0x06
	ldr r2, _08104D0C @ =0x00002050
	movs r3, #0x00
	bl sub_8082E1C
_08104CDA:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08104CF2:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08104D10 @ =0x08106A11
	str r0, [r5, #0x04]
_08104D06:
	pop {r4, r5}
	pop {r0}
	bx r0
_08104D0C: .4byte 0x00002050
_08104D10: .4byte sub_8106A10
