	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8141EE4
sub_8141EE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r4, r0
	str r0, [sp, #0x018]
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08141FCE
	movs r0, #0xEA
	lsls r0, r0, #0x01
	adds r1, r4, r0
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08141FBA
	adds r0, r7, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141F68
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x11
	movs r3, #0x1C
	bl sub_8139D44
	add r0, sp, #0x004
	movs r1, #0x08
	ldsh r3, [r0, r1]
	movs r2, #0x0A
	ldsh r0, [r0, r2]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r1, r4, #0x0
	adds r2, r6, #0x0
	bl sub_80FBC14
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08141F6C
_08141F68:
	movs r0, #0x00
	b _08141F70
_08141F6C:
	mov r9, r6
	movs r0, #0x01
_08141F70:
	cmp r0, #0x00
	beq _08141FA8
	mov r1, r9
	ldr r0, [r1, #0x14]
	ldr r1, [r4, #0x14]
	cmp r0, r1
	bne _08141F8C
	ldr r0, _08141F88 @ =0x08142151
	mov r2, r8
	str r0, [r2, #0x00]
	b _08142136
	.byte 0x00, 0x00
_08141F88: .4byte sub_8142150
_08141F8C:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r9, r0
	beq _08141FA8
	ldr r0, [r0, #0x14]
	cmp r0, r1
	bne _08141FA8
	ldr r0, _08141FA4 @ =0x08142151
	b _08142106
	.byte 0x00, 0x00
_08141FA4: .4byte sub_8142150
_08141FA8:
	movs r2, #0xAC
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x1A]
	adds r2, #0x24
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	b _08141FBE
_08141FBA:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08141FBE:
	movs r1, #0xBF
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _0814204C
_08141FCE:
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _0814205C
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _0814203C @ =0x03001038
	ldr r0, _08142040 @ =0x0819832C
	ldr r1, _08142044 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	mov r2, r10
	ldrh r0, [r2, #0x3A]
	str r0, [r1, #0x00]
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08142048 @ =0x08142659
	b _08142106
	.byte 0x00, 0x00
_0814203C: .4byte 0x03001038
_08142040: .4byte 0x0819832C
_08142044: .4byte 0x08198220
_08142048: .4byte sub_8142658
_0814204C:
	movs r2, #0xC8
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0814205C
	subs r0, #0x01
	str r0, [r1, #0x00]
_0814205C:
	adds r0, r4, #0x0
	bl sub_813B564
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08142136
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r6, r5, r0
	ldrb r1, [r6, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08142104
	movs r1, #0xC8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _081420F4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, r10
	ldrh r2, [r2, #0x22]
	cmp r0, r2
	bcs _081420F4
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _081420E4 @ =0x03001038
	ldr r0, _081420E8 @ =0x0819832C
	ldr r1, _081420EC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r4, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r1, #0x04
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldrb r0, [r6, #0x00]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #0x00]
	ldr r0, _081420F0 @ =0x08142659
	b _08142106
_081420E4: .4byte 0x03001038
_081420E8: .4byte 0x0819832C
_081420EC: .4byte 0x08198220
_081420F0: .4byte sub_8142658
_081420F4:
	movs r2, #0xBF
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08142110
_08142104:
	ldr r0, _0814210C @ =0x08141D55
_08142106:
	mov r1, r8
	str r0, [r1, #0x00]
	b _08142136
_0814210C: .4byte sub_8141D54
_08142110:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x018]
	adds r0, r0, r2
	ldrh r0, [r0, #0x28]
	movs r2, #0xBD
	lsls r2, r2, #0x01
	adds r1, r5, r2
	strh r0, [r1, #0x00]
	ldr r0, _08142148 @ =0x0813B1E9
	mov r1, r8
	str r0, [r1, #0x00]
	ldr r0, _0814214C @ =0x08141D55
	str r0, [r1, #0x0C]
_08142136:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08142148: .4byte sub_813B1E8
_0814214C: .4byte sub_8141D54
	thumb_func_start sub_8142150
sub_8142150:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	adds r6, r5, #0x0
	adds r6, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r7, [r0, #0x00]
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814217E
	mov r0, sp
	ldrb r0, [r0, #0x00]
	b _0814218A
_0814217E:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814218A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x40
	ldrb r1, [r0, #0x00]
	ldr r2, _081421E4 @ =0x00000239
	adds r0, r5, r2
	strb r1, [r0, #0x00]
	ldr r1, [r3, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081421E8
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _081421EC
_081421E4: .4byte 0x00000239
_081421E8:
	movs r3, #0x01
	negs r3, r3
_081421EC:
	adds r2, r5, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _08142258 @ =0x03001038
	ldr r1, _0814225C @ =0x0819832C
	ldr r2, _08142260 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x3C
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r6, r2
	strh r0, [r1, #0x00]
	movs r0, #0xC2
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldr r0, [r5, #0x0C]
	str r0, [r1, #0x00]
	adds r2, #0x0E
	adds r1, r6, r2
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x00]
	ldr r0, _08142264 @ =0x08142269
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142258: .4byte 0x03001038
_0814225C: .4byte 0x0819832C
_08142260: .4byte 0x08198220
_08142264: .4byte sub_8142268
	thumb_func_start sub_8142268
sub_8142268:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	movs r0, #0x58
	adds r0, r0, r4
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r5, r4, r2
	ldrh r0, [r5, #0x00]
	cmp r0, #0x00
	bne _08142296
	b _08142390
_08142296:
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081422A2
	b _081423EC
_081422A2:
	add r5, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r5, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081422BC
	ldr r0, _081422B8 @ =0x08142401
	b _081423EA
	.byte 0x00, 0x00
_081422B8: .4byte sub_8142400
_081422BC:
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r5, [r0, #0x28]
	movs r6, #0x85
	lsls r6, r6, #0x02
	adds r2, r4, r6
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r5, #0x0C]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08142304
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _08142308
_08142304:
	movs r3, #0x01
	negs r3, r3
_08142308:
	adds r2, r4, #0x0
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r3, _08142380 @ =0x03001038
	ldr r1, _08142384 @ =0x0819832C
	ldr r2, _08142388 @ =0x08198220
	subs r1, r1, r2
	ldr r2, [r3, #0x00]
	adds r2, r2, r1
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r8
	adds r0, #0x44
	ldrh r3, [r0, #0x00]
	ldr r2, _0814238C @ =0x00000242
	adds r0, r5, r2
	movs r6, #0x00
	ldsh r1, [r0, r6]
	lsls r0, r1, #0x02
	adds r0, r0, r1
	lsls r0, r0, #0x02
	ldr r1, [r5, #0x0C]
	adds r1, r1, r0
	adds r2, #0x02
	adds r0, r5, r2
	movs r6, #0x00
	ldsh r2, [r0, r6]
	lsls r0, r2, #0x02
	adds r0, r0, r2
	lsls r0, r0, #0x02
	ldr r2, [r5, #0x10]
	adds r2, r2, r0
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	b _081423EC
_08142380: .4byte 0x03001038
_08142384: .4byte 0x0819832C
_08142388: .4byte 0x08198220
_0814238C: .4byte 0x00000242
_08142390:
	adds r0, r4, #0x0
	bl sub_813B650
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _081423EC
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r2, #0x12
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _081423D8 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081423E8
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	add r0, r8
	adds r0, #0x58
	ldrb r0, [r0, #0x00]
	strh r0, [r5, #0x00]
	ldr r0, _081423DC @ =0x0813B1E9
	str r0, [r6, #0x00]
	ldr r0, _081423E0 @ =0x0813B361
	str r0, [r6, #0x0C]
	ldr r0, _081423E4 @ =0x08141D55
	str r0, [r6, #0x04]
	b _081423EC
_081423D8: .4byte 0x00007FFF
_081423DC: .4byte sub_813B1E8
_081423E0: .4byte sub_813B360
_081423E4: .4byte sub_8141D54
_081423E8:
	ldr r0, _081423FC @ =0x081424E9
_081423EA:
	str r0, [r6, #0x00]
_081423EC:
	add sp, #0x018
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081423FC: .4byte sub_81424E8
	thumb_func_start sub_8142400
sub_8142400:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	ldr r0, _081424B4 @ =0x03001038
	mov r8, r0
	ldr r1, _081424B8 @ =0x0819832C
	ldr r0, _081424BC @ =0x08198220
	subs r7, r1, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	ldr r0, _081424C0 @ =0x000002FA
	adds r4, r5, r0
	movs r1, #0x00
	ldsh r0, [r4, r1]
	movs r1, #0x80
	lsls r1, r1, #0x01
	bl _call_via_r2
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r1, _081424C4 @ =0x0000030A
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	ldrh r2, [r4, #0x00]
	adds r0, r0, r2
	strh r0, [r4, #0x00]
	movs r0, #0xE9
	lsls r0, r0, #0x01
	adds r1, r5, r0
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bne _081424D8
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	mov r0, sp
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _081424C8 @ =0x00007FFF
	mov r0, sp
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081424D4
	ldr r0, _081424CC @ =0x0813B361
	str r0, [r6, #0x00]
	ldr r0, _081424D0 @ =0x08141D55
	str r0, [r6, #0x04]
	b _081424D8
	.byte 0x00, 0x00
_081424B4: .4byte 0x03001038
_081424B8: .4byte 0x0819832C
_081424BC: .4byte 0x08198220
_081424C0: .4byte 0x000002FA
_081424C4: .4byte 0x0000030A
_081424C8: .4byte 0x00007FFF
_081424CC: .4byte sub_813B360
_081424D0: .4byte sub_8141D54
_081424D4:
	ldr r0, _081424E4 @ =0x081424E9
	str r0, [r6, #0x00]
_081424D8:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081424E4: .4byte sub_81424E8
	thumb_func_start sub_81424E8
sub_81424E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r1, #0x0
	mov r8, r2
	adds r5, r4, #0x0
	adds r5, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r7, [r0, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r4, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	adds r0, #0x4C
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	movs r1, #0xEE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	movs r1, #0xF0
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _0814255E
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08142560
_0814255E:
	movs r0, #0xFF
_08142560:
	strb r0, [r4, #0x02]
	ldr r2, _081425A8 @ =0x03001038
	ldr r0, _081425AC @ =0x0819832C
	ldr r1, _081425B0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r6, r1, r0
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x0C]
	subs r2, r1, r0
	movs r1, #0xC4
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r1, [r0, #0x00]
	ldr r0, [r4, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _081425B4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _081425B8
	.byte 0x00, 0x00
_081425A8: .4byte 0x03001038
_081425AC: .4byte 0x0819832C
_081425B0: .4byte 0x08198220
_081425B4:
	movs r1, #0x01
	negs r1, r1
_081425B8:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r6
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r1, #0xBC
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r7
	adds r0, #0x50
	ldrh r3, [r0, #0x00]
	movs r2, #0xC2
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldr r1, [r0, #0x00]
	adds r2, #0x04
	adds r0, r5, r2
	ldr r2, [r0, #0x00]
	mov r12, sp
	movs r0, #0x00
	mov r5, r12
	strb r0, [r5, #0x00]
	adds r0, r4, #0x0
	bl sub_813A284
	ldr r0, _08142608 @ =0x0814260D
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08142608: .4byte sub_814260C
