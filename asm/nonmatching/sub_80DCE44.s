	.syntax unified
	.text

	thumb_func_start sub_80DCE44
sub_80DCE44:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r3, r6, #0x0
	adds r3, #0xAE
	movs r7, #0x00
	adds r2, r6, #0x0
	adds r2, #0xB0
	adds r4, r6, #0x0
	adds r4, #0xB2
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldrh r0, [r4, #0x00]
	adds r0, r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r3, r0]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r6, #0x3C]
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _080DCE94
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _080DCF42
_080DCE94:
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r1, _080DCF70 @ =0x0000417E
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	adds r5, r0, #0x0
	str r7, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	adds r0, r5, #0x0
	bl sprite_show_8020CBC
	ldr r0, [r6, #0x08]
	adds r0, #0x23
	ldrb r2, [r0, #0x00]
	str r7, [sp, #0x000]
	adds r0, r5, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x00]
	strh r0, [r5, #0x00]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x02]
	strh r0, [r5, #0x02]
	ldr r0, [r6, #0x08]
	ldrh r0, [r0, #0x0E]
	strh r0, [r5, #0x0E]
	ldrb r0, [r5, #0x12]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #0x12]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x1F]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1E
	ldrb r2, [r5, #0x1F]
	movs r1, #0x04
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1F]
	ldr r0, [r6, #0x08]
	ldrb r2, [r0, #0x1F]
	movs r0, #0x0C
	ands r0, r2
	movs r2, #0x0D
	negs r2, r2
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x1F]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x1F]
	movs r1, #0x30
	ands r1, r0
	movs r0, #0x31
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1F]
	ldr r1, [r6, #0x08]
	ldrb r1, [r1, #0x1F]
	lsrs r1, r1, #0x06
	lsls r1, r1, #0x06
	movs r2, #0x3F
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #0x1F]
	ldr r0, _080DCF74 @ =0x080DD40D
	adds r1, r5, #0x0
	bl sub_807FF48
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x18]
_080DCF42:
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bgt _080DCF68
	adds r0, r6, #0x0
	adds r0, #0x98
	ldr r1, [r6, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _080DCF68
	str r0, [r6, #0x18]
	ldr r0, _080DCF78 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r6, #0x0
	bl sub_807C298
_080DCF68:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080DCF70: .4byte 0x0000417E
_080DCF74: .4byte sub_80DD40C
_080DCF78: .4byte 0x00000117
