	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81415D4
sub_81415D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x014
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	adds r6, r4, #0x0
	adds r6, #0x58
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r4
	mov r8, r0
	movs r2, #0xEA
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08141668
	add r2, sp, #0x010
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8142704
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141654
	mov r0, sp
	adds r1, r4, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _0814164C @ =0x00007FFF
	mov r0, sp
	adds r1, r4, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141654
	ldr r1, [sp, #0x010]
	ldr r0, [r1, #0x14]
	ldr r2, [r4, #0x14]
	cmp r0, r2
	beq _08141644
	movs r3, #0x81
	lsls r3, r3, #0x02
	adds r0, r7, r3
	ldr r0, [r0, #0x00]
	cmp r1, r0
	beq _08141654
	ldr r0, [r0, #0x14]
	cmp r0, r2
	bne _08141654
_08141644:
	ldr r0, _08141650 @ =0x081416B1
	str r0, [r5, #0x00]
	b _0814169A
	.byte 0x00, 0x00
_0814164C: .4byte 0x00007FFF
_08141650: .4byte sub_81416B0
_08141654:
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	ldrh r1, [r0, #0x1A]
	movs r2, #0xBE
	lsls r2, r2, #0x01
	adds r0, r6, r2
	strh r1, [r0, #0x00]
	b _0814166C
_08141668:
	subs r0, #0x01
	strh r0, [r1, #0x00]
_0814166C:
	adds r0, r4, #0x0
	bl sub_813B4C4
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0814169A
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x28]
	movs r3, #0xBD
	lsls r3, r3, #0x01
	adds r1, r6, r3
	strh r0, [r1, #0x00]
	ldr r0, _081416A8 @ =0x0813B1E9
	str r0, [r5, #0x00]
	ldr r0, _081416AC @ =0x08141509
	str r0, [r5, #0x0C]
_0814169A:
	add sp, #0x014
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081416A8: .4byte sub_813B1E8
_081416AC: .4byte sub_8141508
	thumb_func_start sub_81416B0
sub_81416B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r4, r0, #0x0
	adds r6, r1, #0x0
	mov r9, r2
	adds r7, r6, #0x0
	adds r7, #0x58
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r8, r0
	adds r0, r4, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _081416E2
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _081416EE
_081416E2:
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r0, r4, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_081416EE:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r3, [r0, #0x28]
	ldr r2, _0814172C @ =0x03001038
	ldr r0, _08141730 @ =0x0819832C
	ldr r1, _08141734 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r3, #0x0C]
	ldr r0, [r6, #0x0C]
	subs r2, r1, r0
	ldr r1, [r3, #0x10]
	ldr r0, [r6, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141738
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _0814173C
_0814172C: .4byte 0x03001038
_08141730: .4byte 0x0819832C
_08141734: .4byte 0x08198220
_08141738:
	movs r1, #0x01
	negs r1, r1
_0814173C:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _081417E8 @ =0x03001038
	ldr r0, _081417EC @ =0x0819832C
	ldr r1, _081417F0 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r6, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x02
	bl _call_via_r2
	cmp r0, r4
	beq _08141772
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
_08141772:
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xBC
	lsls r2, r2, #0x01
	adds r3, r7, r2
	movs r5, #0x00
	strh r0, [r3, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x26
	ldrb r0, [r0, #0x00]
	adds r2, #0x02
	adds r1, r7, r2
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r1, [r4, #0x00]
	ldrh r0, [r3, #0x00]
	add r0, r8
	adds r0, #0x22
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r0, _081417F4 @ =0x081427AD
	mov r2, r9
	str r0, [r2, #0x00]
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_081417E8: .4byte 0x03001038
_081417EC: .4byte 0x0819832C
_081417F0: .4byte 0x08198220
_081417F4: .4byte sub_81427AC
	thumb_func_start sub_81417F8
sub_81417F8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r10, r2
	movs r0, #0x58
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r6, r1
	ldr r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	adds r5, r6, r0
	ldrh r0, [r5, #0x00]
	add r0, r9
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	adds r1, #0x22
	adds r2, r6, r1
	movs r1, #0x00
	strh r0, [r2, #0x00]
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r6, r0
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r1, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	ldr r1, [r4, #0x00]
	ldrh r0, [r5, #0x00]
	add r0, r9
	adds r0, #0x2A
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
	movs r1, #0x85
	lsls r1, r1, #0x02
	adds r2, r6, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r7, #0x0
	add r1, sp, #0x004
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0814188E
	add r0, sp, #0x004
	ldrb r0, [r0, #0x00]
	b _0814189A
_0814188E:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_0814189A:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r7, [r0, #0x28]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r6, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r6, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	movs r5, #0x00
	str r5, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r8
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r3, [r0, #0x3A]
	ldr r1, [r7, #0x0C]
	ldr r2, [r7, #0x10]
	mov r0, sp
	strb r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_813A284
	movs r1, #0xC2
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x0C]
	str r0, [r1, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	movs r1, #0xC6
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r1, #0xC8
	lsls r1, r1, #0x01
	add r1, r8
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08141944 @ =0x08141949
	mov r1, r10
	str r0, [r1, #0x00]
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141944: .4byte sub_8141948
	thumb_func_start sub_8141948
sub_8141948:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	mov r8, r2
	movs r0, #0x58
	adds r0, r0, r5
	mov r9, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	mov r10, r0
	movs r2, #0xEB
	lsls r2, r2, #0x01
	adds r0, r5, r2
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08141A34
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0814198E
	b _08141C1A
_0814198E:
	subs r2, #0x04
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _081419A0
	b _08141C1A
_081419A0:
	subs r2, #0x02
	adds r0, r5, r2
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #0x00]
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08141A00 @ =0x03001038
	ldr r0, _08141A04 @ =0x0819832C
	ldr r1, _08141A08 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141A0C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141A10
	.byte 0x00, 0x00
_08141A00: .4byte 0x03001038
_08141A04: .4byte 0x0819832C
_08141A08: .4byte 0x08198220
_08141A0C:
	movs r1, #0x01
	negs r1, r1
_08141A10:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0xBF
	lsls r2, r2, #0x01
	add r2, r9
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	b _08141C1A
_08141A34:
	movs r2, #0xE9
	lsls r2, r2, #0x01
	adds r1, r5, r2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _08141A48
	b _08141C14
_08141A48:
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r2, #0x22
	movs r3, #0x00
	bl sub_8139BB0
	ldr r2, _08141A80 @ =0x00007FFF
	add r0, sp, #0x004
	adds r1, r5, #0x0
	movs r3, #0x00
	bl sub_80FBDE0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141AAA
	add r4, sp, #0x014
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08141A88
	ldr r0, _08141A84 @ =0x08141C31
	mov r2, r8
	str r0, [r2, #0x00]
	b _08141C1A
	.byte 0x00, 0x00
_08141A80: .4byte 0x00007FFF
_08141A84: .4byte sub_8141C30
_08141A88:
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r6, [r0, #0x28]
	ldr r0, [r6, #0x14]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	beq _08141AC0
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	cmp r6, r0
	beq _08141AB8
	ldr r0, [r0, #0x14]
	cmp r0, r1
	beq _08141AB8
_08141AAA:
	ldr r0, _08141AB4 @ =0x08141C31
	mov r1, r8
	str r0, [r1, #0x00]
	b _08141C1A
	.byte 0x00, 0x00
_08141AB4: .4byte sub_8141C30
_08141AB8:
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r6, [r0, #0x00]
_08141AC0:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	add r0, r9
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x00
	beq _08141B52
	movs r0, #0x85
	lsls r0, r0, #0x02
	adds r2, r5, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, _08141B20 @ =0x03001038
	ldr r0, _08141B24 @ =0x0819832C
	ldr r1, _08141B28 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r4, r1, r0
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141B2C
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r1, r0, #0x0D
	movs r0, #0x07
	ands r1, r0
	b _08141B30
_08141B20: .4byte 0x03001038
_08141B24: .4byte 0x0819832C
_08141B28: .4byte 0x08198220
_08141B2C:
	movs r1, #0x01
	negs r1, r1
_08141B30:
	adds r0, r1, #0x0
	movs r1, #0x02
	bl _call_via_r4
	adds r1, r0, #0x0
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x32]
	b _08141B90
_08141B52:
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
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r4, r5, r1
	ldr r0, [r4, #0x00]
	movs r2, #0x01
	negs r2, r2
	str r3, [sp, #0x000]
	movs r1, #0x03
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sub_801E68C
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	lsls r0, r0, #0x01
	add r0, r10
	ldrh r4, [r0, #0x3A]
_08141B90:
	ldr r1, [r6, #0x0C]
	ldr r0, [r5, #0x0C]
	subs r2, r1, r0
	ldr r1, [r6, #0x10]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	adds r0, r2, #0x0
	orrs r0, r1
	cmp r0, #0x00
	beq _08141BB4
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08141BB6
_08141BB4:
	movs r0, #0xFF
_08141BB6:
	movs r3, #0x00
	strb r0, [r5, #0x02]
	ldr r2, _08141C2C @ =0x00000242
	adds r0, r6, r2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x04
	ldr r1, [r6, #0x0C]
	adds r1, r1, r0
	adds r2, #0x02
	adds r0, r6, r2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x04
	ldr r2, [r6, #0x10]
	adds r2, r2, r0
	mov r0, sp
	strb r3, [r0, #0x00]
	adds r0, r5, #0x0
	adds r3, r4, #0x0
	bl sub_813A284
	movs r3, #0xBF
	lsls r3, r3, #0x01
	add r3, r9
	ldrb r2, [r3, #0x00]
	lsrs r1, r2, #0x04
	movs r0, #0x01
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x04
	movs r0, #0x11
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	movs r0, #0xBC
	lsls r0, r0, #0x01
	add r0, r9
	ldrh r0, [r0, #0x00]
	add r0, r10
	adds r0, #0x2E
	ldrb r0, [r0, #0x00]
	movs r1, #0xBD
	lsls r1, r1, #0x01
	add r1, r9
	strh r0, [r1, #0x00]
_08141C14:
	adds r0, r5, #0x0
	bl sub_813B650
_08141C1A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08141C2C: .4byte 0x00000242
	thumb_func_start sub_8141C30
sub_8141C30:
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
	adds r0, #0x42
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
	beq _08141CA6
	adds r0, r2, #0x0
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _08141CA8
_08141CA6:
	movs r0, #0xFF
_08141CA8:
	strb r0, [r4, #0x02]
	ldr r2, _08141CF0 @ =0x03001038
	ldr r0, _08141CF4 @ =0x0819832C
	ldr r1, _08141CF8 @ =0x08198220
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
	beq _08141CFC
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
	b _08141D00
	.byte 0x00, 0x00
_08141CF0: .4byte 0x03001038
_08141CF4: .4byte 0x0819832C
_08141CF8: .4byte 0x08198220
_08141CFC:
	movs r1, #0x01
	negs r1, r1
_08141D00:
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
	adds r0, #0x46
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
	ldr r0, _08141D50 @ =0x08142761
	mov r1, r8
	str r0, [r1, #0x00]
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141D50: .4byte sub_8142760
	thumb_func_start sub_8141D54
sub_8141D54:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	adds r7, r0, #0x0
	adds r4, r1, #0x0
	str r2, [sp, #0x018]
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r4, r0
	movs r1, #0xD8
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r5, [r0, #0x00]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xE8
	lsls r2, r2, #0x01
	adds r3, r4, r2
	strh r0, [r3, #0x00]
	movs r1, #0xEB
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _08141DEC
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
	movs r1, #0xA5
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	adds r0, r0, r5
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r5
	ldrh r0, [r0, #0x2C]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	adds r0, r0, r5
	adds r0, #0x34
	ldrb r0, [r0, #0x00]
	mov r8, r0
	adds r0, r5, #0x0
	adds r0, #0x36
	ldrb r6, [r0, #0x00]
	adds r0, #0x01
	ldrb r5, [r0, #0x00]
	movs r2, #0x04
	b _08141E42
_08141DEC:
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
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldrh r0, [r3, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x00]
	mov r9, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x30]
	mov r8, r0
	movs r2, #0xA0
	lsls r2, r2, #0x01
	adds r0, r4, r2
	ldrb r6, [r0, #0x00]
	ldr r1, _08141E58 @ =0x00000141
	adds r0, r4, r1
	ldrb r5, [r0, #0x00]
	movs r2, #0x00
_08141E42:
	mov r10, r2
	adds r0, r7, #0x0
	add r1, sp, #0x014
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08141E5C
	add r0, sp, #0x014
	ldrb r0, [r0, #0x00]
	b _08141E68
_08141E58: .4byte 0x00000141
_08141E5C:
	movs r1, #0x82
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1E
	lsrs r0, r0, #0x1F
_08141E68:
	lsls r0, r0, #0x02
	adds r0, r0, r7
	ldr r2, [r0, #0x28]
	mov r0, r9
	str r0, [sp, #0x000]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x004]
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x008]
	movs r0, #0x22
	str r0, [sp, #0x00C]
	movs r0, #0x00
	str r0, [sp, #0x010]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	mov r3, r8
	bl sub_813AA5C
	ldr r2, _08141ED4 @ =0x03001038
	ldr r0, _08141ED8 @ =0x0819832C
	ldr r1, _08141EDC @ =0x08198220
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
	mov r2, r10
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r0, r4, #0x0
	movs r2, #0x00
	bl sub_8047154
	ldr r0, _08141EE0 @ =0x08141EE5
	ldr r1, [sp, #0x018]
	str r0, [r1, #0x00]
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08141ED4: .4byte 0x03001038
_08141ED8: .4byte 0x0819832C
_08141EDC: .4byte 0x08198220
_08141EE0: .4byte sub_8141EE4
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
