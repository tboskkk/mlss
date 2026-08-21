	.syntax unified
	.text

	thumb_func_start ybai_update
ybai_update: @ 080F21FC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r4, [r7, #0x2C]
	ldr r0, _080F2288 @ =0x0000179C
	adds r5, r4, r0
	adds r0, r7, #0x0
	bl sub_80F2618
	movs r0, #0x00
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	ldr r0, _080F228C @ =0x00000C14
	ands r0, r1
	cmp r0, #0x00
	bne _080F222E
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F222E:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r4, r1
	ldr r2, [r7, #0x2C]
	movs r3, #0xE0
	lsls r3, r3, #0x03
	adds r3, r3, r2
	mov r8, r3
	cmp r4, r8
	beq _080F230A
	subs r1, r3, r4
	ldr r0, _080F2290 @ =0x000001FF
	ands r1, r0
	cmp r1, #0x00
	beq _080F229C
	subs r0, #0xFE
	cmp r1, r0
	bge _080F229C
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	ldr r3, _080F2294 @ =0x00001E34
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F2280
	ldr r0, _080F2298 @ =0x0000177C
	adds r1, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F2280:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r4, r1
	b _080F2300
_080F2288: .4byte 0x0000179C
_080F228C: .4byte 0x00000C14
_080F2290: .4byte 0x000001FF
_080F2294: .4byte 0x00001E34
_080F2298: .4byte 0x0000177C
_080F229C:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r0, [r0, #0x00]
	ldr r2, _080F2358 @ =0x00001E34
	adds r6, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	bne _080F22C6
	ldr r1, [r7, #0x2C]
	ldr r3, _080F235C @ =0x0000177C
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F22C6:
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ands r0, r6
	cmp r0, #0x00
	bne _080F22FA
	ldr r1, [r7, #0x2C]
	ldr r3, _080F235C @ =0x0000177C
	adds r1, r1, r3
	ldr r3, _080F2360 @ =0x000001FD
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r2, #0x0
	bl ybai_script_update_80F8ACC
_080F22FA:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
_080F2300:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	cmp r4, r8
	bne _080F229C
_080F230A:
	ldr r2, [r7, #0x2C]
	movs r1, #0xB8
	lsls r1, r1, #0x05
	adds r1, r1, r2
	mov r8, r1
	cmp r4, r8
	beq _080F23DE
	subs r1, r1, r4
	ldr r0, _080F2364 @ =0x000001FF
	ands r1, r0
	cmp r1, #0x00
	beq _080F2370
	subs r0, #0xFE
	cmp r1, r0
	bge _080F2370
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	ldr r3, _080F2368 @ =0x00000436
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F2350
	ldr r0, _080F236C @ =0x0000178C
	adds r1, r2, r0
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F2350:
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r4, r4, r1
	b _080F23D4
_080F2358: .4byte 0x00001E34
_080F235C: .4byte 0x0000177C
_080F2360: .4byte 0x000001FD
_080F2364: .4byte 0x000001FF
_080F2368: .4byte 0x00000436
_080F236C: .4byte 0x0000178C
_080F2370:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r0, [r0, #0x00]
	ldr r2, _080F2428 @ =0x00000436
	adds r6, r2, #0x0
	ands r0, r6
	cmp r0, #0x00
	bne _080F239A
	ldr r1, [r7, #0x2C]
	ldr r3, _080F242C @ =0x0000178C
	adds r1, r1, r3
	adds r0, r4, #0x0
	adds r0, #0xFD
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl ybai_script_update_80F8ACC
_080F239A:
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r2, r4, r0
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	ands r0, r6
	cmp r0, #0x00
	bne _080F23CE
	ldr r1, [r7, #0x2C]
	ldr r3, _080F242C @ =0x0000178C
	adds r1, r1, r3
	ldr r3, _080F2430 @ =0x000001FD
	adds r0, r4, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1C
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r1, r2, #0x0
	bl ybai_script_update_80F8ACC
_080F23CE:
	movs r0, #0x80
	lsls r0, r0, #0x02
	adds r4, r4, r0
_080F23D4:
	ldrb r0, [r5, #0x00]
	adds r0, #0x01
	strb r0, [r5, #0x00]
	cmp r4, r8
	bne _080F2370
_080F23DE:
	adds r0, r7, #0x0
	bl sub_80F2984
	ldr r1, [r7, #0x30]
	ldr r0, [r1, #0x04]
	movs r2, #0xD9
	lsls r2, r2, #0x01
	adds r0, r0, r2
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F2406
	adds r0, r1, #0x0
	bl sub_80E635C
	ldr r1, [r7, #0x30]
	ldr r1, [r1, #0x04]
	movs r3, #0xD9
	lsls r3, r3, #0x01
	adds r1, r1, r3
	strb r0, [r1, #0x00]
_080F2406:
	movs r0, #0x00
	mov r9, r0
	ldr r0, [r7, #0x28]
	ldr r6, [r0, #0x00]
_080F240E:
	mov r1, r9
	lsls r0, r1, #0x18
	ldr r4, [r7, #0x28]
	lsrs r2, r0, #0x14
	ldr r1, [r4, #0x00]
	adds r3, r1, r2
	ldrb r1, [r3, #0x0F]
	mov r8, r0
	cmp r1, #0x00
	bne _080F2434
	movs r0, #0x00
	b _080F2458
	.byte 0x00, 0x00
_080F2428: .4byte 0x00000436
_080F242C: .4byte 0x0000178C
_080F2430: .4byte 0x000001FD
_080F2434:
	ldrb r0, [r3, #0x0D]
	cmp r0, #0x00
	beq _080F2456
	subs r0, #0x01
	strb r0, [r3, #0x0D]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _080F2456
	ldr r4, [r4, #0x00]
	adds r4, r4, r2
	ldr r0, [r4, #0x00]
	bl sub_807FB64
	strb r5, [r4, #0x0F]
	movs r0, #0x00
	b _080F2458
_080F2456:
	movs r0, #0x01
_080F2458:
	cmp r0, #0x00
	beq _080F24DA
	ldrb r0, [r6, #0x0E]
	cmp r0, #0x00
	beq _080F24B6
	ldrb r1, [r6, #0x0C]
	movs r0, #0x00
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	add r2, sp, #0x004
	add r3, sp, #0x008
	bl sub_80F7B1C
	ldrb r0, [r6, #0x0C]
	cmp r0, #0x07
	bhi _080F2490
	ldr r0, _080F248C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldrb r0, [r6, #0x0C]
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, #0x08
	b _080F24A2
	.byte 0x00, 0x00
_080F248C: .4byte 0x03000FD8
_080F2490:
	ldr r2, _080F2514 @ =0x03000FDC
	ldrb r1, [r6, #0x0C]
	movs r0, #0xD0
	muls r0, r1
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	movs r2, #0xC0
	lsls r2, r2, #0x02
	adds r0, r0, r2
_080F24A2:
	adds r0, #0xC5
	movs r1, #0x00
	ldsb r1, [r0, r1]
	ldr r0, [sp, #0x008]
	subs r0, r0, r1
	str r0, [sp, #0x008]
	ldr r0, [sp, #0x004]
	strh r0, [r6, #0x08]
	ldr r0, [sp, #0x008]
	strh r0, [r6, #0x0A]
_080F24B6:
	ldr r0, [r7, #0x28]
	mov r3, r8
	lsrs r2, r3, #0x14
	ldr r1, [r0, #0x00]
	adds r1, r1, r2
	ldr r3, [r1, #0x00]
	ldrh r0, [r1, #0x08]
	ldrh r2, [r1, #0x04]
	adds r0, r0, r2
	strh r0, [r3, #0x00]
	ldrh r2, [r1, #0x0A]
	ldrh r1, [r1, #0x06]
	adds r2, r2, r1
	strh r2, [r3, #0x02]
	ldr r1, _080F2518 @ =0x00007FFF
	adds r0, r1, #0x0
	subs r0, r0, r2
	strh r0, [r3, #0x0E]
_080F24DA:
	mov r2, r9
	lsls r0, r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x09
	adds r0, r0, r3
	adds r6, #0x10
	lsrs r1, r0, #0x10
	mov r9, r1
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _080F240E
	ldr r1, [r7, #0x2C]
	ldr r2, _080F251C @ =0x00001788
	adds r3, r1, r2
	ldr r0, _080F2520 @ =0x00001798
	adds r1, r1, r0
	ldr r2, [r1, #0x00]
	ldr r0, [r3, #0x00]
	bics r0, r2
	str r0, [r3, #0x00]
	movs r0, #0x00
	str r0, [r1, #0x00]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F2514: .4byte 0x03000FDC
_080F2518: .4byte 0x00007FFF
_080F251C: .4byte 0x00001788
_080F2520: .4byte 0x00001798
