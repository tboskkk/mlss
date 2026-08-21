	.syntax unified
	.text

	thumb_func_start sub_809C570
sub_809C570:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8088020
	ldr r0, [r4, #0x08]
	movs r1, #0x00
	ldsh r0, [r0, r1]
	adds r1, r4, #0x0
	adds r1, #0x45
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	cmp r0, #0x00
	bgt _0809C594
	adds r0, r4, #0x0
	bl sub_807C298
_0809C594:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
