	.syntax unified
	.text

	thumb_func_start sub_8064C80
sub_8064C80:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x05
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08064CAA
	ldr r0, [r2, #0x28]
	adds r0, #0xB4
	movs r1, #0x01
	strh r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_807C298
_08064CAA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
