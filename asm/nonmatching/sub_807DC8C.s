	.syntax unified
	.text

	thumb_func_start sub_807DC8C
sub_807DC8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r4, [r5, #0x08]
	adds r2, r4, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x39
	negs r1, r1
	ands r1, r0
	strb r1, [r2, #0x00]
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0807DCCC
	ldr r0, _0807DCC8 @ =0x00000111
	adds r2, r1, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	bl sub_807DD38
	movs r0, #0x24
	bl sub_8082898
	b _0807DD32
_0807DCC8: .4byte 0x00000111
_0807DCCC:
	adds r0, r1, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807DCEC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0807DCF8
_0807DCEC:
	ldr r2, _0807DD24 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807DCF8:
	ldr r2, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807DD2E
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	bne _0807DD28
	movs r0, #0x47
	bl play_sfx_80195B4
	b _0807DD2E
_0807DD24: .4byte 0x0000204D
_0807DD28:
	movs r0, #0x47
	bl play_sfx_80195B4
_0807DD2E:
	movs r0, #0x00
	str r0, [r5, #0x04]
_0807DD32:
	pop {r4, r5}
	pop {r0}
	bx r0
