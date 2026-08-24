	.syntax unified
	.text

	thumb_func_start sub_8127EF8
sub_8127EF8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08127FA8 @ =0x08CDC3D8
	str r0, [r5, #0x18]
	adds r2, r5, #0x0
	adds r2, #0x8C
	ldr r4, _08127FAC @ =0x03000388
	str r4, [r2, #0x00]
	ldrh r1, [r4, #0x3C]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	adds r6, r5, #0x0
	adds r6, #0xA6
	movs r3, #0x00
	strh r0, [r6, #0x00]
	ldr r6, _08127FB0 @ =0x000003FF
	adds r0, r6, #0x0
	orrs r1, r0
	strh r1, [r4, #0x3C]
	ldr r0, [r2, #0x00]
	ldrb r1, [r0, #0x08]
	adds r0, r5, #0x0
	adds r0, #0xA8
	strb r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	ldrb r0, [r0, #0x09]
	adds r1, r5, #0x0
	adds r1, #0xA9
	strb r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	movs r0, #0x0A
	strb r0, [r1, #0x08]
	ldr r1, [r2, #0x00]
	movs r0, #0x08
	strb r0, [r1, #0x09]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r3, [r0, #0x00]
	adds r0, #0x50
	strh r3, [r0, #0x00]
	bl sub_8017E34
	ldr r0, _08127FB4 @ =0x0000084C
	adds r4, r4, r0
	ldrb r0, [r4, #0x00]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r6, _08127FB8 @ =0x08210F6C
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r6, #0x0
	movs r3, #0x01
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r6, #0x0
	bl process_add
	ldr r0, _08127FBC @ =0x08CDC3E8
	str r0, [r4, #0x18]
	str r4, [r5, #0x1C]
	ldr r4, _08127FC0 @ =0x08210F74
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r5, #0x20]
	ldr r0, [r5, #0x1C]
	str r5, [r0, #0x14]
	adds r0, r5, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08127FA8: .4byte dword_8CDC3D8 @ =0x08CDC3D8
_08127FAC: .4byte 0x03000388
_08127FB0: .4byte 0x000003FF
_08127FB4: .4byte 0x0000084C
_08127FB8: .4byte dword_8210F6C @ =0x08210F6C
_08127FBC: .4byte dword_8CDC3E8 @ =0x08CDC3E8
_08127FC0: .4byte dword_8210F74 @ =0x08210F74
