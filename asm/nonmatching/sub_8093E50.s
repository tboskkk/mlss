	.syntax unified
	.text

	thumb_func_start sub_8093E50
sub_8093E50:
	push {r4, r5, lr}
	adds r3, r0, #0x0
	adds r3, #0x77
	ldrb r2, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r1, r2
	strb r1, [r3, #0x00]
	ldr r1, [r0, #0x28]
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r4, r1, r2
	ldr r2, _08093E98 @ =0x03000FF4
	ldr r3, [r2, #0x00]
	adds r1, #0xEC
	movs r5, #0x00
	ldsh r2, [r1, r5]
	mvns r2, r2
	lsls r1, r2, #0x04
	subs r1, r1, r2
	lsls r1, r1, #0x02
	adds r3, r3, r1
	ldrh r1, [r3, #0x2C]
	str r1, [r4, #0x00]
	ldr r1, _08093E9C @ =0x08093EE1
	str r1, [r0, #0x4C]
	ldr r1, _08093EA0 @ =0x0808DD2D
	str r1, [r0, #0x68]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08093E98: .4byte 0x03000FF4
_08093E9C: .4byte sub_8093EE0
_08093EA0: .4byte sub_808DD2C
