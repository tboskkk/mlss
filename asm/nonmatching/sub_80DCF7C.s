	.syntax unified
	.text

	thumb_func_start sub_80DCF7C
sub_80DCF7C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x018
	adds r6, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r2, r6, #0x0
	adds r2, #0xB2
	movs r3, #0x00
	ldsh r1, [r2, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r6, #0x18]
	ldrh r0, [r2, #0x00]
	subs r0, #0x5E
	movs r7, #0x00
	strh r0, [r2, #0x00]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _080DCFAC
	adds r0, #0xFF
_080DCFAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, [r6, #0x14]
	cmp r0, #0x00
	bge _080DCFB8
	adds r0, #0xFF
_080DCFB8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _080DCFC4
	adds r0, #0xFF
_080DCFC4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x010
	add r2, sp, #0x014
	add r0, sp, #0x00C
	movs r3, #0x00
	bl sub_807FC08
	adds r1, r6, #0x0
	adds r1, #0xAC
	ldrh r2, [r1, #0x00]
	movs r3, #0x00
	ldsh r0, [r1, r3]
	cmp r0, #0x00
	ble _080DCFE8
	subs r0, r2, #0x1
	strh r0, [r1, #0x00]
	b _080DD096
_080DCFE8:
	movs r0, #0x02
	strh r0, [r1, #0x00]
	ldr r1, _080DD0C0 @ =0x0000417E
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
	ldr r0, _080DD0C4 @ =0x080DD40D
	adds r1, r5, #0x0
	bl sub_807FF48
	strh r7, [r0, #0x10]
	strh r7, [r0, #0x18]
_080DD096:
	ldr r1, [sp, #0x00C]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	blt _080DD0AA
	ldr r1, [sp, #0x010]
	movs r0, #0x88
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _080DD0B6
_080DD0AA:
	ldr r0, _080DD0C8 @ =0x00000117
	bl stop_sfx_80195A8
	adds r0, r6, #0x0
	bl sub_807C298
_080DD0B6:
	add sp, #0x018
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080DD0C0: .4byte 0x0000417E
_080DD0C4: .4byte sub_80DD40C
_080DD0C8: .4byte 0x00000117
