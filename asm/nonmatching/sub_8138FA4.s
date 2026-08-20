	.syntax unified
	.text

	thumb_func_start sub_8138FA4
sub_8138FA4:
	push {r4, lr}
	adds r3, r0, #0x0
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r0, r3, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	movs r4, #0xBD
	lsls r4, r4, #0x02
	adds r2, r3, r4
	movs r4, #0x00
	ldsh r1, [r0, r4]
	str r1, [r2, #0x00]
	ldrh r1, [r0, #0x02]
	movs r2, #0xBE
	lsls r2, r2, #0x02
	adds r0, r3, r2
	strh r1, [r0, #0x00]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
