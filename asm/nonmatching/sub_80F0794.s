	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r2, #0x00]
	subs r0, r1, #0x5
	cmp r0, #0x06
	bhi _080F0806
	lsls r0, r0, #0x02
	ldr r1, _080F07AC @ =lbl_080F07B0
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.byte 0x00, 0x00
_080F07AC: .4byte lbl_080F07B0
lbl_080F07B0:
	.4byte _080F07CC
	.4byte _080F07D4
	.4byte _080F07DC
	.4byte _080F07E4
	.4byte _080F07EE
	.4byte _080F07F6
	.4byte _080F07FE
_080F07CC:
	ldr r0, [r3, #20]
	bl sub_803AC8C
	b.n _080F080E
_080F07D4:
	ldr r0, [r3, #20]
	bl sub_803AAE4
	b.n _080F080E
_080F07DC:
	ldr r0, [r3, #20]
	bl sub_803AE38
	b.n _080F080E
_080F07E4:
	ldr r0, [r3, #20]
	movs r1, #1
	bl sub_803ADA8
	b.n _080F080E
_080F07EE:
	ldr r0, [r3, #20]
	bl sub_802F834
	b.n _080F080E
_080F07F6:
	ldr r0, [r3, #20]
	bl sub_803C638
	b.n _080F080E
_080F07FE:
	ldr r0, [r3, #20]
	bl sub_803C424
	b.n _080F080E
_080F0806:
	ldr r0, [r3, #0x14]
	movs r2, #0x00
	bl sub_8029A0C
_080F080E:
	movs r0, #0x01
	pop {r1}
	bx r1
