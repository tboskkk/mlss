	.syntax unified
	.text

	thumb_func_start sub_81410D0
sub_81410D0:
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0x0
	movs r2, #0xD8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r7, [r1, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x01
	adds r4, r5, r3
	ldr r3, [r4, #0x00]
	adds r1, r5, #0x0
	adds r2, r4, #0x0
	bl _call_via_r3
	ldr r4, [r4, #0x00]
	ldr r0, _0814118C @ =0x08141251
	cmp r4, r0
	beq _081411B4
	ldr r0, _08141190 @ =0x08141371
	cmp r4, r0
	beq _081411B4
	ldr r0, _08141194 @ =0x08142881
	cmp r4, r0
	beq _081411B4
	ldr r0, _08141198 @ =0x0814281D
	cmp r4, r0
	beq _081411B4
	adds r0, r7, #0x0
	adds r0, #0x22
	ldrb r4, [r0, #0x00]
	movs r0, #0xBB
	lsls r0, r0, #0x02
	adds r6, r5, r0
	ldr r1, [r6, #0x00]
	ldr r0, [r5, #0x14]
	subs r3, r1, r0
	ldr r1, _0814119C @ =0x08198504
	movs r0, #0xBD
	lsls r0, r0, #0x02
	adds r2, r5, r0
	movs r0, #0xFF
	mov r12, r0
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08141134
	adds r0, #0x3F
_08141134:
	asrs r0, r0, #0x06
	muls r0, r4
	adds r0, r3, r0
	str r0, [r5, #0x18]
	movs r3, #0xBE
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0xA5
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r0, [r0, #0x00]
	adds r0, #0x20
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r1, r0
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r0, #0x00
	bge _08141162
	adds r0, #0x0F
_08141162:
	asrs r0, r0, #0x04
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	mov r1, r12
	ands r0, r1
	str r0, [r2, #0x00]
	ldrh r0, [r7, #0x24]
	ldrh r3, [r7, #0x26]
	lsls r1, r0, #0x0C
	ldr r2, [r6, #0x00]
	ldr r0, [r5, #0x14]
	subs r0, r2, r0
	cmp r0, r1
	ble _081411A0
	subs r0, r2, r3
	str r0, [r6, #0x00]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	cmp r0, r1
	bgt _081411B4
	b _081411B0
_0814118C: .4byte sub_8141250
_08141190: .4byte sub_8141370
_08141194: .4byte sub_8142880
_08141198: .4byte sub_814281C
_0814119C: .4byte 0x08198504
_081411A0:
	cmp r0, r1
	bge _081411B4
	adds r0, r2, r3
	str r0, [r6, #0x00]
	ldr r4, [r5, #0x14]
	subs r0, r0, r4
	cmp r0, r1
	blt _081411B4
_081411B0:
	adds r0, r4, r1
	str r0, [r6, #0x00]
_081411B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
