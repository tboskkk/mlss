	.syntax unified
	.text

	thumb_func_start sub_8094320
sub_8094320:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08094384 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _08094388 @ =0x03000FF4
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
	adds r5, r0, #0x4
	cmp r5, #0x00
	beq _08094390
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
	ldr r0, _0809438C @ =0x08094515
	b _08094392
	.byte 0x00, 0x00
_08094384: .4byte dword_84FE8A8 @ =0x084FE8A8
_08094388: .4byte 0x03000FF4
_0809438C: .4byte sub_8094514
_08094390:
	ldr r0, _080943B4 @ =0x080944D1
_08094392:
	str r0, [r4, #0x4C]
	ldr r0, _080943B8 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080943BC @ =0x006E1E40
	bl _call_via_r1
	subs r0, #0x58
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r0, #0x01
	pop {r4, r5}
	pop {r1}
	bx r1
_080943B4: .4byte sub_80944D0
_080943B8: .4byte 0x03001038
_080943BC: .4byte 0x006E1E40
