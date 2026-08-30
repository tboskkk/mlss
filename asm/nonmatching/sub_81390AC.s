	.syntax unified
	.text

	thumb_func_start sub_81390AC
sub_81390AC:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r5, r4, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r2, [r1, #0x00]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x0F
	movs r3, #0x84
	lsls r3, r3, #0x01
	adds r1, r4, r3
	adds r1, r1, r0
	ldrh r3, [r1, #0x00]
	ldr r6, _081390F4 @ =0x00000239
	adds r1, r4, r6
	strb r3, [r1, #0x00]
	adds r2, #0x20
	strb r3, [r2, #0x00]
	adds r5, r5, r0
	ldrh r0, [r5, #0x00]
	ldr r1, _081390F8 @ =0x0000023E
	adds r4, r4, r1
	strh r0, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081390F4: .4byte 0x00000239
_081390F8: .4byte 0x0000023E
