	.syntax unified
	.text

	thumb_func_start sub_808BE24
sub_808BE24:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r2, #0x00]
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r5, r0, r1
	str r5, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x14]
	adds r6, r0, r1
	str r6, [r4, #0x14]
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r4, #0x18]
	adds r3, r0, r1
	str r3, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	cmp r0, r3
	blt _0808BEA6
	adds r0, r5, #0x0
	cmp r0, #0x00
	bge _0808BE70
	adds r0, #0xFF
_0808BE70:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	cmp r0, #0x00
	bge _0808BE7A
	adds r0, #0xFF
_0808BE7A:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0808BE84
	adds r0, #0xFF
_0808BE84:
	asrs r3, r0, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0808BEB0 @ =0x00000C67
	bl sub_80DF024
	movs r0, #0x8D
	lsls r0, r0, #0x01
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_0808BEA6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808BEB0: .4byte 0x00000C67
