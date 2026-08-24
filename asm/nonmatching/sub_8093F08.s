	.syntax unified
	.text

	thumb_func_start sub_8093F08
sub_8093F08:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08093F6C @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08093F70 @ =0x03000FF4
	ldr r2, [r0, #0x00]
	adds r2, #0x3C
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
	movs r0, #0x05
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x0A
	cmp r5, #0x00
	beq _08093F7C
	ldr r2, _08093F74 @ =0x0000204D
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
	ldr r0, _08093F78 @ =0x08094071
	b _08093F7E
_08093F6C: .4byte dword_84FE9A4 @ =0x084FE9A4
_08093F70: .4byte 0x03000FF4
_08093F74: .4byte 0x0000204D
_08093F78: .4byte sub_8094070
_08093F7C:
	ldr r0, _08093F88 @ =0x0809400D
_08093F7E:
	str r0, [r4, #0x4C]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_08093F88: .4byte sub_809400C
