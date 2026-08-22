	.syntax unified
	.text

	thumb_func_start script_test_condition
script_test_condition: @ 080EA79C
	push {lr}
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x0C
	bhi _080EA84C
	lsls r0, r0, #0x02
	ldr r1, _080EA7B0 @ =lbl_080EA7B4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_080EA7B0: .4byte lbl_080EA7B4
lbl_080EA7B4:
	.4byte _080EA7E8
	.4byte _080EA7F2
	.4byte _080EA7FE
	.4byte _080EA808
	.4byte _080EA812
	.4byte _080EA81C
	.4byte _080EA84C
	.4byte _080EA84C
	.4byte _080EA826
	.4byte _080EA832
	.4byte _080EA838
	.4byte _080EA83E
	.4byte _080EA848
_080EA7E8:
	movs r0, #0
	cmp r2, r3
	bne.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA7F2:
	adds r1, r2, #0
	eors r1, r3
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #31
	b.n _080EA84E
_080EA7FE:
	movs r0, #0
	cmp r2, r3
	bge.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA808:
	movs r0, #0
	cmp r2, r3
	ble.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA812:
	movs r0, #0
	cmp r2, r3
	bgt.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA81C:
	movs r0, #0
	cmp r2, r3
	blt.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA826:
	adds r0, r2, #0
	orrs r0, r3
_080EA82A:
	cmp r0, #0
	beq.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA832:
	adds r0, r2, #0
	ands r0, r3
	b.n _080EA82A
_080EA838:
	adds r0, r2, #0
	eors r0, r3
	b.n _080EA82A
_080EA83E:
	movs r0, #0
	cmp r2, #0
	bne.n _080EA84E
	movs r0, #1
	b.n _080EA84E
_080EA848:
	mvns r0, r2
	b.n _080EA82A
_080EA84C:
	movs r0, #0x00
_080EA84E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
