	.syntax unified
	.text

	thumb_func_start sub_8078894
sub_8078894:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080788AA
	b _080789A8
_080788AA:
	movs r0, #0x50
	str r0, [r1, #0x00]
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _08078998
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080788CE
	adds r1, #0xFF
_080788CE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080788D8
	adds r2, #0xFF
_080788D8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080788E2
	adds r3, #0xFF
_080788E2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078984 @ =0x00002A61
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080788F6
	adds r0, #0xFF
_080788F6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078904
	adds r0, #0xFF
_08078904:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078910
	adds r0, #0xFF
_08078910:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078988 @ =0x0000402F
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r4, #0x30]
	str r0, [r3, #0x30]
	str r3, [r4, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0807898C @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078990 @ =0x08079655
	str r0, [r3, #0x4C]
	adds r1, r3, #0x0
	adds r1, #0xB2
	ldr r0, _08078994 @ =0x00001111
	strh r0, [r1, #0x00]
	subs r1, #0x06
	movs r0, #0x03
	strh r0, [r1, #0x00]
	b _080789A8
	.byte 0x00, 0x00
_08078984: .4byte 0x00002A61
_08078988: .4byte 0x0000402F
_0807898C: .4byte sub_8087540
_08078990: .4byte sub_8079654
_08078994: .4byte 0x00001111
_08078998:
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789B0 @ =0x08079689
	str r0, [r4, #0x4C]
_080789A8:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
_080789B0: .4byte sub_8079688
