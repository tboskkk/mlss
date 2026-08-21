	.syntax unified
	.text

	thumb_func_start sub_80DDE04
sub_80DDE04:
	push {r4, r5, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080DDEC4
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r2, [r0, #0x00]
	cmp r2, #0x00
	bne _080DDEC4
	ldr r0, [r4, #0x28]
	ldr r3, _080DDE38 @ =0x00000113
	adds r1, r0, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0xFF
	bne _080DDE3C
	strb r2, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x13
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080DDEB8
_080DDE38: .4byte 0x00000113
_080DDE3C:
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA3
	bl play_sfx_80195B4
	ldr r5, [r4, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldrh r1, [r0, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080DDE62
	adds r0, #0xFF
_080DDE62:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _080DDE6E
	adds r0, #0xFF
_080DDE6E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x1
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080DDE7A
	adds r0, #0xFF
_080DDE7A:
	asrs r0, r0, #0x08
	adds r0, #0x27
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807BF34
	str r0, [r4, #0x30]
	adds r3, r0, #0x0
	adds r3, #0x79
	ldrb r1, [r3, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r4, #0x2C]
	str r1, [r0, #0x2C]
	adds r2, r0, #0x0
	adds r2, #0x74
	movs r1, #0xFF
	strb r1, [r2, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080DDEB8:
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x30
	strh r1, [r0, #0x00]
	ldr r0, _080DDECC @ =0x080DDED1
	str r0, [r4, #0x4C]
_080DDEC4:
	add sp, #0x00C
	pop {r4, r5}
	pop {r0}
	bx r0
_080DDECC: .4byte sub_80DDED0
