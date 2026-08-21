	.syntax unified
	.text

	thumb_func_start sub_8117C9C
sub_8117C9C:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r4, r3, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _08117D58 @ =0x08CDC398
	str r0, [r6, #0x18]
	ldr r1, _08117D5C @ =0x00000151
	adds r0, r6, r1
	movs r5, #0x00
	strb r4, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x01
	adds r4, r6, r2
	ldr r3, _08117D60 @ =0x03000388
	str r3, [r4, #0x00]
	ldrh r2, [r3, #0x3C]
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x16
	movs r7, #0xC2
	lsls r7, r7, #0x01
	adds r1, r6, r7
	strh r0, [r1, #0x00]
	ldr r1, _08117D64 @ =0x000003FF
	adds r0, r1, #0x0
	orrs r2, r0
	strh r2, [r3, #0x3C]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x08]
	movs r2, #0xC3
	lsls r2, r2, #0x01
	adds r1, r6, r2
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldrb r0, [r0, #0x09]
	adds r7, #0x03
	adds r1, r6, r7
	strb r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x0A
	strb r0, [r1, #0x08]
	ldr r1, [r4, #0x00]
	movs r0, #0x08
	strb r0, [r1, #0x09]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r5, [r0, #0x00]
	adds r0, #0x50
	strh r5, [r0, #0x00]
	ldr r5, _08117D68 @ =0x08202EA8
	movs r0, #0x1C
	movs r1, #0x00
	adds r2, r5, #0x0
	movs r3, #0x01
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r1, #0x08
	adds r2, r5, #0x0
	bl process_add
	ldr r0, _08117D6C @ =0x08CDC3A8
	str r0, [r4, #0x18]
	str r4, [r6, #0x1C]
	ldr r4, _08117D70 @ =0x08202EB0
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x01
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x08
	bl init_ybpa_process_8114B4C
	str r0, [r6, #0x20]
	ldr r2, _08117D74 @ =0x08202EB8
	movs r0, #0x10
	movs r1, #0x00
	movs r3, #0x01
	bl alloc_Zero
	bl sub_801B75C
	str r0, [r6, #0x2C]
	ldr r0, [r6, #0x1C]
	str r6, [r0, #0x14]
	adds r0, r6, #0x0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08117D58: .4byte 0x08CDC398
_08117D5C: .4byte 0x00000151
_08117D60: .4byte 0x03000388
_08117D64: .4byte 0x000003FF
_08117D68: .4byte 0x08202EA8
_08117D6C: .4byte 0x08CDC3A8
_08117D70: .4byte 0x08202EB0
_08117D74: .4byte 0x08202EB8
