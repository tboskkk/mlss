	.syntax unified
	.text

	thumb_func_start sub_808BED0
sub_808BED0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _0808BF30
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0x98
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0808BF0C
	cmp r0, #0x01
	bgt _0808BF02
	cmp r0, #0x00
	beq _0808BF12
	b _0808BF2C
_0808BF02:
	cmp r0, #0x02
	beq _0808BF12
	cmp r0, #0x03
	beq _0808BF20
	b _0808BF2C
_0808BF0C:
	adds r0, r4, #0x0
	movs r1, #0x08
	b _0808BF16
_0808BF12:
	adds r0, r4, #0x0
	movs r1, #0x04
_0808BF16:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0808BF2C
_0808BF20:
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0808BF2C:
	ldr r0, _0808BF38 @ =0x0808B85D
	str r0, [r4, #0x4C]
_0808BF30:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808BF38: .4byte sub_808B85C
