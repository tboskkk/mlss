	.syntax unified
	.text

	thumb_func_start sub_80E3214
sub_80E3214:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x058
	adds r4, r0, #0x0
	ldr r0, _080E3284 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldrb r2, [r3, #0x0B]
	lsls r0, r2, #0x1A
	lsrs r0, r0, #0x1F
	movs r1, #0x01
	eors r1, r0
	lsls r1, r1, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x0B]
	movs r1, #0x16
	ldsh r0, [r4, r1]
	str r0, [sp, #0x00C]
	ldrh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	str r0, [sp, #0x010]
	movs r3, #0x14
	ldsh r2, [r4, r3]
	str r2, [sp, #0x014]
	ldrh r0, [r4, #0x12]
	adds r0, r0, r2
	strh r0, [r4, #0x12]
	movs r5, #0x12
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	bge _080E3260
	adds r0, #0xFF
_080E3260:
	asrs r2, r0, #0x08
	ldr r7, [sp, #0x014]
	cmp r7, #0x00
	ble _080E326C
	cmp r2, #0x3F
	bgt _080E3276
_080E326C:
	ldr r0, [sp, #0x014]
	cmp r0, #0x00
	bge _080E328C
	cmp r2, #0x00
	bgt _080E328C
_080E3276:
	ldr r1, _080E3288 @ =0x080E3159
	movs r0, #0x02
	bl sub_8018B78
	movs r0, #0x00
	str r0, [r4, #0x04]
	b _080E388C
_080E3284: .4byte 0x03000FD8
_080E3288: .4byte sub_80E3158
_080E328C:
	ldr r1, _080E33AC @ =0x08198504
	movs r0, #0xFF
	ands r2, r0
	lsls r2, r2, #0x01
	adds r1, r2, r1
	movs r3, #0x00
	ldsh r1, [r1, r3]
	cmp r1, #0x00
	bge _080E32A0
	adds r1, #0x3F
_080E32A0:
	asrs r1, r1, #0x06
	str r1, [sp, #0x018]
	ldr r0, _080E33B0 @ =0x08198584
	adds r0, r2, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	cmp r0, #0x00
	bge _080E32B2
	adds r0, #0x3F
_080E32B2:
	asrs r0, r0, #0x06
	str r0, [sp, #0x01C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	ldr r5, [sp, #0x018]
	subs r1, r1, r5
	subs r1, r1, r0
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E32CC
	adds r0, #0xFF
_080E32CC:
	asrs r0, r0, #0x08
	mov r10, r0
	ldr r7, [sp, #0x018]
	ldr r0, _080E33B4 @ =0xFFFFFF00
	adds r1, r7, r0
	ldr r2, [sp, #0x01C]
	subs r1, r2, r1
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E32E6
	adds r0, #0xFF
_080E32E6:
	asrs r6, r0, #0x08
	ldr r2, _080E33B8 @ =0x03001038
	ldr r0, _080E33BC @ =0x0819832C
	ldr r1, _080E33C0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x01C]
	bl _call_via_r2
	ldr r3, _080E33B4 @ =0xFFFFFF00
	adds r3, r0, r3
	str r3, [sp, #0x020]
	ldr r2, _080E33C4 @ =0x03000FDC
	ldr r0, _080E33C8 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0B]
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1F
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x09
	ldr r4, _080E33CC @ =0x00003EF0
	adds r0, r0, r4
	ldr r1, [r2, #0x00]
	adds r5, r1, r0
	ldr r0, _080E33D0 @ =0x02000010
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, _080E33D4 @ =0x02000014
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x028]
	ldr r0, _080E33D8 @ =0x02000018
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x02C]
	ldr r0, _080E33DC @ =0x0200001C
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x030]
	ldr r0, _080E33E0 @ =0x02000012
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x034]
	ldr r0, _080E33E4 @ =0x02000016
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x038]
	ldr r0, _080E33E8 @ =0x0200001A
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x03C]
	ldr r0, _080E33EC @ =0x0200001E
	ldrh r0, [r0, #0x00]
	str r0, [sp, #0x040]
	movs r4, #0x00
	cmp r4, r6
	bge _080E344E
	movs r7, #0x01
	mov r12, r7
	ldr r0, [sp, #0x00C]
	mov r1, r12
	ands r0, r1
	mov r12, r0
	ldr r3, _080E33F0 @ =0x0000FFFF
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r7, #0x02
	mov r9, r7
	ldr r0, [sp, #0x00C]
	mov r1, r9
	ands r0, r1
	mov r9, r0
	movs r7, #0x04
	mov r8, r7
	ldr r0, [sp, #0x00C]
	mov r1, r8
	ands r0, r1
	mov r8, r0
	movs r7, #0x08
	adds r0, r7, #0x0
	ldr r1, [sp, #0x00C]
	ands r0, r1
	str r0, [sp, #0x050]
_080E3388:
	mov r7, r10
	subs r0, r4, r7
	ldr r1, [sp, #0x020]
	muls r0, r1
	cmp r0, #0x00
	bge _080E3396
	adds r0, #0xFF
_080E3396:
	asrs r0, r0, #0x08
	mov r7, r10
	subs r1, r0, r7
	mov r0, r12
	cmp r0, #0x00
	beq _080E33F4
	ldr r7, [sp, #0x034]
	adds r0, r1, r7
	ands r0, r3
	b _080E33F6
	.byte 0x00, 0x00
_080E33AC: .4byte 0x08198504
_080E33B0: .4byte 0x08198584
_080E33B4: .4byte 0xFFFFFF00
_080E33B8: .4byte 0x03001038
_080E33BC: .4byte 0x0819832C
_080E33C0: .4byte 0x08198220
_080E33C4: .4byte 0x03000FDC
_080E33C8: .4byte 0x03000FD8
_080E33CC: .4byte 0x00003EF0
_080E33D0: .4byte 0x02000010
_080E33D4: .4byte 0x02000014
_080E33D8: .4byte 0x02000018
_080E33DC: .4byte 0x0200001C
_080E33E0: .4byte 0x02000012
_080E33E4: .4byte 0x02000016
_080E33E8: .4byte 0x0200001A
_080E33EC: .4byte 0x0200001E
_080E33F0: .4byte 0x0000FFFF
_080E33F4:
	subs r0, r2, r4
_080E33F6:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x024]
	orrs r0, r7
	str r0, [r5, #0x00]
	mov r0, r9
	cmp r0, #0x00
	beq _080E340C
	ldr r7, [sp, #0x038]
	adds r0, r1, r7
	ands r0, r3
	b _080E340E
_080E340C:
	subs r0, r2, r4
_080E340E:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x028]
	orrs r0, r7
	str r0, [r5, #0x04]
	mov r0, r8
	cmp r0, #0x00
	beq _080E3424
	ldr r7, [sp, #0x03C]
	adds r0, r1, r7
	ands r0, r3
	b _080E3426
_080E3424:
	subs r0, r2, r4
_080E3426:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x02C]
	orrs r0, r7
	str r0, [r5, #0x08]
	ldr r0, [sp, #0x050]
	cmp r0, #0x00
	beq _080E343C
	ldr r7, [sp, #0x040]
	adds r0, r1, r7
	ands r0, r3
	b _080E343E
_080E343C:
	subs r0, r2, r4
_080E343E:
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x030]
	orrs r0, r1
	str r0, [r5, #0x0C]
	adds r5, #0x10
	adds r4, #0x01
	cmp r4, r6
	blt _080E3388
_080E344E:
	ldr r2, _080E34BC @ =0x03001038
	ldr r0, _080E34C0 @ =0x0819832C
	ldr r1, _080E34C4 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x09
	ldr r1, [sp, #0x018]
	bl _call_via_r2
	ldr r2, _080E34C8 @ =0xFFFFFF00
	adds r2, r2, r0
	mov r8, r2
	cmp r4, #0x9F
	bgt _080E352A
	movs r3, #0x01
	ldr r7, [sp, #0x010]
	ands r7, r3
	mov r10, r7
	ldr r3, _080E34CC @ =0x0000FFFF
	movs r2, #0x80
	lsls r2, r2, #0x05
	movs r0, #0x02
	ldr r1, [sp, #0x010]
	ands r1, r0
	mov r12, r1
	movs r7, #0x04
	mov r9, r7
	ldr r0, [sp, #0x010]
	mov r1, r9
	ands r0, r1
	mov r9, r0
	movs r7, #0x08
	adds r0, r7, #0x0
	ldr r1, [sp, #0x010]
	ands r0, r1
	str r0, [sp, #0x050]
_080E349A:
	subs r0, r4, r6
	mov r7, r8
	muls r7, r0
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _080E34A8
	adds r0, #0xFF
_080E34A8:
	asrs r0, r0, #0x08
	subs r1, r0, r6
	mov r0, r10
	cmp r0, #0x00
	beq _080E34D0
	ldr r7, [sp, #0x034]
	adds r0, r1, r7
	ands r0, r3
	b _080E34D2
	.byte 0x00, 0x00
_080E34BC: .4byte 0x03001038
_080E34C0: .4byte 0x0819832C
_080E34C4: .4byte 0x08198220
_080E34C8: .4byte 0xFFFFFF00
_080E34CC: .4byte 0x0000FFFF
_080E34D0:
	subs r0, r2, r4
_080E34D2:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x024]
	orrs r0, r7
	str r0, [r5, #0x00]
	mov r0, r12
	cmp r0, #0x00
	beq _080E34E8
	ldr r7, [sp, #0x038]
	adds r0, r1, r7
	ands r0, r3
	b _080E34EA
_080E34E8:
	subs r0, r2, r4
_080E34EA:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x028]
	orrs r0, r7
	str r0, [r5, #0x04]
	mov r0, r9
	cmp r0, #0x00
	beq _080E3500
	ldr r7, [sp, #0x03C]
	adds r0, r1, r7
	ands r0, r3
	b _080E3502
_080E3500:
	subs r0, r2, r4
_080E3502:
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x02C]
	orrs r0, r7
	str r0, [r5, #0x08]
	ldr r0, [sp, #0x050]
	cmp r0, #0x00
	beq _080E3518
	ldr r7, [sp, #0x040]
	adds r0, r1, r7
	ands r0, r3
	b _080E351A
_080E3518:
	subs r0, r2, r4
_080E351A:
	lsls r0, r0, #0x10
	ldr r1, [sp, #0x030]
	orrs r0, r1
	str r0, [r5, #0x0C]
	adds r5, #0x10
	adds r4, #0x01
	cmp r4, #0x9F
	ble _080E349A
_080E352A:
	ldr r5, _080E3694 @ =0x0300034C
	ldr r2, _080E3698 @ =0x00000888
	adds r7, r5, r2
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r1, r0, #0x0A
	adds r0, r5, #0x0
	adds r0, #0x80
	adds r6, r1, r0
	str r6, [sp, #0x044]
	ldr r3, [sp, #0x014]
	cmp r3, #0x00
	bgt _080E3548
	b _080E36F4
_080E3548:
	movs r0, #0x80
	lsls r0, r0, #0x01
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r5, r4
	adds r0, r1, r0
	ldrh r1, [r0, #0x06]
	movs r2, #0x00
	movs r3, #0x80
	lsls r3, r3, #0x01
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r4, #0x20
	adds r1, r5, r4
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	movs r4, #0xFF
	lsls r4, r4, #0x08
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r1, #0x88
	lsls r1, r1, #0x03
	adds r1, r1, r5
	mov r8, r1
	add r0, r8
	ldrh r1, [r0, #0x06]
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	mov r1, r10
	negs r3, r1
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r7, #0x8C
	lsls r7, r7, #0x03
	adds r1, r5, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	movs r0, #0x7F
	str r0, [sp, #0x048]
_080E35E2:
	mov r0, sp
	ldr r1, _080E369C @ =0x08200100
	movs r2, #0x0C
	bl memcpy
	ldrh r1, [r6, #0x02]
	add r2, sp, #0x050
	strh r1, [r2, #0x00]
	adds r3, r1, #0x0
	lsls r3, r3, #0x10
	mov r8, r3
	lsrs r1, r3, #0x1E
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0E
	lsls r0, r0, #0x02
	orrs r1, r0
	mov r4, sp
	adds r0, r4, r1
	ldrb r4, [r0, #0x00]
	ldrh r2, [r6, #0x00]
	adds r3, r2, #0x0
	movs r5, #0xC0
	lsls r5, r5, #0x02
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r3, r0
	beq _080E36DE
	cmp r3, r5
	bne _080E3620
	lsls r4, r4, #0x01
_080E3620:
	movs r7, #0xFF
	mov r9, r7
	movs r0, #0xFF
	ands r0, r2
	adds r0, r0, r4
	movs r1, #0x50
	subs r1, r1, r0
	str r1, [sp, #0x054]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r12, r0
	ldr r1, [sp, #0x01C]
	add r1, r12
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E3646
	adds r0, #0xFF
_080E3646:
	asrs r1, r0, #0x08
	ldr r5, [sp, #0x054]
	ldr r7, [sp, #0x018]
	adds r0, r5, #0x0
	muls r0, r7
	cmp r0, #0x00
	bge _080E3656
	adds r0, #0xFF
_080E3656:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	subs r1, r0, r4
	cmp r3, #0x00
	beq _080E36A0
	movs r3, #0xFF
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	ands r2, r0
	mov r4, r9
	ands r1, r4
	orrs r2, r1
	strh r2, [r6, #0x00]
	mov r5, r8
	lsrs r0, r5, #0x19
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x05
	ldr r7, [sp, #0x044]
	adds r1, r7, r0
	ldrh r0, [r1, #0x1E]
	mov r2, r10
	muls r2, r0
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _080E368C
	adds r0, #0xFF
_080E368C:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x1E]
	b _080E36DE
	.byte 0x00, 0x00
_080E3694: .4byte 0x0300034C
_080E3698: .4byte 0x00000888
_080E369C: .4byte 0x08200100
_080E36A0:
	movs r3, #0xFF
	lsls r3, r3, #0x08
	adds r0, r3, #0x0
	ands r2, r0
	mov r4, r9
	ands r1, r4
	orrs r2, r1
	mov r5, r12
	orrs r2, r5
	strh r2, [r6, #0x00]
	movs r7, #0xC0
	lsls r7, r7, #0x06
	adds r0, r7, #0x0
	add r1, sp, #0x050
	ldrh r2, [r1, #0x00]
	ands r2, r0
	lsls r2, r2, #0x10
	ldr r3, _080E36F0 @ =0x0000CFFF
	adds r0, r3, #0x0
	ldrh r4, [r1, #0x00]
	ands r0, r4
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	movs r5, #0xE0
	lsls r5, r5, #0x06
	adds r0, r0, r5
	lsrs r2, r2, #0x1C
	movs r1, #0x01
	ands r2, r1
	subs r0, r0, r2
	strh r0, [r6, #0x02]
_080E36DE:
	adds r6, #0x08
	ldr r7, [sp, #0x048]
	subs r7, #0x01
	str r7, [sp, #0x048]
	cmp r7, #0x00
	blt _080E36EC
	b _080E35E2
_080E36EC:
	b _080E388C
	.byte 0x00, 0x00
_080E36F0: .4byte 0x0000CFFF
_080E36F4:
	ldr r2, [sp, #0x020]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r10, r0
	movs r4, #0x80
	lsls r4, r4, #0x03
	adds r0, r5, r4
	adds r0, r1, r0
	ldrh r1, [r0, #0x06]
	movs r2, #0x00
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	adds r4, #0x20
	adds r1, r5, r4
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	movs r4, #0xFF
	lsls r4, r4, #0x08
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	mov r1, r10
	strh r1, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r1, #0x88
	lsls r1, r1, #0x03
	adds r1, r1, r5
	mov r8, r1
	add r0, r8
	ldrh r1, [r0, #0x06]
	strh r3, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	mov r1, r10
	negs r3, r1
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1C
	lsrs r0, r0, #0x1F
	lsls r0, r0, #0x0A
	movs r7, #0x8C
	lsls r7, r7, #0x03
	adds r1, r5, r7
	adds r0, r0, r1
	ldrh r1, [r0, #0x06]
	strh r4, [r0, #0x06]
	ldrh r1, [r0, #0x0E]
	strh r2, [r0, #0x0E]
	ldrh r1, [r0, #0x16]
	strh r2, [r0, #0x16]
	ldrh r1, [r0, #0x1E]
	strh r3, [r0, #0x1E]
	movs r0, #0x7F
	str r0, [sp, #0x04C]
_080E378C:
	mov r0, sp
	ldr r1, _080E383C @ =0x08200100
	movs r2, #0x0C
	bl memcpy
	ldrh r1, [r6, #0x02]
	add r2, sp, #0x050
	strh r1, [r2, #0x00]
	adds r3, r1, #0x0
	lsls r3, r3, #0x10
	mov r8, r3
	lsrs r1, r3, #0x1E
	ldrh r0, [r6, #0x00]
	lsrs r0, r0, #0x0E
	lsls r0, r0, #0x02
	orrs r1, r0
	mov r4, sp
	adds r0, r4, r1
	ldrb r4, [r0, #0x00]
	ldrh r2, [r6, #0x00]
	adds r3, r2, #0x0
	movs r5, #0xC0
	lsls r5, r5, #0x02
	ands r3, r5
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r3, r0
	beq _080E387E
	cmp r3, r5
	bne _080E37CA
	lsls r4, r4, #0x01
_080E37CA:
	movs r7, #0xFF
	mov r9, r7
	movs r0, #0xFF
	ands r0, r2
	adds r0, r0, r4
	movs r1, #0x50
	subs r1, r1, r0
	str r1, [sp, #0x054]
	movs r0, #0x80
	lsls r0, r0, #0x01
	mov r12, r0
	ldr r5, [sp, #0x018]
	subs r1, r0, r5
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x04
	cmp r0, #0x00
	bge _080E37F0
	adds r0, #0xFF
_080E37F0:
	asrs r1, r0, #0x08
	ldr r7, [sp, #0x054]
	ldr r5, [sp, #0x01C]
	adds r0, r7, #0x0
	muls r0, r5
	cmp r0, #0x00
	bge _080E3800
	adds r0, #0xFF
_080E3800:
	asrs r0, r0, #0x08
	subs r0, r1, r0
	subs r1, r0, r4
	cmp r3, #0x00
	beq _080E3840
	movs r7, #0xFF
	lsls r7, r7, #0x08
	adds r0, r7, #0x0
	ands r2, r0
	mov r0, r9
	ands r1, r0
	orrs r2, r1
	strh r2, [r6, #0x00]
	mov r1, r8
	lsrs r0, r1, #0x19
	movs r1, #0x1F
	ands r0, r1
	lsls r0, r0, #0x05
	ldr r2, [sp, #0x044]
	adds r1, r2, r0
	ldrh r0, [r1, #0x1E]
	mov r3, r10
	muls r3, r0
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _080E3836
	adds r0, #0xFF
_080E3836:
	asrs r0, r0, #0x08
	strh r0, [r1, #0x1E]
	b _080E387E
_080E383C: .4byte 0x08200100
_080E3840:
	movs r4, #0xFF
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	ands r2, r0
	mov r5, r9
	ands r1, r5
	orrs r2, r1
	mov r7, r12
	orrs r2, r7
	strh r2, [r6, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x06
	adds r0, r1, #0x0
	add r3, sp, #0x050
	ldrh r2, [r3, #0x00]
	ands r2, r0
	lsls r2, r2, #0x10
	ldr r4, _080E389C @ =0x0000CFFF
	adds r0, r4, #0x0
	ldrh r5, [r3, #0x00]
	ands r0, r5
	lsrs r1, r2, #0x13
	adds r0, r0, r1
	movs r7, #0xE0
	lsls r7, r7, #0x06
	adds r0, r0, r7
	lsrs r2, r2, #0x1C
	movs r1, #0x01
	ands r2, r1
	subs r0, r0, r2
	strh r0, [r6, #0x02]
_080E387E:
	adds r6, #0x08
	ldr r0, [sp, #0x04C]
	subs r0, #0x01
	str r0, [sp, #0x04C]
	cmp r0, #0x00
	blt _080E388C
	b _080E378C
_080E388C:
	add sp, #0x058
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080E389C: .4byte 0x0000CFFF
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xFF, 0xF7, 0xC6, 0xFB, 0x01, 0x1C, 0x00, 0x2C, 0x01, 0xDA, 0x34, 0x20
	.byte 0x00, 0xE0, 0x43, 0x20, 0xC8, 0x82, 0x08, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x82, 0xB0, 0x06, 0x49, 0x07, 0x4A, 0x01, 0x23, 0x5B, 0x42, 0x00, 0x20, 0x00, 0x90
	.byte 0x01, 0x90, 0x02, 0x20, 0x9E, 0xF7, 0x8C, 0xFF, 0x02, 0xB0, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x88, 0xFE, 0x39, 0x08, 0x00, 0x40, 0x00, 0x06
