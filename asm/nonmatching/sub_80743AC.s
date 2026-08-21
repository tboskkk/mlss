	.syntax unified
	.text

	thumb_func_start sub_80743AC
sub_80743AC:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080743BE
	adds r0, r1, #0x0
	bl sub_807C298
_080743BE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
