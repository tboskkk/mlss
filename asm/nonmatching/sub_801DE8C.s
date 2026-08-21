	.syntax unified
	.text

	thumb_func_start sub_801DE8C
sub_801DE8C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r3, [r4, #0x04]
	movs r5, #0x00
	ldr r0, _0801DF08 @ =0x0000027F
	mov r12, r0
	ldr r7, _0801DF0C @ =0x00007FFF
	ldr r0, _0801DF10 @ =0xFFFFF000
	adds r6, r0, #0x0
_0801DEA0:
	ldrh r1, [r4, #0x0C]
	adds r0, r7, #0x0
	ands r0, r1
	lsrs r0, r0, #0x05
	adds r0, r0, r5
	orrs r0, r6
	strh r0, [r3, #0x00]
	adds r2, r5, #0x1
	ldrh r1, [r4, #0x0C]
	adds r0, r7, #0x0
	ands r0, r1
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r0, r6
	strh r0, [r3, #0x02]
	adds r2, r5, #0x2
	ldrh r1, [r4, #0x0C]
	adds r0, r7, #0x0
	ands r0, r1
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r0, r6
	strh r0, [r3, #0x04]
	adds r2, r5, #0x3
	ldrh r1, [r4, #0x0C]
	adds r0, r7, #0x0
	ands r0, r1
	lsrs r0, r0, #0x05
	adds r0, r0, r2
	orrs r0, r6
	strh r0, [r3, #0x06]
	adds r3, #0x08
	adds r5, #0x04
	cmp r5, r12
	ble _0801DEA0
	ldr r0, [r4, #0x04]
	ldrh r1, [r4, #0x0E]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0xA0
	lsls r2, r2, #0x03
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801DF08: .4byte 0x0000027F
_0801DF0C: .4byte 0x00007FFF
_0801DF10: .4byte 0xFFFFF000
