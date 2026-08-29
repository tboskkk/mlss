	.syntax unified
	.text

	thumb_func_start sub_8047E50
sub_8047E50:
	push {lr}
	movs r3, #0x9B
	lsls r3, r3, #0x02
	adds r2, r0, r3
	strh r1, [r2, #0x00]
	ldr r1, _08047E74 @ =0x0000020E
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r2, _08047E78 @ =0x0000026E
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	bl sub_8047DC8
	pop {r0}
	bx r0
_08047E74: .4byte 0x0000020E
_08047E78: .4byte 0x0000026E
