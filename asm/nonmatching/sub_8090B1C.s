	.syntax unified
	.text

	thumb_func_start sub_8090B1C
sub_8090B1C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _08090B74 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08090B78 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x77
	ldrb r1, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r4, #0x28]
	movs r1, #0x8A
	lsls r1, r1, #0x01
	adds r0, r0, r1
	ldrh r1, [r2, #0x2A]
	str r1, [r0, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x08]
	adds r0, #0x20
	movs r1, #0x60
	strb r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	ldr r0, _08090B7C @ =0x08090BA5
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08090B74: .4byte dword_84FE8A8 @ =0x084FE8A8
_08090B78: .4byte 0x03000FF4
_08090B7C: .4byte sub_8090BA4
