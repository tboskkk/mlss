	.syntax unified
	.text

	thumb_func_start sub_8068A28
sub_8068A28:
	push {lr}
	adds r1, r0, #0x0
	ldr r2, [r1, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x02
	adds r0, r2, r3
	str r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08068A3E
	adds r3, #0xFF
	adds r0, r2, r3
_08068A3E:
	asrs r0, r0, #0x08
	cmp r0, #0xFF
	ble _08068A4A
	adds r0, r1, #0x0
	bl sub_807C298
_08068A4A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
