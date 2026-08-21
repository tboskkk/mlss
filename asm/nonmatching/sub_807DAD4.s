	.syntax unified
	.text

	thumb_func_start sub_807DAD4
sub_807DAD4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x28]
	mov r8, r0
	cmp r1, #0x02
	beq _0807DBB4
	cmp r1, #0x02
	bgt _0807DAEE
	cmp r1, #0x01
	beq _0807DB80
	b _0807DC7C
_0807DAEE:
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	beq _0807DB00
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _0807DB40
	b _0807DC7C
_0807DB00:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB28
	ldr r2, _0807DB24 @ =0x00002028
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA4
	lsls r0, r0, #0x01
	b _0807DBD4
_0807DB24: .4byte 0x00002028
_0807DB28:
	ldr r2, _0807DB3C @ =0x00002057
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xA6
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB3C: .4byte 0x00002057
_0807DB40:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB68
	ldr r2, _0807DB64 @ =0x00002029
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0xE7
	b _0807DBD4
	.byte 0x00, 0x00
_0807DB64: .4byte 0x00002029
_0807DB68:
	ldr r2, _0807DB78 @ =0x00002058
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DB7C @ =0x0000014B
	b _0807DBD4
_0807DB78: .4byte 0x00002058
_0807DB7C: .4byte 0x0000014B
_0807DB80:
	mov r0, r8
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DB9C
	ldr r2, _0807DB98 @ =0x0000202A
	b _0807DBC8
	.byte 0x00, 0x00
_0807DB98: .4byte 0x0000202A
_0807DB9C:
	ldr r2, _0807DBB0 @ =0x00002059
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	b _0807DBD4
	.byte 0x00, 0x00
_0807DBB0: .4byte 0x00002059
_0807DBB4:
	mov r0, r8
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r4, #0x01
	negs r4, r4
	adds r7, r0, #0x0
	cmp r1, r4
	bne _0807DBE4
	ldr r2, _0807DBDC @ =0x0000202C
_0807DBC8:
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807DBE0 @ =0x00000149
_0807DBD4:
	adds r1, r4, #0x0
	bl play_sfx_80195B4
	b _0807DBFA
_0807DBDC: .4byte 0x0000202C
_0807DBE0: .4byte 0x00000149
_0807DBE4:
	ldr r2, _0807DC68 @ =0x0000205B
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x82
	lsls r0, r0, #0x01
	adds r1, r4, #0x0
	bl play_sfx_80195B4
_0807DBFA:
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r2, r5, #0x0
	adds r2, #0x76
	ldrb r1, [r2, #0x00]
	movs r0, #0x39
	negs r0, r0
	ands r0, r1
	movs r1, #0x08
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xB8
	movs r3, #0x00
	strh r3, [r0, #0x00]
	ldr r4, _0807DC6C @ =0x0807F649
	ldr r6, _0807DC70 @ =0x03000FD8
	ldr r2, [r6, #0x00]
	ldr r1, [r2, #0x3C]
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x3C]
	ldr r0, [r2, #0x4C]
	str r0, [r1, #0x00]
	str r4, [r1, #0x04]
	strh r3, [r1, #0x10]
	str r1, [r2, #0x4C]
	str r5, [r1, #0x08]
	ldr r2, [r6, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0807DC7C
	mov r0, r8
	adds r0, #0xF6
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bne _0807DC7C
	movs r0, #0x7F
	ands r0, r1
	strb r0, [r2, #0x0C]
	movs r0, #0x00
	ldsh r1, [r7, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DC74
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x74]
	b _0807DC78
_0807DC68: .4byte 0x0000205B
_0807DC6C: .4byte sub_807F648
_0807DC70: .4byte 0x03000FD8
_0807DC74:
	ldr r0, [r6, #0x00]
	ldr r1, [r0, #0x70]
_0807DC78:
	ldr r0, _0807DC88 @ =0x0807F53D
	str r0, [r1, #0x54]
_0807DC7C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807DC88: .4byte sub_807F53C
