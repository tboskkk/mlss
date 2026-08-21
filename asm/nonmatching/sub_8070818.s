	.syntax unified
	.text

	thumb_func_start sub_8070818
sub_8070818:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08070884
	adds r0, r5, #0x0
	bl sub_807F47C
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08070832
	adds r0, #0xFF
_08070832:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08070842
	adds r0, #0xFF
_08070842:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xB0
	strh r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0xA4
	ldr r2, [r5, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	movs r6, #0x00
	ldsh r1, [r1, r6]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r3, #0x04
	adds r2, #0xDC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	lsls r1, r1, #0x08
	ldr r0, [r2, #0x00]
	subs r0, r0, r1
	str r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r0, _0807088C @ =0x0806F705
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08070884:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807088C: .4byte sub_806F704
