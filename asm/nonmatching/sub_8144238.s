	.syntax unified
	.text

	thumb_func_start sub_8144238
sub_8144238:
	push {lr}
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x23
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08144262
	adds r0, r1, #0x0
	adds r0, #0x20
	movs r3, #0x2A
	ldsh r1, [r1, r3]
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _08144262
	ldr r0, _08144268 @ =0x08143E91
	str r0, [r2, #0x00]
_08144262:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08144268: .4byte sub_8143E90
