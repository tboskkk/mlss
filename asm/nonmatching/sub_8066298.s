	.syntax unified
	.text

	thumb_func_start sub_8066298
sub_8066298:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080662A4
	adds r0, #0xFF
_080662A4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x3C]
	cmp r1, #0x00
	bge _080662B4
	adds r1, #0xFF
_080662B4:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080662C4
	adds r0, #0xFF
_080662C4:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	subs r1, #0x2E
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_8066540
	ldr r0, _08066330 @ =0x0806657D
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066330: .4byte sub_806657C
