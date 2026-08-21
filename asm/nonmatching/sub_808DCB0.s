	.syntax unified
	.text

	thumb_func_start sub_808DCB0
sub_808DCB0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808DCD0
	ldr r2, _0808DCD8 @ =0x0000204D
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_0808DCD0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808DCD8: .4byte 0x0000204D
