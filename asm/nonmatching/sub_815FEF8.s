	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x040
	adds r6, r0, #0x0
	str r1, [sp, #0x000]
	str r2, [sp, #0x004]
	ldr r1, _0816004C @ =0x00000814
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldr r2, [sp, #0x000]
	cmp r2, r0
	bhi _0815FF18
	b _08160064
_0815FF18:
	ldr r2, _08160050 @ =0x0000081C
	adds r0, r6, r2
	ldr r3, [sp, #0x000]
	lsrs r3, r3, #0x03
	str r3, [sp, #0x030]
	ldrh r0, [r0, #0x00]
	cmp r3, r0
	bne _0815FF2A
	b _081601A6
_0815FF2A:
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r4, r6, r4
	str r4, [sp, #0x00C]
_0815FF32:
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, #0x20
	movs r5, #0x82
	lsls r5, r5, #0x04
	adds r1, r6, r5
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08160054 @ =0x0000081E
	adds r0, r6, r1
	ldr r2, _08160058 @ =0x00000822
	adds r1, r6, r2
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0x00C]
	ldr r7, [r3, #0x00]
	lsls r1, r7, #0x1B
	lsrs r1, r1, #0x1B
	movs r0, #0x20
	negs r0, r0
	ands r7, r0
	orrs r7, r1
	movs r0, #0x1F
	str r0, [sp, #0x008]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0x010]
_0815FF78:
	lsls r3, r7, #0x16
	lsrs r2, r3, #0x1B
	lsls r2, r2, #0x05
	lsls r0, r7, #0x1B
	lsrs r0, r0, #0x1B
	adds r2, r2, r0
	lsls r2, r2, #0x01
	adds r2, r6, r2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x82
	lsls r1, r1, #0x04
	adds r1, r1, r6
	mov r10, r1
	ldrh r1, [r1, #0x00]
	muls r1, r0
	ldr r4, [sp, #0x010]
	adds r1, r1, r4
	ldr r5, _0816005C @ =0x00000808
	adds r5, r5, r6
	mov r9, r5
	ldr r4, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	lsrs r3, r3, #0x1B
	adds r3, #0x01
	movs r1, #0x1F
	mov r8, r1
	ands r3, r1
	lsls r3, r3, #0x05
	ldr r2, _08160060 @ =0xFFFFFC1F
	ands r7, r2
	orrs r7, r3
	adds r0, #0x01
	ldr r3, _08160058 @ =0x00000822
	adds r3, r6, r3
	str r3, [sp, #0x03C]
	ldrh r1, [r3, #0x00]
	bl __modsi3
	lsls r3, r7, #0x16
	lsrs r2, r3, #0x1B
	lsls r2, r2, #0x05
	lsls r1, r7, #0x1B
	lsrs r1, r1, #0x1B
	adds r2, r2, r1
	lsls r2, r2, #0x01
	adds r2, r6, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, r10
	ldrh r1, [r4, #0x00]
	muls r1, r0
	ldr r5, [sp, #0x010]
	adds r1, r1, r5
	mov r5, r9
	ldr r4, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	lsrs r3, r3, #0x1B
	adds r3, #0x01
	mov r1, r8
	ands r3, r1
	lsls r3, r3, #0x05
	ldr r2, _08160060 @ =0xFFFFFC1F
	ands r7, r2
	orrs r7, r3
	adds r0, #0x01
	ldr r3, [sp, #0x03C]
	ldrh r1, [r3, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r4, [sp, #0x008]
	subs r4, #0x02
	str r4, [sp, #0x008]
	cmp r4, #0x00
	bge _0815FF78
	ldr r5, [sp, #0x00C]
	ldrb r2, [r5, #0x00]
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x1B
	adds r0, #0x01
	movs r1, #0x1F
	ands r0, r1
	movs r3, #0x20
	negs r3, r3
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x00]
	ldr r2, _08160050 @ =0x0000081C
	adds r1, r6, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r4, [sp, #0x030]
	cmp r4, r0
	beq _0816004A
	b _0815FF32
_0816004A:
	b _081601A6
_0816004C: .4byte 0x00000814
_08160050: .4byte 0x0000081C
_08160054: .4byte 0x0000081E
_08160058: .4byte 0x00000822
_0816005C: .4byte 0x00000808
_08160060: .4byte 0xFFFFFC1F
_08160064:
	ldr r5, [sp, #0x000]
	cmp r5, r0
	bcc _0816006C
	b _081601A6
_0816006C:
	ldr r2, _081602EC @ =0x0000081C
	adds r0, r6, r2
	lsrs r1, r5, #0x03
	str r1, [sp, #0x030]
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	bne _0816007C
	b _081601A6
_0816007C:
	movs r3, #0x80
	lsls r3, r3, #0x04
	adds r3, r6, r3
	str r3, [sp, #0x014]
_08160084:
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	movs r4, #0x82
	lsls r4, r4, #0x04
	adds r1, r6, r4
	ldrh r1, [r1, #0x00]
	bl __modsi3
	adds r4, r0, #0x0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _081602F0 @ =0x0000081E
	adds r0, r6, r5
	ldr r2, _081602F4 @ =0x00000822
	adds r1, r6, r2
	ldrh r0, [r0, #0x00]
	ldrh r1, [r1, #0x00]
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r3, [sp, #0x014]
	ldr r7, [r3, #0x00]
	lsls r0, r7, #0x1B
	lsrs r0, r0, #0x03
	movs r1, #0xFF
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r0, r0, #0x18
	movs r1, #0x1F
	ands r0, r1
	subs r1, #0x3F
	ands r7, r1
	orrs r7, r0
	movs r2, #0x1F
	str r2, [sp, #0x008]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [sp, #0x018]
_081600D4:
	lsls r3, r7, #0x16
	lsrs r2, r3, #0x1B
	lsls r2, r2, #0x05
	lsls r0, r7, #0x1B
	lsrs r0, r0, #0x1B
	adds r2, r2, r0
	lsls r2, r2, #0x01
	adds r2, r6, r2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x82
	lsls r4, r4, #0x04
	adds r4, r4, r6
	mov r10, r4
	ldrh r1, [r4, #0x00]
	muls r1, r0
	ldr r5, [sp, #0x018]
	adds r1, r1, r5
	ldr r4, _081602F8 @ =0x00000808
	adds r4, r4, r6
	mov r9, r4
	ldr r4, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	lsrs r3, r3, #0x1B
	adds r3, #0x01
	movs r5, #0x1F
	mov r8, r5
	ands r3, r5
	lsls r3, r3, #0x05
	ldr r1, _081602FC @ =0xFFFFFC1F
	ands r7, r1
	orrs r7, r3
	adds r0, #0x01
	ldr r2, _081602F4 @ =0x00000822
	adds r2, r6, r2
	str r2, [sp, #0x038]
	ldrh r1, [r2, #0x00]
	bl __modsi3
	lsls r3, r7, #0x16
	lsrs r2, r3, #0x1B
	lsls r2, r2, #0x05
	lsls r1, r7, #0x1B
	lsrs r1, r1, #0x1B
	adds r2, r2, r1
	lsls r2, r2, #0x01
	adds r2, r6, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r4, r10
	ldrh r1, [r4, #0x00]
	muls r1, r0
	ldr r5, [sp, #0x018]
	adds r1, r1, r5
	mov r5, r9
	ldr r4, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r2, #0x00]
	lsrs r3, r3, #0x1B
	adds r3, #0x01
	mov r1, r8
	ands r3, r1
	lsls r3, r3, #0x05
	ldr r2, _081602FC @ =0xFFFFFC1F
	ands r7, r2
	orrs r7, r3
	adds r0, #0x01
	ldr r3, [sp, #0x038]
	ldrh r1, [r3, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r4, [sp, #0x008]
	subs r4, #0x02
	str r4, [sp, #0x008]
	cmp r4, #0x00
	bge _081600D4
	ldr r5, [sp, #0x014]
	ldrb r2, [r5, #0x00]
	lsls r0, r2, #0x1B
	lsrs r0, r0, #0x1B
	subs r0, #0x01
	movs r1, #0x1F
	ands r0, r1
	movs r3, #0x20
	negs r3, r3
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x00]
	ldr r2, _081602EC @ =0x0000081C
	adds r1, r6, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	ldr r4, [sp, #0x030]
	cmp r4, r0
	beq _081601A6
	b _08160084
_081601A6:
	ldr r5, _08160300 @ =0x00000818
	adds r0, r6, r5
	ldr r0, [r0, #0x00]
	ldr r1, [sp, #0x004]
	cmp r1, r0
	bhi _081601B4
	b _08160304
_081601B4:
	ldr r2, _081602F0 @ =0x0000081E
	adds r0, r6, r2
	lsrs r3, r1, #0x03
	str r3, [sp, #0x034]
	ldrh r0, [r0, #0x00]
	cmp r3, r0
	bne _081601C4
	b _0816044E
_081601C4:
	movs r4, #0x82
	lsls r4, r4, #0x04
	adds r4, r4, r6
	mov r10, r4
	adds r5, r2, #0x0
	adds r5, r6, r5
	str r5, [sp, #0x01C]
	movs r0, #0x80
	lsls r0, r0, #0x04
	adds r0, r6, r0
	str r0, [sp, #0x020]
_081601DA:
	ldr r1, _081602EC @ =0x0000081C
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	mov r2, r10
	ldrh r1, [r2, #0x00]
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x01C]
	ldrh r0, [r3, #0x00]
	adds r0, #0x20
	ldr r5, _081602F4 @ =0x00000822
	adds r1, r6, r5
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r1, [sp, #0x020]
	ldr r7, [r1, #0x00]
	movs r2, #0xF8
	lsls r2, r2, #0x02
	ands r2, r7
	ldr r1, _081602FC @ =0xFFFFFC1F
	ands r7, r1
	orrs r7, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x024]
	movs r2, #0x1F
	str r2, [sp, #0x008]
_08160216:
	movs r3, #0xF8
	lsls r3, r3, #0x02
	ands r3, r7
	lsls r2, r7, #0x1B
	lsrs r0, r2, #0x1B
	adds r3, r3, r0
	lsls r3, r3, #0x01
	adds r3, r6, r3
	mov r5, r10
	ldrh r0, [r5, #0x00]
	ldr r5, [sp, #0x024]
	adds r1, r5, #0x0
	muls r1, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r4, _081602F8 @ =0x00000808
	adds r4, r4, r6
	mov r8, r4
	ldr r4, [r4, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r3, #0x00]
	lsrs r2, r2, #0x03
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r2, r2, r5
	lsrs r2, r2, #0x18
	movs r1, #0x1F
	ands r2, r1
	movs r3, #0x20
	negs r3, r3
	mov r9, r3
	ands r7, r3
	orrs r7, r2
	adds r0, #0x01
	mov r4, r10
	ldrh r1, [r4, #0x00]
	bl __modsi3
	movs r3, #0xF8
	lsls r3, r3, #0x02
	ands r3, r7
	lsls r2, r7, #0x1B
	lsrs r1, r2, #0x1B
	adds r3, r3, r1
	lsls r3, r3, #0x01
	adds r3, r6, r3
	ldrh r1, [r4, #0x00]
	ldr r5, [sp, #0x024]
	muls r1, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	mov r5, r8
	ldr r4, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r3, #0x00]
	lsrs r2, r2, #0x03
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r2, r2, r1
	lsrs r2, r2, #0x18
	movs r3, #0x1F
	ands r2, r3
	mov r4, r9
	ands r7, r4
	orrs r7, r2
	adds r0, #0x01
	mov r5, r10
	ldrh r1, [r5, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [sp, #0x008]
	subs r0, #0x02
	str r0, [sp, #0x008]
	cmp r0, #0x00
	bge _08160216
	ldr r1, [sp, #0x020]
	ldrh r2, [r1, #0x00]
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x1B
	adds r0, #0x01
	movs r3, #0x1F
	ands r0, r3
	lsls r0, r0, #0x05
	ldr r4, _081602FC @ =0xFFFFFC1F
	adds r1, r4, #0x0
	ands r2, r1
	orrs r2, r0
	ldr r5, [sp, #0x020]
	strh r2, [r5, #0x00]
	ldr r1, [sp, #0x01C]
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r2, [sp, #0x034]
	adds r3, r0, #0x0
	cmp r2, r3
	beq _081602EA
	b _081601DA
_081602EA:
	b _0816044E
_081602EC: .4byte 0x0000081C
_081602F0: .4byte 0x0000081E
_081602F4: .4byte 0x00000822
_081602F8: .4byte 0x00000808
_081602FC: .4byte 0xFFFFFC1F
_08160300: .4byte 0x00000818
_08160304:
	ldr r4, [sp, #0x004]
	cmp r4, r0
	bcc _0816030C
	b _0816044E
_0816030C:
	ldr r5, _08160490 @ =0x0000081E
	adds r0, r6, r5
	lsrs r1, r4, #0x03
	str r1, [sp, #0x034]
	ldrh r0, [r0, #0x00]
	cmp r1, r0
	bne _0816031C
	b _0816044E
_0816031C:
	movs r2, #0x82
	lsls r2, r2, #0x04
	adds r2, r2, r6
	mov r9, r2
	adds r3, r5, #0x0
	adds r3, r6, r3
	str r3, [sp, #0x028]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r4, r6, r4
	str r4, [sp, #0x02C]
_08160332:
	ldr r5, _08160494 @ =0x0000081C
	adds r0, r6, r5
	ldrh r0, [r0, #0x00]
	mov r2, r9
	ldrh r1, [r2, #0x00]
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r3, [sp, #0x028]
	ldrh r0, [r3, #0x00]
	subs r0, #0x01
	adds r5, #0x06
	adds r1, r6, r5
	ldrh r1, [r1, #0x00]
	bl __modsi3
	ldr r1, [sp, #0x02C]
	ldr r7, [r1, #0x00]
	lsls r1, r7, #0x16
	lsrs r1, r1, #0x1B
	subs r1, #0x01
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #0x1F
	ands r1, r2
	lsls r1, r1, #0x05
	ldr r2, _08160498 @ =0xFFFFFC1F
	ands r7, r2
	orrs r7, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r10, r0
	movs r2, #0x1F
	str r2, [sp, #0x008]
_08160378:
	movs r3, #0xF8
	lsls r3, r3, #0x02
	ands r3, r7
	lsls r2, r7, #0x1B
	lsrs r0, r2, #0x1B
	adds r3, r3, r0
	lsls r3, r3, #0x01
	adds r3, r6, r3
	mov r5, r9
	ldrh r0, [r5, #0x00]
	mov r1, r10
	muls r1, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r4, _0816049C @ =0x00000808
	adds r5, r6, r4
	ldr r4, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r3, #0x00]
	lsrs r2, r2, #0x03
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r2, r2, r1
	lsrs r2, r2, #0x18
	movs r3, #0x1F
	ands r2, r3
	movs r4, #0x20
	negs r4, r4
	mov r8, r4
	ands r7, r4
	orrs r7, r2
	adds r0, #0x01
	mov r2, r9
	ldrh r1, [r2, #0x00]
	bl __modsi3
	movs r3, #0xF8
	lsls r3, r3, #0x02
	ands r3, r7
	lsls r2, r7, #0x1B
	lsrs r1, r2, #0x1B
	adds r3, r3, r1
	lsls r3, r3, #0x01
	adds r3, r6, r3
	mov r4, r9
	ldrh r1, [r4, #0x00]
	mov r4, r10
	muls r4, r1
	adds r1, r4, #0x0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	ldr r4, [r5, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r4
	ldrh r1, [r1, #0x00]
	strh r1, [r3, #0x00]
	lsrs r2, r2, #0x03
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r2, r2, r5
	lsrs r2, r2, #0x18
	movs r1, #0x1F
	ands r2, r1
	mov r3, r8
	ands r7, r3
	orrs r7, r2
	adds r0, #0x01
	mov r4, r9
	ldrh r1, [r4, #0x00]
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r5, [sp, #0x008]
	subs r5, #0x02
	str r5, [sp, #0x008]
	cmp r5, #0x00
	bge _08160378
	ldr r0, [sp, #0x02C]
	ldrh r2, [r0, #0x00]
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x1B
	subs r0, #0x01
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x05
	ldr r3, _08160498 @ =0xFFFFFC1F
	adds r1, r3, #0x0
	ands r2, r1
	orrs r2, r0
	ldr r4, [sp, #0x02C]
	strh r2, [r4, #0x00]
	ldr r5, [sp, #0x028]
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	ldr r0, [sp, #0x034]
	ldrh r1, [r5, #0x00]
	cmp r0, r1
	beq _0816044E
	b _08160332
_0816044E:
	ldr r2, _081604A0 @ =0x00000814
	adds r0, r6, r2
	ldr r3, [sp, #0x000]
	str r3, [r0, #0x00]
	ldr r4, _081604A4 @ =0x00000818
	adds r2, r6, r4
	ldr r5, [sp, #0x004]
	str r5, [r2, #0x00]
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08160466
	adds r0, #0x07
_08160466:
	asrs r1, r0, #0x03
	ldr r3, _08160494 @ =0x0000081C
	adds r0, r6, r3
	strh r1, [r0, #0x00]
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _08160476
	adds r1, #0x07
_08160476:
	asrs r1, r1, #0x03
	ldr r4, _08160490 @ =0x0000081E
	adds r0, r6, r4
	strh r1, [r0, #0x00]
	add sp, #0x040
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08160490: .4byte 0x0000081E
_08160494: .4byte 0x0000081C
_08160498: .4byte 0xFFFFFC1F
_0816049C: .4byte 0x00000808
_081604A0: .4byte 0x00000814
_081604A4: .4byte 0x00000818
