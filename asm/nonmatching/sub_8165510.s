	.syntax unified
	.text

	thumb_func_start sub_8165510
sub_8165510:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x56
	adds r1, r4, #0x0
	adds r1, #0x58
	ldrh r0, [r5, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	bne _08165536
	adds r0, r4, #0x0
	adds r0, #0x52
	adds r1, r4, #0x0
	adds r1, #0x54
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	cmp r0, r1
	beq _08165570
_08165536:
	ldrh r3, [r5, #0x00]
	cmp r3, #0x03
	bgt _08165570
	cmp r3, #0x00
	blt _08165570
	ldr r0, [r4, #0x10]
	ldr r2, _08165584 @ =0x0821421F
	adds r1, r4, #0x0
	adds r1, #0x52
	ldrh r1, [r1, #0x00]
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	ldr r2, _08165588 @ =0x08214227
	adds r2, r3, r2
	ldrb r2, [r2, #0x00]
	adds r1, r1, r2
	movs r2, #0x00
	str r2, [sp, #0x000]
	movs r3, #0x00
	bl sub_801E150
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08165570
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x12]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0, #0x12]
_08165570:
	ldr r1, [r4, #0x20]
	ldr r0, _0816558C @ =0x000087FF
	cmp r1, r0
	bgt _08165590
	ldr r0, [r4, #0x10]
	ldrb r1, [r0, #0x1F]
	movs r2, #0x03
	orrs r1, r2
	strb r1, [r0, #0x1F]
	b _081655A0
_08165584: .4byte dword_821421F @ =0x0821421F
_08165588: .4byte dword_8214227 @ =0x08214227
_0816558C: .4byte 0x000087FF
_08165590:
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x1F]
_081655A0:
	adds r0, r4, #0x0
	bl sub_8161D20
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
