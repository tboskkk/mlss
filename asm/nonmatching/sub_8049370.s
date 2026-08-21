	.syntax unified
	.text

	thumb_func_start sub_8049370
sub_8049370:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x54
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080493B4
	ldr r1, _080493AC @ =0x0000035B
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	ldr r1, _080493B0 @ =0x00001025
	cmp r0, #0x00
	beq _080493B6
	adds r1, #0x04
	b _080493B6
	.byte 0x00, 0x00
_080493AC: .4byte 0x0000035B
_080493B0: .4byte 0x00001025
_080493B4:
	ldr r1, _080493E4 @ =0x0000103F
_080493B6:
	adds r0, r4, #0x0
	bl sub_8049000
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	cmp r5, #0x00
	bne _080493E8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
	b _080493F2
	.byte 0x00, 0x00
_080493E4: .4byte 0x0000103F
_080493E8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3C
	bl play_sfx_80195B4
_080493F2:
	movs r0, #0x05
	strh r0, [r4, #0x04]
	ldr r0, _08049424 @ =0x00000212
	adds r2, r4, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, _08049428 @ =0x00000359
	adds r2, r4, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0804942C @ =0x00000353
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	pop {r4, r5}
	pop {r0}
	bx r0
_08049424: .4byte 0x00000212
_08049428: .4byte 0x00000359
_0804942C: .4byte 0x00000353
