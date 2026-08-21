	.syntax unified
	.text

	thumb_func_start sub_806B528
sub_806B528:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806B53A
	adds r0, r1, #0x0
	bl sub_807C298
_0806B53A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
