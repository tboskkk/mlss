	.syntax unified
	.text

	thumb_func_start sub_8047D44
sub_8047D44:
	push {lr}
	movs r2, #0xCD
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldr r2, [r1, #0x00]
	ldr r1, _08047D60 @ =0x0000026E
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8116654
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08047D60: .4byte 0x0000026E
