	.syntax unified
	.text

	thumb_func_start sub_8087360
sub_8087360:
	push {lr}
	ldr r0, _0808737C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08087380
	ldr r0, [r2, #0x7C]
	adds r0, #0x08
	bl sub_8097F30
	b _08087388
	.byte 0x00, 0x00
_0808737C: .4byte 0x03000FD8
_08087380:
	ldr r0, [r2, #0x7C]
	adds r0, #0x08
	bl sub_80970B8
_08087388:
	pop {r0}
	bx r0
