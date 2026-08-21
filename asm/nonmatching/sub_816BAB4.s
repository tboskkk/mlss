	.syntax unified
	.text

	thumb_func_start sub_816BAB4
sub_816BAB4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _0816BAE0 @ =0x0300034C
	ldrh r1, [r0, #0x28]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0816BAE4
	ldr r1, [r4, #0x6C]
	ldr r0, [r1, #0x70]
	adds r0, #0x20
	str r0, [r1, #0x70]
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r0, r2
	ble _0816BAD6
	str r2, [r1, #0x70]
_0816BAD6:
	adds r0, r1, #0x0
	bl sub_816D734
	b _0816BAFA
	.byte 0x00, 0x00
_0816BAE0: .4byte 0x0300034C
_0816BAE4:
	ldr r1, [r4, #0x6C]
	ldr r0, [r1, #0x70]
	subs r0, #0x20
	str r0, [r1, #0x70]
	ldr r2, _0816BB20 @ =0xFFFFFE00
	cmp r0, r2
	bge _0816BAF4
	str r2, [r1, #0x70]
_0816BAF4:
	adds r0, r1, #0x0
	bl sub_816D734
_0816BAFA:
	ldr r0, _0816BB24 @ =0x0300034C
	ldrh r1, [r0, #0x28]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _0816BB28
	ldr r1, [r4, #0x70]
	ldr r0, [r1, #0x70]
	adds r0, #0x20
	str r0, [r1, #0x70]
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r0, r2
	ble _0816BB18
	str r2, [r1, #0x70]
_0816BB18:
	adds r0, r1, #0x0
	bl sub_816D734
	b _0816BB3E
_0816BB20: .4byte 0xFFFFFE00
_0816BB24: .4byte 0x0300034C
_0816BB28:
	ldr r1, [r4, #0x70]
	ldr r0, [r1, #0x70]
	subs r0, #0x20
	str r0, [r1, #0x70]
	ldr r2, _0816BB54 @ =0xFFFFFE00
	cmp r0, r2
	bge _0816BB38
	str r2, [r1, #0x70]
_0816BB38:
	adds r0, r1, #0x0
	bl sub_816D734
_0816BB3E:
	ldr r0, _0816BB58 @ =0x0300034C
	ldrh r1, [r0, #0x28]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0816BB5C
	adds r0, r4, #0x0
	bl sub_816D6F0
	b _0816BB62
	.byte 0x00, 0x00
_0816BB54: .4byte 0xFFFFFE00
_0816BB58: .4byte 0x0300034C
_0816BB5C:
	adds r0, r4, #0x0
	bl sub_816D6D4
_0816BB62:
	adds r0, r4, #0x0
	bl sub_816BB70
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
