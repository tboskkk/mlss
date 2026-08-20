	.syntax unified
	.text

	thumb_func_start sub_80EAE9C
sub_80EAE9C:
	push {lr}
	adds r3, r1, #0x0
	ldr r0, _080EAEB8 @ =0x03000FB8
	ldr r0, [r0, #0x00]
	adds r0, #0x30
	ldrb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	cmp r1, r0
	bne _080EAEB2
	ldr r0, [r2, #0x04]
	str r0, [r3, #0x00]
_080EAEB2:
	movs r0, #0x01
	pop {r1}
	bx r1
_080EAEB8: .4byte 0x03000FB8
