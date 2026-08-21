	.syntax unified
	.text

	thumb_func_start sub_8088CC8
sub_8088CC8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08088D44
	ldr r0, [r4, #0x2C]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0xC0
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7C
	strh r3, [r0, #0x00]
	adds r0, #0x28
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r1, r4, #0x0
	adds r1, #0xB2
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x81
	bl stop_sfx_80195A8
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x84
	bl play_sfx_80195B4
	ldr r0, _08088D4C @ =0x08088D51
	str r0, [r4, #0x4C]
_08088D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08088D4C: .4byte sub_8088D50
