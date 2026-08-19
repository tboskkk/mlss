	.syntax unified
	.text

	thumb_func_start sub_8087524
sub_8087524:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x08]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08087536
	ldr r0, _0808753C @ =0x080874B5
	str r0, [r1, #0x4C]
_08087536:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0808753C: .4byte sub_80874B4
