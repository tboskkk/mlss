	.syntax unified
	.text

	thumb_func_start sub_8142E28
sub_8142E28:
	push {r4, lr}
	adds r3, r1, #0x0
	adds r4, r2, #0x0
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08142E60
	movs r0, #0x9D
	lsls r0, r0, #0x02
	adds r1, r3, r0
	movs r0, #0xC0
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08142E68 @ =0x0813E2A5
	str r0, [r4, #0x00]
_08142E60:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142E68: .4byte sub_813E2A4
