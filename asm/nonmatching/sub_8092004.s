	.syntax unified
	.text

	thumb_func_start sub_8092004
sub_8092004:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08092068 @ =0x084FE8A8
	str r0, [r4, #0x6C]
	ldr r0, _0809206C @ =0x03000FF4
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
	movs r0, #0x08
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x08
	cmp r5, #0x00
	beq _08092074
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
	ldr r0, _08092070 @ =0x08092F09
	b _08092076
_08092068: .4byte dword_84FE8A8 @ =0x084FE8A8
_0809206C: .4byte 0x03000FF4
_08092070: .4byte sub_8092F08
_08092074:
	ldr r0, _08092098 @ =0x08092EC5
_08092076:
	str r0, [r4, #0x4C]
	ldr r0, _0809209C @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _080920A0 @ =0x006E1E40
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
_08092098: .4byte sub_8092EC4
_0809209C: .4byte 0x03001038
_080920A0: .4byte 0x006E1E40
