	.syntax unified
	.text

	thumb_func_start sub_80FC128
sub_80FC128:
	push {r4, lr}
	adds r0, r1, #0x0
	adds r0, #0x0C
	ldr r1, [r1, #0x00]
	movs r3, #0x08
	ldsh r2, [r0, r3]
	movs r4, #0x0A
	ldsh r3, [r0, r4]
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
