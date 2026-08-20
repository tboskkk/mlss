	.syntax unified
	.text

	thumb_func_start sub_80877FC
sub_80877FC:
	push {r4, lr}
	adds r4, r0, #0x0
	cmp r2, #0x00
	bge _0808784C
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r0, r0, r4
	muls r0, r1
	cmp r0, #0x00
	bge _08087814
	ldr r4, _08087848 @ =0x00003FFF
	adds r0, r0, r4
_08087814:
	asrs r0, r0, #0x0E
	subs r4, r0, r2
	subs r1, r1, r2
	adds r0, r2, #0x0
	muls r0, r2
	cmp r0, #0x00
	bge _08087824
	adds r0, #0xFF
_08087824:
	asrs r0, r0, #0x08
	subs r2, r3, r0
	adds r0, r1, #0x0
	muls r0, r1
	cmp r0, #0x00
	bge _08087832
	adds r0, #0xFF
_08087832:
	asrs r0, r0, #0x08
	subs r1, r2, r0
	adds r0, r4, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087840
	adds r0, #0xFF
_08087840:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	b _0808786C
	.byte 0x00, 0x00
_08087848: .4byte 0x00003FFF
_0808784C:
	adds r0, r1, #0x0
	muls r0, r4
	cmp r0, #0x00
	bge _08087858
	ldr r1, _08087874 @ =0x00003FFF
	adds r0, r0, r1
_08087858:
	asrs r0, r0, #0x0E
	subs r0, r0, r2
	adds r4, r0, #0x0
	muls r4, r0
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08087868
	adds r0, #0xFF
_08087868:
	asrs r0, r0, #0x08
	subs r0, r3, r0
_0808786C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087874: .4byte 0x00003FFF
