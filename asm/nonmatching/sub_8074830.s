	.syntax unified
	.text

	thumb_func_start sub_8074830
sub_8074830:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0807484C
	b _08074BE8
_0807484C:
	adds r0, r6, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	mov r9, r0
	cmp r1, #0x00
	beq _08074864
	cmp r1, #0x01
	beq _0807486A
	adds r0, r6, #0x0
	movs r1, #0x0D
	b _0807486E
_08074864:
	adds r0, r6, #0x0
	movs r1, #0x05
	b _0807486E
_0807486A:
	adds r0, r6, #0x0
	movs r1, #0x09
_0807486E:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08074898 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	bl sub_8199F30
	movs r1, #0x0A
	bl __umodsi3
	cmp r0, #0x03
	bhi _0807489C
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r0, #0x01
	b _080748A2
	.byte 0x00, 0x00
_08074898: .4byte 0x00000119
_0807489C:
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r0, #0x00
_080748A2:
	strh r0, [r1, #0x00]
	adds r7, r1, #0x0
	ldr r0, _08074940 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	mov r10, r0
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x00C]
	mov r3, r9
	movs r1, #0x00
	ldsh r0, [r3, r1]
	cmp r0, #0x00
	beq _080748C6
	cmp r0, #0x02
	beq _080748C6
	b _08074A42
_080748C6:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080748CE
	adds r1, #0xFF
_080748CE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080748D8
	adds r2, #0xFF
_080748D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080748E2
	adds r3, #0xFF
_080748E2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08074944 @ =0x000023A9
	bl sub_80DF024
	movs r2, #0x00
	mov r8, r2
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, #0x00
	beq _0807494C
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08074902
	adds r0, #0xFF
_08074902:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1D
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074910
	adds r0, #0xFF
_08074910:
	asrs r0, r0, #0x08
	subs r3, r0, #0x6
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0807491C
	adds r0, #0xFF
_0807491C:
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
	ldr r1, _08074948 @ =0x00004053
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	b _08074998
	.byte 0x00, 0x00
_08074940: .4byte 0x03000FD8
_08074944: .4byte 0x000023A9
_08074948: .4byte 0x00004053
_0807494C:
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08074956
	adds r0, #0xFF
_08074956:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1D
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074964
	adds r0, #0xFF
_08074964:
	asrs r0, r0, #0x08
	subs r3, r0, #0x6
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08074970
	adds r0, #0xFF
_08074970:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08074AC8 @ =0x00004051
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x04
	mov r8, r2
_08074998:
	ldr r0, _08074ACC @ =0x08074C11
	str r0, [r5, #0x4C]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	movs r3, #0x77
	adds r3, r3, r6
	mov r12, r3
	ldrb r0, [r3, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08074AD0 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08074AD4 @ =0x08075EFD
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0xA0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r3, _08074AD8 @ =0xFFFFE000
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	mov r3, r10
	ldr r0, [r3, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	add r0, r8
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_08074A42:
	mov r1, r9
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bls _08074A52
	b _08074BDA
_08074A52:
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08074A5A
	adds r1, #0xFF
_08074A5A:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08074A64
	adds r2, #0xFF
_08074A64:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08074A6E
	adds r3, #0xFF
_08074A6E:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08074ADC @ =0x000023B6
	bl sub_80DF024
	movs r2, #0x00
	mov r8, r2
	movs r3, #0x00
	ldsh r0, [r7, r3]
	cmp r0, #0x00
	beq _08074AE4
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08074A8E
	adds r2, #0xFF
_08074A8E:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074A98
	adds r0, #0xFF
_08074A98:
	asrs r0, r0, #0x08
	adds r3, r0, #0x3
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08074AA4
	adds r0, #0xFF
_08074AA4:
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
	ldr r1, _08074AE0 @ =0x00004054
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	b _08074B2C
	.byte 0x00, 0x00
_08074AC8: .4byte 0x00004051
_08074ACC: .4byte sub_8074C10
_08074AD0: .4byte sub_8087540
_08074AD4: .4byte sub_8075EFC
_08074AD8: .4byte 0xFFFFE000
_08074ADC: .4byte 0x000023B6
_08074AE0: .4byte 0x00004054
_08074AE4:
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _08074AEE
	adds r2, #0xFF
_08074AEE:
	asrs r2, r2, #0x08
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08074AF8
	adds r0, #0xFF
_08074AF8:
	asrs r0, r0, #0x08
	adds r3, r0, #0x3
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08074B04
	adds r0, #0xFF
_08074B04:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08074BF8 @ =0x00004052
	bl sub_807BF34
	adds r5, r0, #0x0
	adds r0, #0x9C
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x04
	mov r8, r2
_08074B2C:
	ldr r0, _08074BFC @ =0x08074DE1
	str r0, [r5, #0x4C]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	movs r3, #0x77
	adds r3, r3, r6
	mov r12, r3
	ldrb r0, [r3, #0x00]
	adds r3, r5, #0x0
	adds r3, #0x77
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r12
	ldrb r2, [r1, #0x00]
	movs r1, #0x20
	ands r1, r2
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldr r0, _08074C00 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08074C04 @ =0x08075EFD
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0xA0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r6, #0x10]
	ldr r3, _08074C08 @ =0xFFFFD000
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r3, [sp, #0x00C]
	ldr r0, [r3, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	add r0, r8
	str r0, [r1, #0x00]
	subs r1, #0x13
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	movs r2, #0x00
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
_08074BDA:
	ldr r0, _08074C0C @ =0x08075F4D
	str r0, [r6, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_08074BE8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08074BF8: .4byte 0x00004052
_08074BFC: .4byte sub_8074DE0
_08074C00: .4byte sub_8087540
_08074C04: .4byte sub_8075EFC
_08074C08: .4byte 0xFFFFD000
_08074C0C: .4byte sub_8075F4C
