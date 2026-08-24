	.syntax unified
	.text

	thumb_func_start sub_8111848
sub_8111848:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	cmp r2, #0x00
	bne _0811185C
	ldr r0, _08111858 @ =0x081121E9
	b _081118E2
	.byte 0x00, 0x00
_08111858: .4byte sub_81121E8
_0811185C:
	ldr r1, [r2, #0x38]
	ldr r0, [r2, #0x10]
	cmp r1, r0
	bgt _081118E4
	adds r0, r2, #0x0
	adds r0, #0x7E
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x80
	lsls r0, r0, #0x07
	subs r3, r0, r1
	adds r0, r2, #0x0
	adds r0, #0x7A
	movs r5, #0x00
	ldsh r1, [r0, r5]
	adds r0, #0x02
	movs r2, #0x00
	ldsh r0, [r0, r2]
	muls r0, r1
	cmp r0, #0x00
	bge _08111888
	adds r0, #0xFF
_08111888:
	asrs r0, r0, #0x08
	lsls r0, r0, #0x02
	cmp r3, r0
	bgt _081118E4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	ldr r2, _081118D8 @ =0x083BA99C
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bcs _081118E0
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _081118DC @ =0x081118F1
	str r0, [r4, #0x4C]
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	b _081118E4
	.byte 0x00, 0x00
_081118D8: .4byte 0x083BA99C
_081118DC: .4byte sub_81118F0
_081118E0:
	ldr r0, _081118EC @ =0x08112269
_081118E2:
	str r0, [r4, #0x4C]
_081118E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081118EC: .4byte sub_8112268
