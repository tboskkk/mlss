	.syntax unified
	.text

	thumb_func_start sub_802F938
sub_802F938:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0x0
	movs r1, #0x95
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0802F950
	b _0802FAD6
_0802F950:
	movs r6, #0x02
	subs r1, #0x1F
	adds r0, r5, r1
	adds r4, r5, #0x0
	adds r4, #0x28
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	bge _0802F982
	mov r8, r4
	movs r0, #0x30
	adds r0, r0, r5
	mov r9, r0
	adds r7, r5, r1
_0802F96A:
	mov r1, r9
	adds r1, #0x04
	mov r9, r1
	subs r1, #0x04
	ldm r1!, {r0}
	mov r1, r8
	bl sub_80418E8
	adds r6, #0x01
	ldrb r0, [r7, #0x00]
	cmp r6, r0
	blt _0802F96A
_0802F982:
	adds r0, r5, #0x0
	bl sub_802563C
	adds r0, r5, #0x0
	bl sub_8025ACC
	ldr r0, [r4, #0x00]
	adds r1, r4, #0x0
	bl sub_80418E8
	ldr r0, [r4, #0x04]
	adds r1, r4, #0x0
	bl sub_80418E8
	ldr r1, _0802F9B4 @ =0x00000209
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0802F9B8
	adds r0, r5, #0x0
	bl sub_802DA10
	b _0802FA82
_0802F9B4: .4byte 0x00000209
_0802F9B8:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x00]
	subs r0, #0x03
	cmp r0, #0x10
	bhi _0802FA82
	lsls r0, r0, #0x02
	ldr r1, _0802F9DC @ =lbl_0802F9E0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_0802F9DC: .4byte lbl_0802F9E0
lbl_0802F9E0:
	.4byte _0802FA24
	.4byte _0802FA2C
	.4byte _0802FA34
	.4byte _0802FA3C
	.4byte _0802FA3C
	.4byte _0802FA82
	.4byte _0802FA44
	.4byte _0802FA4C
	.4byte _0802FA54
	.4byte _0802FA5C
	.4byte _0802FA64
	.4byte _0802FA6C
	.4byte _0802FA6C
	.4byte _0802FA74
	.4byte _0802FA74
	.4byte _0802FA7C
	.4byte _0802FA7C
_0802FA24:
	adds r0, r5, #0
	bl sub_80306A0
	b.n _0802FA82
_0802FA2C:
	adds r0, r5, #0
	bl sub_8032A90
	b.n _0802FA82
_0802FA34:
	adds r0, r5, #0
	bl sub_8031768
	b.n _0802FA82
_0802FA3C:
	adds r0, r5, #0
	bl sub_8033F5C
	b.n _0802FA82
_0802FA44:
	adds r0, r5, #0
	bl sub_8034BF4
	b.n _0802FA82
_0802FA4C:
	adds r0, r5, #0
	bl sub_80350B4
	b.n _0802FA82
_0802FA54:
	adds r0, r5, #0
	bl sub_8035DB0
	b.n _0802FA82
_0802FA5C:
	adds r0, r5, #0
	bl sub_8036F84
	b.n _0802FA82
_0802FA64:
	adds r0, r5, #0
	bl sub_80382CC
	b.n _0802FA82
_0802FA6C:
	adds r0, r5, #0
	bl sub_8039250
	b.n _0802FA82
_0802FA74:
	adds r0, r5, #0
	bl sub_8039C9C
	b.n _0802FA82
_0802FA7C:
	adds r0, r5, #0
	bl sub_803AFCC
_0802FA82:
	movs r1, #0x95
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x02
	bhi _0802FABE
	adds r0, r5, #0x0
	adds r0, #0xF9
	ldrb r1, [r0, #0x00]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0x00
	bne _0802FABE
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_802B804
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_802B804
	b _0802FAD6
_0802FABE:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_804FC90
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_804FC90
_0802FAD6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
