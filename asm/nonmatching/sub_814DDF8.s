	.syntax unified
	.text

	thumb_func_start sub_814DDF8
sub_814DDF8:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r3, #0x28]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814DE30
	ldr r0, [r3, #0x2C]
	movs r1, #0x83
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0814DE30
	ldr r0, _0814DE2C @ =0x0814D35D
	b _0814DE3E
	.byte 0x00, 0x00
_0814DE2C: .4byte sub_814D35C
_0814DE30:
	adds r0, r5, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814DE40
	ldr r0, _0814DE48 @ =0x0814DC6D
_0814DE3E:
	str r0, [r4, #0x00]
_0814DE40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0814DE48: .4byte sub_814DC6C
