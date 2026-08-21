	.syntax unified
	.text

	thumb_func_start sub_805FD40
sub_805FD40:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x28]
	adds r0, #0xBA
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0805FD56
	adds r0, r1, #0x0
	bl sub_807C298
_0805FD56:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
