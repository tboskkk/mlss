	.syntax unified
	.text

	thumb_func_start sub_809F068
sub_809F068:
	push {lr}
	adds r1, r0, #0x0
	ldr r0, [r1, #0x28]
	ldr r0, [r0, #0x10]
	adds r0, #0x21
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0809F07E
	adds r0, r1, #0x0
	bl sub_807C298
_0809F07E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
