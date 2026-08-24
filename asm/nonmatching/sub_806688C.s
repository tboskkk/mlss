	.syntax unified
	.text

	thumb_func_start sub_806688C
sub_806688C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _080668A4
	b _08066ADA
_080668A4:
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080668B8
	adds r1, #0xFF
_080668B8:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080668C2
	adds r2, #0xFF
_080668C2:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080668CC
	adds r3, #0xFF
_080668CC:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08066A04 @ =0x00000CFA
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x10]
	cmp r0, #0x00
	bge _080668E0
	adds r0, #0xFF
_080668E0:
	asrs r0, r0, #0x08
	subs r2, r0, #0x6
	ldr r3, [r6, #0x14]
	cmp r3, #0x00
	bge _080668EC
	adds r3, #0xFF
_080668EC:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x18]
	cmp r0, #0x00
	bge _080668F6
	adds r0, #0xFF
_080668F6:
	asrs r0, r0, #0x08
	adds r0, #0x0C
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	mov r8, r0
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08066A08 @ =0x0000407F
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x77
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r4, #0x0
	adds r3, #0x77
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldrb r0, [r5, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	mov r2, r8
	ands r2, r0
	lsls r2, r2, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	ldr r0, _08066A0C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _08066A10 @ =0x08066C49
	str r0, [r4, #0x58]
	str r2, [r4, #0x5C]
	str r2, [r4, #0x60]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806698E
	adds r0, #0xFF
_0806698E:
	asrs r0, r0, #0x08
	adds r5, r4, #0x0
	adds r5, #0xAE
	strh r0, [r5, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806699E
	adds r0, #0xFF
_0806699E:
	asrs r0, r0, #0x08
	adds r7, r4, #0x0
	adds r7, #0xB0
	strh r0, [r7, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _080669AE
	adds r0, #0xFF
_080669AE:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	ldr r0, _08066A14 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r2, r0, #0x0
	adds r2, #0x08
	ldr r0, [r1, #0x74]
	ldr r3, [r0, #0x30]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _080669DC
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	blt _08066A40
_080669DC:
	ldr r2, [r2, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _08066A1C
	adds r1, r2, #0x0
	adds r1, #0xD8
	movs r3, #0x00
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x08
	ldr r3, _08066A18 @ =0xFFFFD800
	adds r0, r0, r3
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r2, #0x0
	adds r1, #0xDC
	b _08066A60
_08066A04: .4byte 0x00000CFA
_08066A08: .4byte 0x0000407F
_08066A0C: .4byte sub_8087540
_08066A10: .4byte sub_8066C48
_08066A14: .4byte 0x03000FD8
_08066A18: .4byte 0xFFFFD800
_08066A1C:
	adds r1, r3, #0x0
	adds r1, #0xD8
	movs r2, #0x00
	ldsh r0, [r5, r2]
	lsls r0, r0, #0x08
	ldr r2, _08066A3C @ =0xFFFFD800
	adds r0, r0, r2
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	adds r1, r3, #0x0
	adds r1, #0xDC
	movs r3, #0x00
	ldsh r0, [r7, r3]
	b _08066A64
	.byte 0x00, 0x00
_08066A3C: .4byte 0xFFFFD800
_08066A40:
	ldr r2, _08066AE8 @ =0x083B872C
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #0x02
	adds r2, r1, r2
	movs r3, #0x00
	ldsh r0, [r5, r3]
	lsls r0, r0, #0x08
	ldr r2, [r2, #0x00]
	subs r2, r2, r0
	mov r8, r2
	ldr r0, _08066AEC @ =0x083B8734
	adds r1, r1, r0
_08066A60:
	movs r2, #0x00
	ldsh r0, [r7, r2]
_08066A64:
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r7, r1, r0
	ldr r2, _08066AF0 @ =0x03001038
	mov r3, r8
	mov r0, r8
	muls r0, r3
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r1, #0xE6
	lsls r1, r1, #0x01
	bl __divsi3
	adds r5, r0, #0x0
	lsrs r0, r5, #0x1F
	adds r0, r5, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x04
	bl __divsi3
	cmp r0, #0x01
	bne _08066AA0
	movs r0, #0x02
_08066AA0:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0x08
	str r0, [r1, #0x00]
	ldr r0, _08066AF4 @ =0x08066AFD
	str r0, [r4, #0x4C]
	ldr r0, _08066AF8 @ =0x08066C91
	str r0, [r6, #0x4C]
	movs r0, #0x94
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08066ADA:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08066AE8: .4byte 0x083B872C
_08066AEC: .4byte 0x083B8734
_08066AF0: .4byte 0x03001038
_08066AF4: .4byte sub_8066AFC
_08066AF8: .4byte sub_8066C90
