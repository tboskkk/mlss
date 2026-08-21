	.syntax unified
	.text

	thumb_func_start sub_8093F8C
sub_8093F8C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093FF0 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08093FF4 @ =0x03000FF4
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
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x06
	bl sub_81DD77C
	adds r5, r0, #0x2
	cmp r5, #0x00
	beq _08093FFC
	movs r2, #0x80
	lsls r2, r2, #0x06
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r5, [r0, #0x00]
	ldr r0, _08093FF8 @ =0x080940F9
	b _08093FFE
	.byte 0x00, 0x00
_08093FF0: .4byte 0x084FE8A8
_08093FF4: .4byte 0x03000FF4
_08093FF8: .4byte sub_80940F8
_08093FFC:
	ldr r0, _08094008 @ =0x08094095
_08093FFE:
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08094008: .4byte sub_8094094
