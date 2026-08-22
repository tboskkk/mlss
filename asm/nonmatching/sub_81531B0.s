	.syntax unified
	.text

	thumb_func_start sub_81531B0
sub_81531B0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r3, r1, #0x0
	ldr r0, [sp, #0x010]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0x0
	cmp r0, #0x03
	beq _081531D6
	cmp r0, #0x03
	bgt _081531D0
	cmp r0, #0x01
	blt _08153210
	b _081532FC
_081531D0:
	cmp r1, #0x04
	beq _081531EE
	b _08153210
_081531D6:
	ldr r1, [r4, #0x30]
	movs r2, #0x30
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x34]
	bl _call_via_r1
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x01
	strb r0, [r1, #0x00]
	b _081532FC
_081531EE:
	ldr r1, [r4, #0x30]
	movs r2, #0x38
	ldsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0x3C]
	bl _call_via_r1
	ldr r2, [r4, #0x40]
	ldrb r0, [r2, #0x12]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0x24
	movs r0, #0x00
	strb r0, [r1, #0x00]
	b _081532FC
_08153210:
	ldr r1, [r4, #0x04]
	adds r0, r3, #0x0
	bl get_surface_height_at_x
	lsls r0, r0, #0x10
	asrs r0, r0, #0x08
	str r0, [r4, #0x38]
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	adds r5, r0, #0x0
	cmp r1, #0x04
	bhi _081532FC
	lsls r0, r1, #0x02
	ldr r1, _08153234 @ =lbl_08153238
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_08153234: .4byte lbl_08153238
lbl_08153238:
	.4byte _081532FC
	.4byte _0815324C
	.4byte _08153280
	.4byte _081532E2
	.4byte _081532FC
_0815324C:
	ldr r0, [pc, #36] @ (0x8153274)
	ldr r0, [r0, #0]
	ldr r1, [pc, #36] @ (0x8153278)
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r0, [r4, #4]
	ldr r1, [r1, #4]
	subs r0, r0, r1
	ldr r1, [pc, #28] @ (0x815327c)
	cmp r0, r1
	bgt.n _081532FC
	movs r0, #15
	strh r0, [r4, #54] @ 0x36
	adds r0, r4, #0
	movs r1, #25
	bl sub_815FA70
	movs r0, #2
	b.n _081532FA
	movs r0, r0
	asrs r0, r3, #32
	lsls r0, r0, #12
	adds r4, r3, #2
	movs r0, r0
	strh r7, [r7, #14]
	movs r0, r0
_08153280:
	ldrh r0, [r4, #54] @ 0x36
	subs r0, #1
	strh r0, [r4, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _081532FC
	adds r0, r4, #0
	movs r1, #26
	bl sub_815FA70
	ldrh r0, [r4, #28]
	ldrh r2, [r4, #20]
	adds r0, r0, r2
	strh r0, [r4, #20]
	lsls r1, r6, #16
	asrs r1, r1, #16
	ldrh r0, [r4, #32]
	adds r1, r1, r0
	ldrh r0, [r4, #24]
	adds r0, r0, r1
	strh r0, [r4, #24]
	movs r2, #20
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #24
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r1, [r4, #56] @ 0x38
	cmp r0, r1
	ble.n _081532FC
	movs r1, #1
	negs r1, r1
	movs r0, #56 @ 0x38
	bl play_sfx_80195B4
	ldr r2, [r4, #64] @ 0x40
	ldrb r1, [r2, #18]
	movs r0, #33 @ 0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #18]
	movs r0, #20
	strh r0, [r4, #54] @ 0x36
	movs r0, #3
	b.n _081532FA
_081532E2:
	ldrh r0, [r4, #54] @ 0x36
	subs r0, #1
	strh r0, [r4, #54] @ 0x36
	lsls r0, r0, #16
	cmp r0, #0
	bgt.n _081532FC
	ldr r2, [r4, #64] @ 0x40
	ldrb r0, [r2, #18]
	movs r1, #32
	orrs r0, r1
	strb r0, [r2, #18]
	movs r0, #4
_081532FA:
	strb r0, [r5, #0]
_081532FC:
	movs r0, #0x00
	pop {r4, r5, r6}
	pop {r1}
	bx r1
