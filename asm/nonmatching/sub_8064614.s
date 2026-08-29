	.syntax unified
	.text

	thumb_func_start sub_8064614
sub_8064614:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08064628
	b _080647F0
_08064628:
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	adds r7, r0, #0x0
	cmp r1, #0x00
	bne _08064642
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0806464E
_08064642:
	adds r0, r6, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0806464E:
	ldr r2, [r6, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08064670
	adds r0, #0xFF
_08064670:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806467E
	adds r0, #0xFF
_0806467E:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806468A
	adds r0, #0xFF
_0806468A:
	asrs r0, r0, #0x08
	adds r0, #0x20
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806477C @ =0x000040F6
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x77
	adds r0, r0, r6
	mov r12, r0
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	adds r3, r5, #0x0
	adds r3, #0x77
	adds r2, r4, #0x0
	ands r2, r0
	lsls r2, r2, #0x06
	ldrb r0, [r3, #0x00]
	movs r1, #0x41
	negs r1, r1
	ands r1, r0
	orrs r1, r2
	strb r1, [r3, #0x00]
	mov r2, r12
	ldrb r0, [r2, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _08064780 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r3, [r7, #0x00]
	cmp r3, #0x00
	bne _0806478C
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _08064728
	adds r0, #0xFF
_08064728:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xAE
	strh r0, [r2, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _08064742
	adds r1, #0xFF
_08064742:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r1, #0xA0
	lsls r1, r1, #0x03
	str r1, [r0, #0x00]
	adds r0, #0x10
	strh r3, [r0, #0x00]
	subs r0, #0x0C
	str r1, [r0, #0x00]
	ldr r0, _08064784 @ =0x08064A11
	str r0, [r5, #0x4C]
	ldr r0, _08064788 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080647EC
	.byte 0x00, 0x00
_0806477C: .4byte 0x000040F6
_08064780: .4byte sub_8087540
_08064784: .4byte sub_8064A10
_08064788: .4byte 0x00000117
_0806478C:
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r5, #0x38]
	ldr r2, _080647F8 @ =0xFFFFC000
	adds r0, r1, r2
	cmp r0, #0x00
	bge _080647A6
	adds r2, #0xFF
	adds r0, r1, r2
_080647A6:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r1, [r5, #0x3C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	cmp r1, #0x00
	bge _080647C0
	adds r1, #0xFF
_080647C0:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x14
	movs r0, #0x90
	lsls r0, r0, #0x03
	str r0, [r1, #0x00]
	ldr r0, _080647FC @ =0x08064ADD
	str r0, [r5, #0x4C]
	ldr r0, _08064800 @ =0x00000117
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_080647EC:
	ldr r0, _08064804 @ =0x08064CB1
	str r0, [r6, #0x4C]
_080647F0:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080647F8: .4byte 0xFFFFC000
_080647FC: .4byte sub_8064ADC
_08064800: .4byte 0x00000117
_08064804: .4byte sub_8064CB0
