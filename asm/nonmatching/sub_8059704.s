	.syntax unified
	.text

	thumb_func_start sub_8059704
sub_8059704:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r7, r0, #0x0
	adds r5, r3, #0x0
	ldr r6, [sp, #0x018]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	bl process_add
	ldr r0, _080597E0 @ =0x08CDC278
	str r0, [r7, #0x18]
	movs r4, #0x00
	ldr r0, _080597E4 @ =0x0000FFFB
	strh r0, [r7, #0x1C]
	strh r5, [r7, #0x1E]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	adds r0, r7, #0x0
	adds r0, #0x7C
	strh r6, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x06
	ldr r2, _080597E8 @ =0x081E27C4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x68]
	movs r0, #0xC0
	lsls r0, r0, #0x07
	ldr r2, _080597EC @ =0x081E27CC
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x70]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, _080597F0 @ =0x081E27D4
	movs r1, #0x01
	movs r3, #0x00
	bl alloc_zero_8018DB4
	str r0, [r7, #0x78]
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x68]
	ldr r2, _080597F4 @ =0x01000C00
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x70]
	ldr r2, _080597F8 @ =0x01001800
	mov r0, sp
	bl CpuFastSet
	str r4, [sp, #0x000]
	ldr r1, [r7, #0x78]
	ldr r2, _080597FC @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	ldrh r1, [r7, #0x1E]
	ldr r0, _08059800 @ =0x00007FFF
	ands r0, r1
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r1, r1, #0x03
	ldr r2, _08059804 @ =room_props_table
	ldr r0, _08059808 @ =0x03000DE8
	adds r1, r1, r2
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	adds r0, r7, #0x0
	adds r0, #0x52
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, #0x0A
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	adds r0, r7, #0x0
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080597E0: .4byte dword_8CDC278 @ =0x08CDC278
_080597E4: .4byte 0x0000FFFB
_080597E8: .4byte dword_81E27C4 @ =0x081E27C4
_080597EC: .4byte dword_81E27CC @ =0x081E27CC
_080597F0: .4byte dword_81E27D4 @ =0x081E27D4
_080597F4: .4byte 0x01000C00
_080597F8: .4byte 0x01001800
_080597FC: .4byte 0x01000080
_08059800: .4byte 0x00007FFF
_08059804: .4byte room_props_table
_08059808: .4byte 0x03000DE8
