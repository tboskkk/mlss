	push {r4, lr}
	adds r4, r1, #0x0
	ldm r2!, {r0}
	cmp r0, #0x04
	bhi _080EB03E
	lsls r0, r0, #0x02
	ldr r1, _080EAFC8 @ =lbl_080EAFCC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EAFC8: .4byte lbl_080EAFCC
lbl_080EAFCC:
	.4byte _080EAFE0
	.4byte _080EAFEE
	.4byte _080EAFFA
	.4byte _080EB006
	.4byte _080EB012
_080EAFE0:
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	movs r2, #1
	negs r2, r2
	bl sub_8019308
	b.n _080EB03E
_080EAFEE:
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	movs r2, #255 @ 0xff
	bl sub_8019308
	b.n _080EB03E
_080EAFFA:
	ldr r0, [r2, #0]
	ldrb r2, [r2, #4]
	movs r1, #255 @ 0xff
	bl sub_80193B4
	b.n _080EB03E
_080EB006:
	ldr r0, [r2, #0]
	ldrb r2, [r2, #4]
	movs r1, #0
	bl sub_80193B4
	b.n _080EB03E
_080EB012:
	ldmia r2!, {r0}
	cmp r0, #0
	blt.n _080EB03E
	cmp r0, #1
	ble.n _080EB022
	cmp r0, #2
	beq.n _080EB02A
	b.n _080EB03E
_080EB022:
	ldr r0, [r2, #0]
	bl sub_8019628
	b.n _080EB03E
_080EB02A:
	ldr r0, [r2, #0]
	bl sub_80195F8
	lsls r0, r0, #24
	cmp r0, #0
	beq.n _080EB03E
	ldr r0, [r4, #20]
	str r0, [r4, #0]
	movs r0, #0
	b.n _080EB040
_080EB03E:
	movs r0, #0x01
_080EB040:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
