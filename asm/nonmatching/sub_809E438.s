	.syntax unified
	.text

	thumb_func_start sub_809E438
sub_809E438:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0809E44C
	adds r0, r4, #0x0
	bl sub_807C298
_0809E44C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
