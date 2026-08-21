	.syntax unified
	.text

	thumb_func_start sub_80C67A4
sub_80C67A4:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _080C67F8 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldr r3, [r2, #0x70]
	adds r4, r3, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080C68B2
	ldr r1, _080C67FC @ =0x083B8A12
	ldr r6, _080C6800 @ =0x000002BF
	adds r0, r2, r6
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
	adds r0, r0, r1
	ldrb r2, [r0, #0x00]
	cmp r2, #0x00
	beq _080C680C
	adds r0, r3, #0x0
	adds r0, #0xB6
	ldrh r1, [r0, #0x00]
	ldr r0, _080C6804 @ =0x00000FFF
	ands r0, r1
	cmp r2, r0
	bgt _080C680C
	adds r0, r5, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080C67F2
	cmp r1, #0x04
	bne _080C68B2
_080C67F2:
	ldr r0, _080C6808 @ =0x080C8609
	b _080C68B0
	.byte 0x00, 0x00
_080C67F8: .4byte 0x03000FD8
_080C67FC: .4byte 0x083B8A12
_080C6800: .4byte 0x000002BF
_080C6804: .4byte 0x00000FFF
_080C6808: .4byte sub_80C8608
_080C680C:
	adds r1, r4, #0x0
	adds r1, #0x76
	ldrb r0, [r1, #0x00]
	movs r2, #0x06
	ands r2, r0
	adds r6, r1, #0x0
	cmp r2, #0x02
	beq _080C6820
	cmp r2, #0x04
	bne _080C687C
_080C6820:
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C682E
	adds r0, #0xFF
_080C682E:
	asrs r0, r0, #0x08
	adds r1, r0, #0x0
	adds r1, #0x09
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6840
	adds r0, #0xFF
_080C6840:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080C6852
	adds r0, #0xFF
_080C6852:
	asrs r3, r0, #0x08
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_808843C
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080C6868
	adds r0, #0xFF
_080C6868:
	asrs r0, r0, #0x08
	adds r0, #0x20
	adds r1, r4, #0x0
	adds r1, #0x92
	strh r0, [r1, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x03
	adds r0, r4, #0x0
	bl sub_8088164
_080C687C:
	ldrb r0, [r6, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x02
	beq _080C688A
	cmp r2, #0x04
	bne _080C68A2
_080C688A:
	ldr r2, _080C68BC @ =0x00002034
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_080C68A2:
	adds r2, r4, #0x0
	adds r2, #0xAE
	ldrh r1, [r2, #0x00]
	ldr r0, _080C68C0 @ =0x00000FFF
	ands r0, r1
	strh r0, [r2, #0x00]
	ldr r0, _080C68C4 @ =0x080C68C9
_080C68B0:
	str r0, [r5, #0x4C]
_080C68B2:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080C68BC: .4byte 0x00002034
_080C68C0: .4byte 0x00000FFF
_080C68C4: .4byte sub_80C68C8
