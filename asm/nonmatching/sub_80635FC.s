	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08063616
	b _08063856
_08063616:
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08063622
	b _08063814
_08063622:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806362A
	adds r1, #0xFF
_0806362A:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063634
	adds r0, #0xFF
_08063634:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063640
	adds r3, #0xFF
_08063640:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080637F0 @ =0x00001296
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08063654
	adds r2, #0xFF
_08063654:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _0806365E
	adds r3, #0xFF
_0806365E:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08063668
	adds r0, #0xFF
_08063668:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080637F4 @ =0x000040F8
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
	adds r7, r6, #0x0
	adds r7, #0x77
	ldrb r0, [r7, #0x00]
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
	ldrb r0, [r7, #0x00]
	lsls r0, r0, #0x1A
	lsrs r0, r0, #0x1F
	ands r4, r0
	lsls r4, r4, #0x05
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #0x00]
	ldr r0, _080637F8 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _080637FC @ =0x08063921
	str r0, [r5, #0x60]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, [r6, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x04
	adds r0, r0, r1
	str r0, [r5, #0x18]
	str r0, [r5, #0x40]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	ldr r2, _08063800 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r7, r5, #0x0
	adds r7, #0x88
	ldr r0, [r5, #0x3C]
	str r0, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r5
	mov r9, r0
	ldr r0, [r5, #0x40]
	mov r2, r9
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08063720
	adds r0, #0xFF
_08063720:
	asrs r0, r0, #0x08
	adds r4, r5, #0x0
	adds r4, #0xAE
	strh r0, [r4, #0x00]
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08063730
	adds r0, #0xFF
_08063730:
	asrs r0, r0, #0x08
	adds r3, r5, #0x0
	adds r3, #0xB0
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _08063740
	adds r0, #0xFF
_08063740:
	asrs r0, r0, #0x08
	adds r2, r5, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r4, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r1, r1, r0
	mov r8, r1
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x00]
	subs r7, r1, r0
	ldr r2, _08063804 @ =0x03001038
	mov r1, r8
	mov r0, r8
	muls r0, r1
	adds r1, r7, #0x0
	muls r1, r7
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	ldr r1, _08063808 @ =0x00000133
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xC0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08063792
	movs r0, #0x02
_08063792:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	mov r2, r8
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r1, #0x10
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0806380C @ =0x0806386D
	str r0, [r5, #0x4C]
	movs r0, #0x80
	lsls r0, r0, #0x07
	adds r1, r4, #0x0
	bl __divsi3
	mov r1, r9
	str r0, [r1, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r2, _08063800 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	str r0, [r6, #0x38]
	str r0, [r6, #0x14]
	str r0, [r6, #0x3C]
	ldr r0, _08063810 @ =0x080639C1
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x57
	bl play_sfx_80195B4
	b _08063856
_080637F0: .4byte 0x00001296
_080637F4: .4byte 0x000040F8
_080637F8: .4byte sub_8087540
_080637FC: .4byte sub_8063920
_08063800: .4byte 0xFFFFC000
_08063804: .4byte 0x03001038
_08063808: .4byte 0x00000133
_0806380C: .4byte sub_806386C
_08063810: .4byte sub_80639C0
_08063814:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806381C
	adds r1, #0xFF
_0806381C:
	asrs r1, r1, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08063826
	adds r0, #0xFF
_08063826:
	asrs r0, r0, #0x08
	adds r2, r0, #0x2
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08063832
	adds r3, #0xFF
_08063832:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08063864 @ =0x0000129B
	bl sub_80DF024
	adds r0, r6, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08063868 @ =0x0806398D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x38
	bl play_sfx_80195B4
_08063856:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08063864: .4byte 0x0000129B
_08063868: .4byte sub_806398C
