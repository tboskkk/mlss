	.syntax unified
	.text

	thumb_func_start sub_808B7D0
sub_808B7D0:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808B7FC
	cmp r0, #0x01
	bgt _0808B7F2
	cmp r0, #0x00
	beq _0808B802
	b _0808B81C
_0808B7F2:
	cmp r0, #0x02
	beq _0808B802
	cmp r0, #0x03
	beq _0808B810
	b _0808B81C
_0808B7FC:
	adds r0, r4, #0x0
	movs r1, #0x07
	b _0808B806
_0808B802:
	adds r0, r4, #0x0
	movs r1, #0x03
_0808B806:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808B81C
_0808B810:
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808B81C:
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808B844
	cmp r0, #0x01
	bgt _0808B83C
	cmp r0, #0x00
	beq _0808B844
	b _0808B846
_0808B83C:
	cmp r0, #0x02
	beq _0808B844
	cmp r0, #0x03
	bne _0808B846
_0808B844:
	movs r5, #0x18
_0808B846:
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	ldr r0, _0808B858 @ =0x0808BED1
	str r0, [r4, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808B858: .4byte sub_808BED0
