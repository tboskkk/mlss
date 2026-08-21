	.syntax unified
	.text

	thumb_func_start sub_8075B54
sub_8075B54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08075B6E
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08075B6E:
	pop {r4, r5}
	pop {r0}
	bx r0
