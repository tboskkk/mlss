	.syntax unified
	.text

	thumb_func_start sub_8101520
sub_8101520:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	ldr r3, _081015C0 @ =0x03000FD8
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r4, r0
	ldr r6, _081015C4 @ =0x03000FF4
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	ldr r1, [r6, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	lsls r0, r0, #0x02
	adds r2, #0x58
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, #0xF6
	ldrh r1, [r0, #0x00]
	strh r1, [r5, #0x0E]
	ldr r0, [r2, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x14]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bne _08101564
	movs r0, #0x01
	strh r0, [r5, #0x0E]
_08101564:
	ldr r2, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _081015A6
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	mvns r4, r0
	lsls r0, r4, #0x04
	subs r0, r0, r4
	lsls r0, r0, #0x02
	ldr r1, [r6, #0x00]
	adds r5, r1, r0
	adds r0, r4, #0x6
	lsls r0, r0, #0x02
	adds r1, r2, #0x0
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0xF6
	ldrh r2, [r0, #0x00]
	strh r2, [r5, #0x0E]
	ldr r0, [r1, #0x00]
	adds r0, #0xFC
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x14]
	lsls r2, r2, #0x10
	cmp r2, #0x00
	bne _081015A6
	movs r0, #0x01
	strh r0, [r5, #0x0E]
_081015A6:
	ldr r3, [r3, #0x00]
	ldrb r2, [r3, #0x04]
	cmp r2, #0x00
	beq _081015B4
	ldrb r0, [r3, #0x05]
	cmp r0, #0x00
	bne _081015D0
_081015B4:
	ldr r1, _081015C8 @ =0x08106D21
	cmp r2, #0x00
	beq _081015D2
	ldr r1, _081015CC @ =0x08106D55
	b _081015D2
	.byte 0x00, 0x00
_081015C0: .4byte 0x03000FD8
_081015C4: .4byte 0x03000FF4
_081015C8: .4byte sub_8106D20
_081015CC: .4byte sub_8106D54
_081015D0:
	ldr r1, _081015E0 @ =0x08106C65
_081015D2:
	adds r0, r7, #0x0
	bl _call_via_r1
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081015E0: .4byte sub_8106C64
