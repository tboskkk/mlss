	.syntax unified
	.text

	thumb_func_start sub_8081C54
sub_8081C54:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x08]
	ldr r0, [r0, #0x28]
	ldr r1, _08081C74 @ =0x00000111
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08081C6E
	ldr r0, _08081C78 @ =0x08081F85
	str r0, [r2, #0x04]
_08081C6E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08081C74: .4byte 0x00000111
_08081C78: .4byte sub_8081F84
