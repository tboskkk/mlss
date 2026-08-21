	.syntax unified
	.text

	thumb_func_start sub_8111214
sub_8111214:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0811122E
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0811122E:
	pop {r4}
	pop {r0}
	bx r0
