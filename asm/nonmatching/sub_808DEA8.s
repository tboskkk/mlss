	.syntax unified
	.text

	thumb_func_start sub_808DEA8
sub_808DEA8:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x2B
	bl play_sfx_80195B4
	adds r1, r4, #0x0
	adds r1, #0x94
	movs r0, #0x58
	negs r0, r0
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _0808DEE8 @ =0x0808DF5D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0808DEE8: .4byte sub_808DF5C
