	.syntax unified
	.text

	thumb_func_start sub_808CC08
sub_808CC08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0808CC38 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _0808CC56
	ldr r0, [r4, #0x28]
	movs r1, #0x8F
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0808CC3C
	adds r0, r4, #0x0
	bl sub_8092E04
	b _0808CCCE
	.byte 0x00, 0x00
_0808CC38: .4byte 0x03000FD8
_0808CC3C:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0808CC4E
	adds r0, r4, #0x0
	bl sub_8093E50
	b _0808CCCE
_0808CC4E:
	adds r0, r4, #0x0
	bl sub_8091C74
	b _0808CCCE
_0808CC56:
	ldr r0, [r4, #0x28]
	movs r5, #0x8F
	lsls r5, r5, #0x01
	adds r0, r0, r5
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _0808CC72
	adds r0, r4, #0x0
	bl sub_808EC88
	b _0808CCCE
_0808CC72:
	movs r0, #0x80
	lsls r0, r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0808CCC8
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r3, r0, r1
	ldr r1, _0808CCBC @ =0x03000FF4
	ldr r2, [r1, #0x00]
	adds r0, #0xEC
	movs r5, #0x00
	ldsh r1, [r0, r5]
	mvns r1, r1
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r2, r0
	ldrh r0, [r2, #0x2C]
	str r0, [r3, #0x00]
	ldr r0, _0808CCC0 @ =0x0808DD05
	str r0, [r4, #0x4C]
	ldr r0, _0808CCC4 @ =0x0808DD2D
	str r0, [r4, #0x68]
	movs r0, #0x01
	b _0808CCCE
_0808CCBC: .4byte 0x03000FF4
_0808CCC0: .4byte sub_808DD04
_0808CCC4: .4byte sub_808DD2C
_0808CCC8:
	adds r0, r4, #0x0
	bl sub_808FC84
_0808CCCE:
	pop {r4, r5}
	pop {r1}
	bx r1
