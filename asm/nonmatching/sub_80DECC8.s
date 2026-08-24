	.syntax unified
	.text

	thumb_func_start sub_80DECC8
sub_80DECC8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x28]
	ldr r1, _080DECE4 @ =0x00000113
	adds r0, r0, r1
	ldrb r3, [r0, #0x00]
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0x00
	beq _080DECE0
	cmp r3, #0xFF
	bne _080DECE8
_080DECE0:
	movs r0, #0x00
	b _080DED18
_080DECE4: .4byte 0x00000113
_080DECE8:
	movs r0, #0x7F
	ands r3, r0
	ldr r1, _080DED20 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	ldr r2, _080DED24 @ =0x00000349
	adds r0, r0, r2
	strb r3, [r0, #0x00]
	ldr r2, [r1, #0x00]
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r2, r2, r0
	lsls r0, r3, #0x04
	ldr r1, _080DED28 @ =0x083BBDD0
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r0, r3, #0x0
	bl sub_8081EAC
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	ldr r0, _080DED2C @ =0x080DED85
_080DED18:
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080DED20: .4byte 0x03000FD8
_080DED24: .4byte 0x00000349
_080DED28: .4byte byte_83BBDD0 @ =0x083BBDD0
_080DED2C: .4byte sub_80DED84
