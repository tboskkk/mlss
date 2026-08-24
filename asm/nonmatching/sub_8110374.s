	.syntax unified
	.text

	thumb_func_start sub_8110374
sub_8110374:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r0, _08110418 @ =0x08198504
	adds r3, r5, #0x0
	adds r3, #0xAC
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x02
	movs r2, #0xFF
	ands r1, r2
	lsls r1, r1, #0x01
	adds r1, r1, r0
	movs r0, #0x00
	ldsh r1, [r1, r0]
	cmp r1, #0x00
	bge _08110396
	adds r1, #0xFF
_08110396:
	asrs r1, r1, #0x08
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	str r0, [r5, #0x18]
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _08110494
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r4, r5, #0x0
	adds r4, #0x84
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r1, [r5, #0x38]
	strh r1, [r5, #0x1C]
	ldr r2, [r5, #0x3C]
	strh r2, [r5, #0x1E]
	ldr r0, [r4, #0x00]
	subs r4, r0, r1
	ldr r0, [r3, #0x00]
	subs r7, r0, r2
	ldr r2, _0811041C @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _081103FC
	adds r0, #0xFF
_081103FC:
	asrs r6, r0, #0x08
	adds r1, r6, #0x0
	muls r1, r6
	ldr r0, [r5, #0x40]
	bl __divsi3
	adds r1, r5, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _08110422
	cmp r0, #0x00
	bge _08110420
	negs r0, r0
	b _08110422
_08110418: .4byte word_8198504 @ =0x08198504
_0811041C: .4byte 0x03001038
_08110420:
	movs r0, #0x02
_08110422:
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _0811042C
	adds r0, #0xFF
_0811042C:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _0811043C
	adds r0, #0xFF
_0811043C:
	asrs r1, r0, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x94
	movs r0, #0x00
	str r0, [r1, #0x00]
	adds r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0811049C @ =0x08110875
	str r0, [r5, #0x58]
	ldr r0, _081104A0 @ =0x0811090D
	str r0, [r5, #0x5C]
	adds r1, r5, #0x0
	adds r1, #0x92
	movs r0, #0x03
	strh r0, [r1, #0x00]
	adds r1, #0x06
	movs r0, #0x04
	str r0, [r1, #0x00]
	ldr r0, _081104A4 @ =0x081104AD
	str r0, [r5, #0x4C]
	movs r0, #0x88
	bl stop_sfx_80195A8
	ldr r0, _081104A8 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08110494:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0811049C: .4byte sub_8110874
_081104A0: .4byte sub_811090C
_081104A4: .4byte sub_81104AC
_081104A8: .4byte 0x0000010F
