	.syntax unified
	.text

	thumb_func_start sub_80801A0
sub_80801A0:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	bl sub_8080168
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _080801B6
	adds r0, r4, #0x0
	bl sub_807DC8C
_080801B6:
	pop {r4}
	pop {r0}
	bx r0
