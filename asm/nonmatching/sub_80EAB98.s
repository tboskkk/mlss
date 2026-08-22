	.syntax unified
	.text

	thumb_func_start sub_80EAB98
sub_80EAB98:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	adds r6, r3, #0x0
	ldr r0, [r4, #0x04]
	cmp r0, #0x0C
	bhi _080EAC54
	lsls r0, r0, #0x02
	ldr r1, _080EABB4 @ =lbl_080EABB8
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080EABB4: .4byte lbl_080EABB8
lbl_080EABB8:
	.4byte _080EAC54
	.4byte _080EABEC
	.4byte _080EABF4
	.4byte _080EABFC
	.4byte _080EAC04
	.4byte _080EAC0E
	.4byte _080EAC18
	.4byte _080EAC20
	.4byte _080EAC28
	.4byte _080EAC30
	.4byte _080EAC38
	.4byte _080EAC40
	.4byte _080EAC4E
_080EABEC:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	adds r0, r0, r1
	b.n _080EAC52
_080EABF4:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	subs r0, r0, r1
	b.n _080EAC52
_080EABFC:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	muls r0, r1
	b.n _080EAC52
_080EAC04:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	bl __divsi3
	b.n _080EAC52
_080EAC0E:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	bl __modsi3
	b.n _080EAC52
_080EAC18:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	lsls r0, r1
	b.n _080EAC52
_080EAC20:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	asrs r0, r1
	b.n _080EAC52
_080EAC28:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	ands r0, r1
	b.n _080EAC52
_080EAC30:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	orrs r0, r1
	b.n _080EAC52
_080EAC38:
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	eors r0, r1
	b.n _080EAC52
_080EAC40:
	movs r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne.n _080EAC4A
	movs r1, #1
_080EAC4A:
	str r1, [r4, #8]
	b.n _080EAC54
_080EAC4E:
	ldr r0, [r4, #8]
	mvns r0, r0
_080EAC52:
	str r0, [r4, #8]
_080EAC54:
	adds r1, r5, #0x0
	adds r1, #0x18
	movs r2, #0x00
	ldsh r0, [r4, r2]
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	ldr r2, [sp, #0x018]
	ldr r3, [sp, #0x01C]
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
