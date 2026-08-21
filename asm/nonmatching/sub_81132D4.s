	.syntax unified
	.text

	thumb_func_start sub_81132D4
sub_81132D4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08113308
	ldr r2, [r5, #0x28]
	adds r3, r2, #0x0
	adds r3, #0x7E
	ldrb r0, [r3, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r2, #0x7F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08113310 @ =0x08112CE5
	str r0, [r4, #0x4C]
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	movs r0, #0x00
_08113308:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08113310: .4byte sub_8112CE4
