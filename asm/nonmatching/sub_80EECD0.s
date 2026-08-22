	.syntax unified
	.text

	thumb_func_start sub_80EECD0
sub_80EECD0:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	ldm r4!, {r0}
	cmp r0, #0x0B
	bls _080EECE0
	b _080EEDFE
_080EECE0:
	lsls r0, r0, #0x02
	ldr r1, _080EECEC @ =lbl_080EECF0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EECEC: .4byte lbl_080EECF0
lbl_080EECF0:
	.4byte _080EED20
	.4byte _080EED2C
	.4byte _080EED38
	.4byte _080EED44
	.4byte _080EED50
	.4byte _080EED5C
	.4byte _080EED8C
	.4byte _080EEDAC
	.4byte _080EEDC0
	.4byte _080EEDCE
	.4byte _080EEDDC
	.4byte _080EEDEC
_080EED20:
	ldr r0, [r3, #20]
	bl sub_80316FC
	cmp r0, #0
	beq.n _080EEDFE
	b.n _080EEDFA
_080EED2C:
	ldr r0, [r3, #20]
	bl sub_80316FC
	cmp r0, #1
	bls.n _080EEDFE
	b.n _080EEDFA
_080EED38:
	ldr r0, [r3, #20]
	bl sub_80316FC
	cmp r0, #2
	bne.n _080EEDFE
	b.n _080EEDFA
_080EED44:
	ldr r0, [r3, #20]
	bl sub_80316FC
	cmp r0, #4
	bne.n _080EEDFE
	b.n _080EEDFA
_080EED50:
	ldr r0, [r3, #20]
	bl sub_80316FC
	cmp r0, #3
	bne.n _080EEDFE
	b.n _080EEDFA
_080EED5C:
	ldr r1, [r3, #20]
	movs r2, #128 @ 0x80
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0, #0]
	movs r2, #218 @ 0xda
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	cmp r0, #9
	beq.n _080EEDFA
	movs r2, #129 @ 0x81
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0, #0]
	movs r1, #218 @ 0xda
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne.n _080EEDFE
	b.n _080EEDFA
_080EED8C:
	ldr r0, [r3, #20]
	adds r2, r0, #0
	adds r2, #248 @ 0xf8
	ldrb r1, [r2, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq.n _080EEDA0
	ldr r0, [r4, #0]
	str r0, [r5, #0]
_080EEDA0:
	ldrb r1, [r2, #0]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0]
	b.n _080EEDFE
_080EEDAC:
	ldr r0, [r3, #20]
	movs r2, #174 @ 0xae
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0]
	movs r0, #64 @ 0x40
	ands r0, r1
	cmp r0, #0
	beq.n _080EEDFE
	b.n _080EEDFA
_080EEDC0:
	ldr r0, [r3, #20]
	bl sub_803C440
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _080EEDFE
	b.n _080EEDFA
_080EEDCE:
	ldr r0, [r3, #20]
	bl sub_803C4D8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _080EEDFE
	b.n _080EEDFA
_080EEDDC:
	ldr r0, [r3, #20]
	adds r0, #248 @ 0xf8
	ldrb r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq.n _080EEDFE
	b.n _080EEDFA
_080EEDEC:
	ldr r0, [r3, #20]
	adds r0, #248 @ 0xf8
	ldrb r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne.n _080EEDFE
_080EEDFA:
	ldr r0, [r4, #0]
	str r0, [r5, #0]
_080EEDFE:
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
