	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	bl sub_80871A8
	adds r7, r0, #0x0
	cmp r7, #0x00
	beq _08113152
	b _08113298
_08113152:
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	adds r0, #0x92
	strh r7, [r0, #0x00]
	adds r0, #0x0A
	ldr r5, [r0, #0x00]
	cmp r5, #0x02
	bgt _08113168
	b _08113296
_08113168:
	ldr r0, _08113248 @ =0x03000FD8
	mov r8, r0
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x1C]
	ldrb r0, [r1, #0x01]
	lsls r4, r0, #0x01
	adds r4, r4, r0
	lsls r4, r4, #0x03
	lsls r2, r5, #0x02
	ldr r0, _0811324C @ =0x08502B14
	adds r0, r2, r0
	adds r4, r4, r0
	adds r1, r1, r2
	ldrh r1, [r1, #0x08]
	ldrh r2, [r4, #0x00]
	lsls r2, r2, #0x16
	asrs r2, r2, #0x16
	ldr r3, [r4, #0x00]
	lsls r3, r3, #0x0C
	asrs r3, r3, #0x16
	ldrh r0, [r4, #0x02]
	lsls r0, r0, #0x12
	asrs r0, r0, #0x16
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x00]
	lsls r0, r0, #0x01
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r7, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_807AFD4
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x7E
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r2, r8
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x05]
	subs r0, #0x01
	strb r0, [r1, #0x05]
	adds r4, r6, #0x0
	adds r4, #0x84
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x88
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x8C
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r2, [r6, #0x38]
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _081131EE
	adds r0, #0xFF
_081131EE:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x1C]
	ldr r1, [r6, #0x3C]
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _081131FC
	adds r0, #0xFF
_081131FC:
	asrs r0, r0, #0x08
	strh r0, [r6, #0x1E]
	ldr r0, [r4, #0x00]
	subs r4, r0, r2
	ldr r0, [r5, #0x00]
	subs r7, r0, r1
	ldr r2, _08113250 @ =0x03001038
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xA0
	lsls r1, r1, #0x02
	bl __divsi3
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	muls r1, r5
	ldr r0, [r6, #0x40]
	bl __divsi3
	adds r1, r0, #0x0
	adds r2, r6, #0x0
	adds r2, #0xA8
	cmp r1, #0x01
	bgt _0811325A
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bge _08113254
	negs r0, r1
	str r0, [r2, #0x00]
	b _0811325C
	.byte 0x00, 0x00
_08113248: .4byte 0x03000FD8
_0811324C: .4byte dword_8502B14 @ =0x08502B14
_08113250: .4byte 0x03001038
_08113254:
	movs r0, #0x02
	str r0, [r2, #0x00]
	b _0811325C
_0811325A:
	str r1, [r2, #0x00]
_0811325C:
	adds r0, r4, #0x0
	cmp r0, #0x00
	bge _08113264
	adds r0, #0xFF
_08113264:
	asrs r0, r0, #0x08
	adds r1, r6, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08113274
	adds r0, #0xFF
_08113274:
	asrs r1, r0, #0x08
	adds r0, r6, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x28]
	ldr r2, _081132A4 @ =0x00000113
	adds r1, r0, r2
	movs r0, #0x01
	strb r0, [r1, #0x00]
	ldr r0, _081132A8 @ =0x08112FFD
	str r0, [r6, #0x4C]
_08113296:
	movs r0, #0x00
_08113298:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_081132A4: .4byte 0x00000113
_081132A8: .4byte sub_8112FFC
