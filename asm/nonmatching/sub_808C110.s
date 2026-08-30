	.syntax unified
	.text

	thumb_func_start sub_808C110
sub_808C110:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0808C154
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAD
	bl play_sfx_80195B4
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0808C130
	adds r1, #0xFF
_0808C130:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0808C13A
	adds r2, #0xFF
_0808C13A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0808C144
	adds r3, #0xFF
_0808C144:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0808C15C @ =0x00000C4B
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
_0808C154:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0808C15C: .4byte 0x00000C4B
