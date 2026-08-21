	.syntax unified
	.text

	thumb_func_start sub_81101BC
sub_81101BC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08110292
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x88
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	movs r3, #0x80
	lsls r3, r3, #0x07
	str r3, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, [r4, #0x38]
	subs r7, r1, r0
	ldr r1, [r2, #0x00]
	ldr r0, [r4, #0x3C]
	subs r1, r1, r0
	mov r8, r1
	ldr r0, [r4, #0x40]
	subs r5, r3, r0
	ldr r2, _0811024C @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r3, r1, #0x0
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _0811022E
	ldr r1, _08110250 @ =0x000001FF
	adds r0, r0, r1
_0811022E:
	asrs r6, r0, #0x09
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r5, #0x0
	bl __divsi3
	adds r1, r4, #0x0
	adds r1, #0xA8
	cmp r0, #0x01
	bgt _08110256
	cmp r0, #0x00
	bge _08110254
	negs r0, r0
	b _08110256
	.byte 0x00, 0x00
_0811024C: .4byte 0x03001038
_08110250: .4byte 0x000001FF
_08110254:
	movs r0, #0x02
_08110256:
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08110260
	adds r0, #0xFF
_08110260:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	mov r1, r8
	cmp r1, #0x00
	bge _08110270
	adds r1, #0xFF
_08110270:
	asrs r1, r1, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r6, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8A
	bl play_sfx_80195B4
	ldr r0, _0811029C @ =0x081102A1
	str r0, [r4, #0x4C]
_08110292:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0811029C: .4byte sub_81102A0
