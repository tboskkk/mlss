	.syntax unified
	.text

	thumb_func_start sub_8071620
sub_8071620:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08071654 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x58]
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080716B6
	cmp r0, #0x01
	bne _08071660
	ldr r2, _08071658 @ =0x000040B4
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807165C @ =0x08072429
	b _080716B4
	.byte 0x00, 0x00
_08071654: .4byte 0x03000FD8
_08071658: .4byte 0x000040B4
_0807165C: .4byte sub_8072428
_08071660:
	ldr r2, _080716BC @ =0x000040B3
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	bl sub_807C298
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080716C0 @ =0x0808750D
_080716B4:
	str r0, [r4, #0x4C]
_080716B6:
	pop {r4}
	pop {r0}
	bx r0
_080716BC: .4byte 0x000040B3
_080716C0: .4byte sub_808750C
