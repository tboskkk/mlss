	.syntax unified
	.text

	thumb_func_start sub_8090F14
sub_8090F14:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08090F78 @ =0x084FE9A4
	str r0, [r4, #0x6C]
	ldr r0, _08090F7C @ =0x03000FF4
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
	movs r0, #0x16
	bl sub_81DD77C
	adds r5, r0, #0x0
	adds r5, #0x0A
	cmp r5, #0x00
	beq _08090F88
	ldr r2, _08090F80 @ =0x0000204D
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
	ldr r0, _08090F84 @ =0x08091D11
	b _08090F8A
_08090F78: .4byte 0x084FE9A4
_08090F7C: .4byte 0x03000FF4
_08090F80: .4byte 0x0000204D
_08090F84: .4byte sub_8091D10
_08090F88:
	ldr r0, _08090FAC @ =0x08091CC9
_08090F8A:
	str r0, [r4, #0x4C]
	ldr r0, _08090FB0 @ =0x03001038
	ldr r1, [r0, #0x00]
	ldr r0, _08090FB4 @ =0x00559440
	bl _call_via_r1
	subs r0, #0x48
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
_08090FAC: .4byte sub_8091CC8
_08090FB0: .4byte 0x03001038
_08090FB4: .4byte 0x00559440
