	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807470C
sub_807470C:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x30]
	cmp r0, #0x00
	bne _08074720
	ldr r0, _0807471C @ =0x080744B5
	b _0807473A
	.byte 0x00, 0x00
_0807471C: .4byte sub_80744B4
_08074720:
	adds r1, r2, #0x0
	adds r1, #0xA8
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x8F
	ble _0807473C
	adds r0, r2, #0x0
	adds r0, #0xAC
	movs r1, #0x96
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r0, _08074740 @ =0x08073E4D
_0807473A:
	str r0, [r2, #0x4C]
_0807473C:
	pop {r0}
	bx r0
_08074740: .4byte sub_8073E4C
	thumb_func_start sub_8074744
sub_8074744:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080747CC
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x00
	beq _0807476C
	cmp r1, #0x02
	bne _08074792
_0807476C:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074774
	adds r1, #0xFF
_08074774:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807477E
	adds r2, #0xFF
_0807477E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074788
	adds r3, #0xFF
_08074788:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074804 @ =0x0000242B
	bl sub_80DF024
_08074792:
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x01
	bhi _080747C4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080747A6
	adds r1, #0xFF
_080747A6:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080747B0
	adds r2, #0xFF
_080747B0:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080747BA
	adds r3, #0xFF
_080747BA:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074808 @ =0x00002434
	bl sub_80DF024
_080747C4:
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x08
	strh r0, [r1, #0x00]
_080747CC:
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08074822
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08074822
	movs r0, #0x6C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0807480C
	cmp r0, #0x01
	beq _08074812
	adds r0, r4, #0x0
	movs r1, #0x0C
	b _08074816
	.byte 0x00, 0x00
_08074804: .4byte 0x0000242B
_08074808: .4byte 0x00002434
_0807480C:
	adds r0, r4, #0x0
	movs r1, #0x04
	b _08074816
_08074812:
	adds r0, r4, #0x0
	movs r1, #0x08
_08074816:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _0807482C @ =0x08074831
	str r0, [r4, #0x4C]
_08074822:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807482C: .4byte sub_8074830
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
	thumb_func_start sub_8074C10
sub_8074C10:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074C2E
	ldr r1, [r4, #0x08]
	movs r3, #0xC0
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
_08074C2E:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074C9E
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074C74
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074C4E
	adds r1, #0xFF
_08074C4E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074C58
	adds r2, #0xFF
_08074C58:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074C62
	adds r3, #0xFF
_08074C62:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074C70 @ =0x000023C3
	bl sub_80DF024
	b _08074C9A
_08074C70: .4byte 0x000023C3
_08074C74:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074C7C
	adds r1, #0xFF
_08074C7C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074C86
	adds r2, #0xFF
_08074C86:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074C90
	adds r3, #0xFF
_08074C90:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074CB4 @ =0x000023CC
	bl sub_80DF024
_08074C9A:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074C9E:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074D0A
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074CBC
	ldr r0, _08074CB8 @ =0x08074D1D
	b _08074D08
_08074CB4: .4byte 0x000023CC
_08074CB8: .4byte sub_8074D1C
_08074CBC:
	ldr r0, _08074D14 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x74]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x30]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074D18 @ =0x08075E9D
_08074D08:
	str r0, [r4, #0x4C]
_08074D0A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074D14: .4byte 0x03000FD8
_08074D18: .4byte sub_8075E9C
	thumb_func_start sub_8074D1C
sub_8074D1C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074D3A
	ldr r1, [r4, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_08074D3A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074DAA
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074D80
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074D5A
	adds r1, #0xFF
_08074D5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074D64
	adds r2, #0xFF
_08074D64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074D6E
	adds r3, #0xFF
_08074D6E:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074D7C @ =0x000023C3
	bl sub_80DF024
	b _08074DA6
_08074D7C: .4byte 0x000023C3
_08074D80:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074D88
	adds r1, #0xFF
_08074D88:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074D92
	adds r2, #0xFF
_08074D92:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074D9C
	adds r3, #0xFF
_08074D9C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074DDC @ =0x000023CC
	bl sub_80DF024
_08074DA6:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074DAA:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08074DBC
	adds r1, #0xFF
_08074DBC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08074DD2
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_08074DD2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074DDC: .4byte 0x000023CC
	thumb_func_start sub_8074DE0
sub_8074DE0:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074DFE
	ldr r1, [r4, #0x08]
	movs r3, #0xC0
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r5, [r1, #0x0C]
	adds r0, r0, r5
	strh r0, [r1, #0x0C]
_08074DFE:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074E6E
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074E44
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074E1E
	adds r1, #0xFF
_08074E1E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074E28
	adds r2, #0xFF
_08074E28:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074E32
	adds r3, #0xFF
_08074E32:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074E40 @ =0x000023C3
	bl sub_80DF024
	b _08074E6A
_08074E40: .4byte 0x000023C3
_08074E44:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074E4C
	adds r1, #0xFF
_08074E4C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074E56
	adds r2, #0xFF
_08074E56:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074E60
	adds r3, #0xFF
_08074E60:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074E84 @ =0x000023CC
	bl sub_80DF024
_08074E6A:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074E6E:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	bne _08074EDA
	adds r0, #0x1C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08074E8C
	ldr r0, _08074E88 @ =0x08074EED
	b _08074ED8
_08074E84: .4byte 0x000023CC
_08074E88: .4byte sub_8074EEC
_08074E8C:
	ldr r0, _08074EE4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x06
	adds r0, r0, r5
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r2, #0x30]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	subs r0, #0x24
	strh r1, [r0, #0x00]
	subs r0, #0x02
	strh r3, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08074EE8 @ =0x08075E3D
_08074ED8:
	str r0, [r4, #0x4C]
_08074EDA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074EE4: .4byte 0x03000FD8
_08074EE8: .4byte sub_8075E3C
	thumb_func_start sub_8074EEC
sub_8074EEC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074F0A
	ldr r1, [r4, #0x08]
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	ldrh r3, [r1, #0x0C]
	adds r0, r0, r3
	strh r0, [r1, #0x0C]
_08074F0A:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	adds r5, r1, #0x0
	cmp r0, #0x00
	bgt _08074F7A
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bne _08074F50
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074F2A
	adds r1, #0xFF
_08074F2A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074F34
	adds r2, #0xFF
_08074F34:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074F3E
	adds r3, #0xFF
_08074F3E:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08074F4C @ =0x000023C3
	bl sub_80DF024
	b _08074F76
_08074F4C: .4byte 0x000023C3
_08074F50:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08074F58
	adds r1, #0xFF
_08074F58:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074F62
	adds r2, #0xFF
_08074F62:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074F6C
	adds r3, #0xFF
_08074F6C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08074FAC @ =0x000023CC
	bl sub_80DF024
_08074F76:
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08074F7A:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _08074F8C
	adds r1, #0xFF
_08074F8C:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08074FA2
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x8C
	bl stop_sfx_80195A8
_08074FA2:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08074FAC: .4byte 0x000023CC
	thumb_func_start sub_8074FB0
sub_8074FB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0x00
	cmp r0, #0x09
	bhi _08074FD6
	movs r6, #0x01
	b _08074FDC
_08074FD6:
	cmp r0, #0x45
	bhi _08074FDC
	movs r6, #0x02
_08074FDC:
	ldr r0, [r5, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	ldr r2, _08075014 @ =0xFFFFD000
	adds r7, r1, r2
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r1, r1, r0
	mov r8, r1
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x03
	ands r1, r0
	adds r0, r1, #0x0
	ldr r4, _08075018 @ =0xFFFFC000
	cmp r1, #0x00
	blt _0807502A
	cmp r1, #0x01
	bgt _0807501C
	movs r1, #0xD8
	lsls r1, r1, #0x06
	movs r0, #0xB8
	lsls r0, r0, #0x07
	b _08075032
_08075014: .4byte 0xFFFFD000
_08075018: .4byte 0xFFFFC000
_0807501C:
	cmp r0, #0x03
	bgt _0807502A
	movs r1, #0xA0
	lsls r1, r1, #0x06
	movs r0, #0xF8
	lsls r0, r0, #0x07
	b _08075032
_0807502A:
	movs r1, #0xC0
	lsls r1, r1, #0x06
	movs r0, #0xD8
	lsls r0, r0, #0x07
_08075032:
	subs r1, r7, r1
	mov r9, r1
	mov r2, r8
	subs r2, r2, r0
	mov r10, r2
	subs r0, r7, r4
	mov r1, r10
	muls r1, r0
	adds r0, r1, #0x0
	mov r1, r9
	bl __divsi3
	mov r2, r8
	adds r3, r2, r0
	cmp r6, #0x00
	beq _08075062
	cmp r6, #0x01
	beq _0807508C
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _080750B4
	adds r2, #0xFF
	b _080750B4
_08075062:
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r4, #0x00
	bge _0807506C
	adds r2, #0xFF
_0807506C:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08075076
	adds r0, #0xFF
_08075076:
	asrs r3, r0, #0x08
	str r6, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08075088 @ =0x00004188
	b _080750CC
	.byte 0x00, 0x00
_08075088: .4byte 0x00004188
_0807508C:
	ldr r1, [r5, #0x28]
	adds r2, r4, #0x0
	cmp r2, #0x00
	bge _08075096
	adds r2, #0xFF
_08075096:
	asrs r2, r2, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _080750A0
	adds r0, #0xFF
_080750A0:
	asrs r3, r0, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080750B0 @ =0x000040B1
	b _080750CC
_080750B0: .4byte 0x000040B1
_080750B4:
	asrs r2, r2, #0x08
	cmp r3, #0x00
	bge _080750BC
	adds r3, #0xFF
_080750BC:
	asrs r3, r3, #0x08
	movs r0, #0x00
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08075198 @ =0x00004055
_080750CC:
	bl sub_807BF34
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	movs r0, #0x77
	adds r0, r0, r5
	mov r12, r0
	ldrb r0, [r0, #0x00]
	adds r3, r4, #0x0
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
	ldr r0, _0807519C @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080751A0 @ =0x080753F5
	str r0, [r4, #0x58]
	ldr r0, _080751A4 @ =0x080751A9
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	mov r2, r9
	str r2, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	str r1, [r0, #0x00]
	adds r0, r7, #0x0
	cmp r0, #0x00
	bge _08075146
	adds r0, #0xFF
_08075146:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xAE
	movs r3, #0x00
	strh r0, [r2, #0x00]
	mov r0, r8
	cmp r0, #0x00
	bge _08075158
	adds r0, #0xFF
_08075158:
	asrs r1, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x9C
	str r6, [r0, #0x00]
	ldr r1, [r4, #0x08]
	adds r0, #0x04
	str r3, [r0, #0x00]
	strh r3, [r1, #0x0C]
	ldr r2, [r4, #0x08]
	adds r1, r4, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	strh r0, [r2, #0x06]
	strh r0, [r2, #0x04]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08075198: .4byte 0x00004055
_0807519C: .4byte sub_8087540
_080751A0: .4byte sub_80753F4
_080751A4: .4byte sub_80751A8
	thumb_func_start sub_80751A8
sub_80751A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0x0
	movs r0, #0x9C
	adds r0, r0, r7
	mov r10, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _080751D0
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r2, _08075238 @ =0xFFFFFA00
	adds r1, r1, r2
	str r1, [r0, #0x00]
	ldr r0, [r7, #0x08]
	strh r1, [r0, #0x0C]
_080751D0:
	ldr r1, [r7, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x02
	mov r9, r3
	add r1, r9
	str r1, [r7, #0x10]
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r2, #0x00
	ldsh r4, [r0, r2]
	lsls r4, r4, #0x08
	movs r3, #0xAE
	adds r3, r3, r7
	mov r8, r3
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	subs r0, r0, r1
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r1, [r6, #0x00]
	muls r0, r1
	adds r5, r7, #0x0
	adds r5, #0x84
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r4, r4, r0
	str r4, [r7, #0x14]
	adds r2, r7, #0x0
	adds r2, #0x8C
	ldr r0, [r7, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	mov r3, r8
	cmp r0, #0x02
	bne _08075240
	ldr r1, [r7, #0x18]
	ldr r0, _0807523C @ =0x000007FF
	cmp r1, r0
	bgt _0807524E
	mov r0, r9
	str r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x04
	b _0807524C
_08075238: .4byte 0xFFFFFA00
_0807523C: .4byte 0x000007FF
_08075240:
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _0807524E
	mov r1, r9
	str r1, [r2, #0x00]
	movs r0, #0x00
_0807524C:
	str r0, [r7, #0x18]
_0807524E:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r7, #0x10]
	cmp r1, r0
	ble _080752A8
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r0, r3
	str r0, [r6, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x06
	adds r0, r0, r1
	str r0, [r2, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r7, #0x0
	bl sub_8085B38
	ldr r0, _080752B8 @ =0x08075DF5
	str r0, [r7, #0x4C]
_080752A8:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080752B8: .4byte sub_8075DF4
	thumb_func_start sub_80752BC
sub_80752BC:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r0, _0807535C @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	ldr r1, [r1, #0x74]
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080752F4
	adds r0, r1, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080752F4
	adds r4, r5, #0x0
	adds r4, #0x8C
	ldr r0, [r4, #0x00]
	subs r0, #0x01
	str r0, [r4, #0x00]
	cmp r0, #0x00
	bgt _080752F4
	adds r0, r5, #0x0
	bl sub_8074FB0
	movs r0, #0x3C
	str r0, [r4, #0x00]
_080752F4:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807532E
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807530C
	adds r1, #0xFF
_0807530C:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08075316
	adds r2, #0xFF
_08075316:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08075320
	adds r3, #0xFF
_08075320:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08075360 @ =0x000023D5
	bl sub_80DF024
	movs r0, #0x10
	strh r0, [r4, #0x00]
_0807532E:
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075352
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08075352
	ldr r0, _08075364 @ =0x00000157
	bl stop_sfx_80195A8
	ldr r0, _08075368 @ =0x08075D99
	str r0, [r5, #0x4C]
_08075352:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807535C: .4byte 0x03000FD8
_08075360: .4byte 0x000023D5
_08075364: .4byte 0x00000157
_08075368: .4byte sub_8075D98
	thumb_func_start sub_807536C
sub_807536C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080753E6
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x0A
	bl sub_8117C50
	adds r5, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r5, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080753B0
	adds r1, #0xFF
_080753B0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080753BA
	adds r2, #0xFF
_080753BA:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r6, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r5, [r0, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080753F0 @ =0x08075D51
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x20
	strh r0, [r1, #0x00]
_080753E6:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080753F0: .4byte sub_8075D50
	thumb_func_start sub_80753F4
sub_80753F4:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0807541A
	cmp r0, #0x01
	beq _08075494
	adds r0, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r5, #0x0
	bl sub_807F47C
	movs r0, #0x00
	b _080754CA
_0807541A:
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	adds r1, #0xF8
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r2, #0x05
	bl sub_8117C50
	adds r6, r0, #0x0
	ldr r0, [r4, #0x28]
	bl sub_8083E78
	adds r7, r0, #0x0
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	subs r3, r6, r0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807544C
	adds r1, #0xFF
_0807544C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075456
	adds r2, #0xFF
_08075456:
	asrs r2, r2, #0x08
	movs r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	adds r3, r7, #0x0
	bl sub_807CFB8
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	strh r6, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075472
	adds r1, #0xFF
_08075472:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807547C
	adds r2, #0xFF
_0807547C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075486
	adds r3, #0xFF
_08075486:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075490 @ =0x00000F93
	b _080754BE
	.byte 0x00, 0x00
_08075490: .4byte 0x00000F93
_08075494:
	ldr r0, [r4, #0x28]
	movs r1, #0xC8
	bl sub_8107F84
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080754A4
	adds r1, #0xFF
_080754A4:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080754AE
	adds r2, #0xFF
_080754AE:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080754B8
	adds r3, #0xFF
_080754B8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080754D4 @ =0x00002396
_080754BE:
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x01
_080754CA:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080754D4: .4byte 0x00002396
	thumb_func_start sub_80754D8
sub_80754D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08075558
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	adds r0, #0xAC
	strh r5, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x58
	bl play_sfx_80195B4
	ldr r0, _08075560 @ =0x08075565
	str r0, [r4, #0x4C]
_08075558:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075560: .4byte sub_8075564
	thumb_func_start sub_8075564
sub_8075564:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080755A4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075582
	adds r1, #0xFF
_08075582:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807558C
	adds r2, #0xFF
_0807558C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075596
	adds r3, #0xFF
_08075596:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080755FC @ =0x0000244B
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_080755A4:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080755F4
	movs r0, #0x58
	bl stop_sfx_80195A8
	ldr r0, _08075600 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080755D2
	adds r1, #0xFF
_080755D2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080755DC
	adds r2, #0xFF
_080755DC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080755E6
	adds r3, #0xFF
_080755E6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075604 @ =0x00002454
	bl sub_80DF024
	ldr r0, _08075608 @ =0x08075CF5
	str r0, [r4, #0x4C]
_080755F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080755FC: .4byte 0x0000244B
_08075600: .4byte 0x0000012B
_08075604: .4byte 0x00002454
_08075608: .4byte sub_8075CF4
	thumb_func_start sub_807560C
sub_807560C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075682
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075682
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807564C
	adds r1, #0xFF
_0807564C:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075656
	adds r2, #0xFF
_08075656:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075660
	adds r3, #0xFF
_08075660:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807568C @ =0x00002470
	bl sub_80DF024
	ldr r1, _08075690 @ =0x0000183E
	adds r0, r4, #0x0
	bl sub_8086858
	ldr r1, _08075694 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _08075698 @ =0x08075C49
	str r0, [r4, #0x58]
	ldr r0, _0807569C @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _080756A0 @ =0x08075C8D
	str r0, [r4, #0x4C]
_08075682:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807568C: .4byte 0x00002470
_08075690: .4byte 0x0000183E
_08075694: .4byte 0x03000E3C
_08075698: .4byte sub_8075C48
_0807569C: .4byte sub_8075C10
_080756A0: .4byte sub_8075C8C
	thumb_func_start sub_80756A4
sub_80756A4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r5, #0x08
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _08075712
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	strh r5, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r3, [r4, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08075718 @ =0x0807571D
	str r0, [r4, #0x4C]
_08075712:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075718: .4byte sub_807571C
	thumb_func_start sub_807571C
sub_807571C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807575C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807573A
	adds r1, #0xFF
_0807573A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075744
	adds r2, #0xFF
_08075744:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807574E
	adds r3, #0xFF
_0807574E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080757B0 @ =0x00002487
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_0807575C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080757A6
	ldr r0, _080757B4 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x09
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075784
	adds r1, #0xFF
_08075784:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807578E
	adds r2, #0xFF
_0807578E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075798
	adds r3, #0xFF
_08075798:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080757B8 @ =0x00002462
	bl sub_80DF024
	ldr r0, _080757BC @ =0x08075C65
	str r0, [r4, #0x4C]
_080757A6:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080757B0: .4byte 0x00002487
_080757B4: .4byte 0x0000012B
_080757B8: .4byte 0x00002462
_080757BC: .4byte sub_8075C64
	thumb_func_start sub_80757C0
sub_80757C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0xAC
	ldrh r0, [r2, #0x00]
	subs r0, #0x01
	strh r0, [r2, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080758A4
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080757F4
	ldr r0, _080757F0 @ =0x08075C8D
	b _080758A2
_080757F0: .4byte sub_8075C8C
_080757F4:
	str r2, [sp, #0x008]
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r5
	mov r9, r1
	movs r2, #0x8C
	adds r2, r2, r5
	mov r10, r2
	adds r7, r5, #0x0
	adds r7, #0x79
	adds r6, r5, #0x0
	adds r6, #0x7C
	str r6, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x7A
	str r0, [sp, #0x000]
	adds r1, r5, #0x0
	adds r1, #0xA8
	ldr r0, _080758B4 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x58
	movs r3, #0x01
_08075826:
	ldr r0, [r1, #0x00]
	adds r0, #0x01
	ands r0, r3
	str r0, [r1, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r0, r2, r0
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0x08
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r6, #0x00
	ldsh r0, [r0, r6]
	movs r6, #0x01
	cmp r0, #0x00
	beq _0807584A
	movs r6, #0x00
_0807584A:
	cmp r6, #0x00
	bne _08075826
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x05
	adds r0, r0, r2
	mov r2, r8
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r2, r9
	str r0, [r2, #0x00]
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	mov r1, r10
	str r0, [r1, #0x00]
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x01
	ldr r2, [sp, #0x004]
	strh r0, [r2, #0x00]
	ldr r0, [sp, #0x000]
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r1, [sp, #0x008]
	strh r0, [r1, #0x00]
	ldr r0, _080758B8 @ =0x08075565
_080758A2:
	str r0, [r5, #0x4C]
_080758A4:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080758B4: .4byte 0x03000FD8
_080758B8: .4byte sub_8075564
	thumb_func_start sub_80758BC
sub_80758BC:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075956
	ldr r0, [r5, #0x18]
	movs r4, #0xC0
	lsls r4, r4, #0x04
	adds r0, r0, r4
	str r0, [r5, #0x18]
	adds r0, r5, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	movs r0, #0xE0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _0807595C @ =0x08075BB9
	str r0, [r5, #0x58]
	ldr r0, _08075960 @ =0x08075B75
	str r0, [r5, #0x5C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	str r4, [r0, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x0A
	strh r0, [r1, #0x00]
	ldr r0, _08075964 @ =0x08075969
	str r0, [r5, #0x4C]
_08075956:
	pop {r4, r5}
	pop {r0}
	bx r0
_0807595C: .4byte sub_8075BB8
_08075960: .4byte sub_8075B74
_08075964: .4byte sub_8075968
	thumb_func_start sub_8075968
sub_8075968:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080759BC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075998
	adds r1, #0xFF
_08075998:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080759A2
	adds r2, #0xFF
_080759A2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080759AC
	adds r3, #0xFF
_080759AC:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _080759E0 @ =0x00002490
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_080759BC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080759D8
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x10
	strh r1, [r0, #0x00]
	ldr r0, _080759E4 @ =0x080759E9
	str r0, [r4, #0x4C]
_080759D8:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080759E0: .4byte 0x00002490
_080759E4: .4byte sub_80759E8
	thumb_func_start sub_80759E8
sub_80759E8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075A4E
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	movs r2, #0xC0
	lsls r2, r2, #0x04
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xA0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r0, #0x0A
	strh r0, [r5, #0x00]
	ldr r0, _08075A54 @ =0x08075A59
	str r0, [r4, #0x4C]
_08075A4E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075A54: .4byte sub_8075A58
	thumb_func_start sub_8075A58
sub_8075A58:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	ldr r2, _08075AD4 @ =0xFFFFF000
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r4, #0x08]
	strh r0, [r1, #0x0C]
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075AAA
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075A86
	adds r1, #0xFF
_08075A86:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075A90
	adds r2, #0xFF
_08075A90:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075A9A
	adds r3, #0xFF
_08075A9A:
	asrs r3, r3, #0x08
	subs r3, #0x0C
	str r4, [sp, #0x000]
	ldr r0, _08075AD8 @ =0x00002499
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075AAA:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	bne _08075ACA
	str r1, [r4, #0x18]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x0C]
	adds r0, r4, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075ADC @ =0x08075BE9
	str r0, [r4, #0x4C]
_08075ACA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075AD4: .4byte 0xFFFFF000
_08075AD8: .4byte 0x00002499
_08075ADC: .4byte sub_8075BE8
	thumb_func_start sub_8075AE0
sub_8075AE0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075B48
	adds r0, r4, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r2, [r4, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _08075B50 @ =0x08075B55
	str r0, [r4, #0x4C]
_08075B48:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075B50: .4byte sub_8075B54
	thumb_func_start sub_8075B54
sub_8075B54:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _08075B6E
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
_08075B6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_8075B74
sub_8075B74:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	bl sub_8086C64
	adds r4, r0, #0x0
	cmp r4, #0x00
	bne _08075BB0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x08]
	strh r4, [r0, #0x0C]
	adds r0, r5, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08075BAC @ =0x08075AE1
	str r0, [r5, #0x4C]
	movs r0, #0x00
	b _08075BB2
	.byte 0x00, 0x00
_08075BAC: .4byte sub_8075AE0
_08075BB0:
	adds r0, r4, #0x0
_08075BB2:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8075BB8
sub_8075BB8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r0, #0x8C
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _08075BE4 @ =0x080759E9
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075BE4: .4byte sub_80759E8
	thumb_func_start sub_8075BE8
sub_8075BE8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075C08
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075C08:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8075C10
sub_8075C10:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8087124
	cmp r0, #0x00
	bne _08075C3C
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r1, #0x1E
	strh r1, [r0, #0x00]
	ldr r0, _08075C44 @ =0x080757C1
	str r0, [r4, #0x4C]
	movs r0, #0x00
_08075C3C:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C44: .4byte sub_80757C0
	thumb_func_start sub_8075C48
sub_8075C48:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _08075C60 @ =0x08075C8D
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075C60: .4byte sub_8075C8C
	thumb_func_start sub_8075C64
sub_8075C64:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075C84
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075C84:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8075C8C
sub_8075C8C:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075CDE
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075CE8 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075CBC
	adds r1, #0xFF
_08075CBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075CC6
	adds r2, #0xFF
_08075CC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075CD0
	adds r3, #0xFF
_08075CD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075CEC @ =0x00002479
	bl sub_80DF024
	ldr r0, _08075CF0 @ =0x080756A5
	str r0, [r4, #0x4C]
_08075CDE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075CE8: .4byte 0x0000012B
_08075CEC: .4byte 0x00002479
_08075CF0: .4byte sub_80756A4
	thumb_func_start sub_8075CF4
sub_8075CF4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075D3C
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r0, #0x04
	strh r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	subs r0, #0x45
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08075D44 @ =0x08087541
	str r0, [r4, #0x68]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _08075D48 @ =0x08075C11
	str r0, [r4, #0x60]
	ldr r0, _08075D4C @ =0x0807560D
	str r0, [r4, #0x4C]
_08075D3C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075D44: .4byte sub_8087540
_08075D48: .4byte sub_8075C10
_08075D4C: .4byte sub_807560C
	thumb_func_start sub_8075D50
sub_8075D50:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r5, _08075D94 @ =0x03000FD8
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075D8E
	ldr r0, [r5, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x00
	movs r2, #0x00
	bl sub_8082D24
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075D8E:
	pop {r4, r5}
	pop {r0}
	bx r0
_08075D94: .4byte 0x03000FD8
	thumb_func_start sub_8075D98
sub_8075D98:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08075DE4
	adds r0, r4, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08075DEC @ =0x0807536D
	str r0, [r4, #0x4C]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075DBC
	adds r1, #0xFF
_08075DBC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075DC6
	adds r2, #0xFF
_08075DC6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075DD0
	adds r3, #0xFF
_08075DD0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075DF0 @ =0x000023DE
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x46
	bl play_sfx_80195B4
_08075DE4:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08075DEC: .4byte sub_807536C
_08075DF0: .4byte 0x000023DE
	thumb_func_start sub_8075DF4
sub_8075DF4:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bne _08075E10
	adds r0, r2, #0x0
	adds r0, #0xA0
	ldr r1, [r0, #0x00]
	ldr r3, _08075E38 @ =0xFFFFFA00
	adds r1, r1, r3
	str r1, [r0, #0x00]
	ldr r0, [r2, #0x08]
	strh r1, [r0, #0x0C]
_08075E10:
	adds r1, r2, #0x0
	adds r1, #0xA4
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	ble _08075E24
	subs r0, #0x08
	str r0, [r1, #0x00]
	ldr r1, [r2, #0x08]
	strh r0, [r1, #0x06]
	strh r0, [r1, #0x04]
_08075E24:
	adds r0, r2, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E34
	adds r0, r2, #0x0
	bl sub_807C298
_08075E34:
	pop {r0}
	bx r0
_08075E38: .4byte 0xFFFFFA00
	thumb_func_start sub_8075E3C
sub_8075E3C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075E7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075E5A
	adds r1, #0xFF
_08075E5A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075E64
	adds r2, #0xFF
_08075E64:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075E6E
	adds r3, #0xFF
_08075E6E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075E94 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075E7C:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075E8A
	ldr r0, _08075E98 @ =0x08074EED
	str r0, [r4, #0x4C]
_08075E8A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075E94: .4byte 0x000023CC
_08075E98: .4byte sub_8074EEC
	thumb_func_start sub_8075E9C
sub_8075E9C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08075EDC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075EBA
	adds r1, #0xFF
_08075EBA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075EC4
	adds r2, #0xFF
_08075EC4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075ECE
	adds r3, #0xFF
_08075ECE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075EF4 @ =0x000023CC
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_08075EDC:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08075EEA
	ldr r0, _08075EF8 @ =0x08074D1D
	str r0, [r4, #0x4C]
_08075EEA:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08075EF4: .4byte 0x000023CC
_08075EF8: .4byte sub_8074D1C
	thumb_func_start sub_8075EFC
sub_8075EFC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	bne _08075F3E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08075F12
	adds r1, #0xFF
_08075F12:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08075F1C
	adds r2, #0xFF
_08075F1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08075F26
	adds r3, #0xFF
_08075F26:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08075F48 @ =0x00002423
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x8C
	bl stop_sfx_80195A8
	movs r0, #0x00
_08075F3E:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08075F48: .4byte 0x00002423
	thumb_func_start sub_8075F4C
sub_8075F4C:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08075F6C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08075F6C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x0D, 0x60, 0x07, 0x08, 0x00, 0xB5
	.byte 0x02, 0x1C, 0x11, 0x1C, 0x9C, 0x31, 0x08, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x03, 0x20, 0x08, 0x60
	.byte 0xD0, 0x6A, 0x80, 0x6A, 0xEC, 0x30, 0x00, 0x23, 0xC1, 0x5E, 0x01, 0x20, 0x40, 0x42, 0x81, 0x42
	.byte 0x03, 0xD1, 0x11, 0x1C, 0xA8, 0x31, 0x00, 0x20, 0x02, 0xE0, 0x11, 0x1C, 0xA8, 0x31, 0x01, 0x20
	.byte 0x08, 0x60, 0x02, 0x48, 0xD0, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x35, 0x60
	.byte 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x8D, 0x60, 0x07, 0x08, 0x02, 0x1C
	.byte 0xAE, 0x32, 0x02, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x60
	.byte 0x07, 0x08, 0x02, 0x1C, 0xAE, 0x32, 0x01, 0x21, 0x11, 0x80, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20
	.byte 0x70, 0x47, 0xA9, 0x60, 0x07, 0x08, 0x02, 0x1C, 0xAE, 0x32, 0x00, 0x21, 0x11, 0x80, 0x01, 0x49
	.byte 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA9, 0x60, 0x07, 0x08
	thumb_func_start sub_807600C
sub_807600C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076030 @ =0x080758BD
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xAF
	bl play_sfx_80195B4
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076030: .4byte sub_80758BC
	thumb_func_start sub_8076034
sub_8076034:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076080 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076056
	adds r1, #0xFF
_08076056:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076060
	adds r2, #0xFF
_08076060:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807606A
	adds r3, #0xFF
_0807606A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076084 @ =0x0000243D
	bl sub_80DF024
	ldr r0, _08076088 @ =0x080754D9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08076080: .4byte 0x0000012B
_08076084: .4byte 0x0000243D
_08076088: .4byte sub_80754D8
	thumb_func_start sub_807608C
sub_807608C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760A4 @ =0x080760F5
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_080760A4: .4byte sub_80760F4
	thumb_func_start sub_80760A8
sub_80760A8:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	cmp r0, #0x00
	bne _080760BC
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
_080760BC:
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080760D2
	cmp r0, #0x01
	beq _080760D8
	adds r0, r4, #0x0
	movs r1, #0x0A
	b _080760DC
_080760D2:
	adds r0, r4, #0x0
	movs r1, #0x02
	b _080760DC
_080760D8:
	adds r0, r4, #0x0
	movs r1, #0x06
_080760DC:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080760F0 @ =0x08076149
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080760F0: .4byte sub_8076148
	thumb_func_start sub_80760F4
sub_80760F4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807613A
	ldr r0, _08076140 @ =0x00000157
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x10
	strh r0, [r1, #0x00]
	subs r1, #0x28
	movs r0, #0x32
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	ldr r0, _08076144 @ =0x080761AD
	str r0, [r4, #0x4C]
	adds r1, #0x2A
	movs r0, #0x20
	strh r0, [r1, #0x00]
_0807613A:
	pop {r4}
	pop {r0}
	bx r0
_08076140: .4byte 0x00000157
_08076144: .4byte sub_80761AC
	thumb_func_start sub_8076148
sub_8076148:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080761A0
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _08076178
	cmp r0, #0x01
	beq _0807617E
	adds r0, r4, #0x0
	movs r1, #0x0B
	b _08076182
_08076178:
	adds r0, r4, #0x0
	movs r1, #0x03
	b _08076182
_0807617E:
	adds r0, r4, #0x0
	movs r1, #0x07
_08076182:
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x28
	movs r0, #0x08
	strh r0, [r1, #0x00]
	ldr r0, _080761A8 @ =0x08074745
	str r0, [r4, #0x4C]
_080761A0:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080761A8: .4byte sub_8074744
	thumb_func_start sub_80761AC
sub_80761AC:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, _080761E0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r2, #0x00
	bl sub_8082D00
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080761DA
	ldr r0, _080761E4 @ =0x080752BD
	str r0, [r4, #0x4C]
_080761DA:
	pop {r4}
	pop {r0}
	bx r0
_080761E0: .4byte 0x03000FD8
_080761E4: .4byte sub_80752BC
	thumb_func_start sub_80761E8
sub_80761E8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076202
	b _0807630E
_08076202:
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r6, #0x00
	ldr r0, _0807631C @ =0x00004047
	mov r9, r0
	mov r8, r6
	adds r7, r5, #0x0
	adds r7, #0x9C
_0807621A:
	ldr r0, _08076320 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r6, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r4, [r5, #0x28]
	ldr r1, [r0, #0x30]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076238
	adds r0, #0xFF
_08076238:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076246
	adds r0, #0xFF
_08076246:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076254
	adds r0, #0xFF
_08076254:
	asrs r0, r0, #0x08
	adds r0, #0x28
	str r0, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r1, r9
	bl sub_807BF34
	lsls r4, r6, #0x02
	add r4, sp
	adds r4, #0x0C
	str r0, [r4, #0x00]
	ldr r1, [r7, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x00]
	ldr r0, [r5, #0x30]
	str r0, [r1, #0x30]
	ldr r2, [r4, #0x00]
	str r2, [r5, #0x30]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r3, #0x41
	negs r3, r3
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	adds r3, #0x20
	adds r1, r3, #0x0
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, _08076324 @ =0x08087541
	str r0, [r1, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r1, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r1, #0x2C]
	ldr r0, [r4, #0x00]
	bl sub_807F4FC
	ldr r1, [r4, #0x00]
	ldr r0, _08076328 @ =0x08077201
	str r0, [r1, #0x58]
	ldr r0, [r7, #0x00]
	adds r1, #0xAC
	strh r0, [r1, #0x00]
	ldr r4, [r4, #0x00]
	mov r0, r8
	str r0, [r4, #0x4C]
	ldr r0, _0807632C @ =0x000024C2
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080762DE
	adds r1, #0xFF
_080762DE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080762E8
	adds r2, #0xFF
_080762E8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _080762F2
	adds r3, #0xFF
_080762F2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	bl sub_80DF024
	adds r6, #0x01
	cmp r6, #0x01
	ble _0807621A
	ldr r0, _08076330 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _08076334 @ =0x080773ED
	str r0, [r5, #0x4C]
_0807630E:
	add sp, #0x014
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0807631C: .4byte 0x00004047
_08076320: .4byte 0x03000FD8
_08076324: .4byte sub_8087540
_08076328: .4byte sub_8077200
_0807632C: .4byte 0x000024C2
_08076330: .4byte 0x00000119
_08076334: .4byte sub_80773EC
	thumb_func_start sub_8076338
sub_8076338:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080763FC
	adds r0, r7, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r7, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076364
	adds r0, #0xFF
_08076364:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076372
	adds r0, #0xFF
_08076372:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076380
	adds r0, #0xFF
_08076380:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076404 @ =0x00008031
	bl sub_807BF34
	adds r6, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r7, #0x30]
	str r0, [r6, #0x30]
	str r6, [r7, #0x30]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076408 @ =0x08087541
	str r0, [r6, #0x68]
	ldr r0, [r7, #0x6C]
	str r0, [r6, #0x6C]
	ldr r0, [r7, #0x2C]
	str r0, [r6, #0x2C]
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	adds r0, #0xAC
	strh r1, [r0, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x9C
	movs r0, #0x3C
	str r0, [r1, #0x00]
	ldr r0, _0807640C @ =0x08077291
	str r0, [r6, #0x4C]
	adds r0, r7, #0x0
	adds r0, #0xA4
	str r5, [r0, #0x00]
	ldr r0, _08076410 @ =0x08077391
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xA8
	movs r0, #0x0A
	str r0, [r1, #0x00]
_080763FC:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076404: .4byte 0x00008031
_08076408: .4byte sub_8087540
_0807640C: .4byte sub_8077290
_08076410: .4byte sub_8077390
	thumb_func_start sub_8076414
sub_8076414:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080764C2
	adds r0, r4, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807643A
	adds r1, #0xFF
_0807643A:
	asrs r1, r1, #0x08
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08076444
	adds r0, #0xFF
_08076444:
	asrs r0, r0, #0x08
	adds r2, r0, #0x5
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076450
	adds r3, #0xFF
_08076450:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080764CC @ =0x00002503
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076468
	adds r0, #0xFF
_08076468:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x48
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807647A
	adds r0, #0xFF
_0807647A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807648A
	adds r0, #0xFF
_0807648A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080764D0 @ =0x00004046
	bl sub_807BF34
	ldr r1, [r4, #0x30]
	str r1, [r0, #0x30]
	str r0, [r4, #0x30]
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r2, #0x01
	orrs r1, r2
	strb r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9D
	bl play_sfx_80195B4
	ldr r0, _080764D4 @ =0x08077351
	str r0, [r4, #0x4C]
_080764C2:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080764CC: .4byte 0x00002503
_080764D0: .4byte 0x00004046
_080764D4: .4byte sub_8077350
	thumb_func_start sub_80764D8
sub_80764D8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x70]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076510
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076510
	adds r5, r4, #0x0
	adds r5, #0xAE
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076510
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076510:
	ldr r0, _0807656C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r1, r0, #0x0
	adds r1, #0x08
	ldr r0, [r1, #0x28]
	adds r0, #0xF6
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	beq _08076544
	ldr r0, [r1, #0x18]
	cmp r0, #0x00
	bgt _08076544
	adds r5, r4, #0x0
	adds r5, #0xB0
	movs r2, #0x00
	ldsh r0, [r5, r2]
	cmp r0, #0x00
	bne _08076544
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r0, #0x01
	strh r0, [r5, #0x00]
_08076544:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076564
	ldr r0, [r4, #0x30]
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076570 @ =0x080772F1
	str r0, [r4, #0x4C]
_08076564:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807656C: .4byte 0x03000FD8
_08076570: .4byte sub_80772F0
	thumb_func_start sub_8076574
sub_8076574:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076588
	b _08076738
_08076588:
	adds r0, r6, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807659C
	adds r1, #0xFF
_0807659C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080765A6
	adds r2, #0xFF
_080765A6:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080765B0
	adds r3, #0xFF
_080765B0:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076678 @ =0x00002539
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765C8
	adds r0, #0xFF
_080765C8:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765DA
	adds r0, #0xFF
_080765DA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x0
	adds r3, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080765EC
	adds r0, #0xFF
_080765EC:
	asrs r0, r0, #0x08
	adds r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0807667C @ =0x00004048
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076680 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08076684 @ =0x08076751
	str r0, [r5, #0x4C]
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r3, [r0, #0x00]
	subs r1, r3, #0x3
	adds r7, r0, #0x0
	cmp r1, #0x01
	bhi _08076688
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	b _080766A6
_08076678: .4byte 0x00002539
_0807667C: .4byte 0x00004048
_08076680: .4byte sub_8087540
_08076684: .4byte sub_8076750
_08076688:
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r1, _08076740 @ =0x083B876C
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r1, _08076744 @ =0x083B878C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
_080766A6:
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r5, #0xA0
	str r4, [r5, #0x00]
	ldr r1, _08076740 @ =0x083B876C
	ldr r0, [r7, #0x00]
	lsls r0, r0, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	adds r2, r0, #0x0
	adds r2, #0x10
	ldr r1, [r6, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080766FC
	adds r0, #0xFF
_080766FC:
	asrs r0, r0, #0x08
	subs r2, r2, r0
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807670C
	adds r0, #0xFF
_0807670C:
	asrs r0, r0, #0x08
	movs r1, #0x08
	negs r1, r1
	subs r1, r1, r0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r1, _08076748 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r5, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _0807674C @ =0x080771D9
	str r0, [r6, #0x4C]
_08076738:
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076740: .4byte 0x083B876C
_08076744: .4byte 0x083B878C
_08076748: .4byte 0xFFFFC000
_0807674C: .4byte sub_80771D8
	thumb_func_start sub_8076750
sub_8076750:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x08]
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r5, [r0, #0x00]
	cmp r5, #0x00
	bne _080767F4
	ldr r0, [r4, #0x08]
	strh r5, [r0, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	ble _080767B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807677E
	adds r1, #0xFF
_0807677E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076788
	adds r2, #0xFF
_08076788:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076792
	adds r3, #0xFF
_08076792:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767B0 @ =0x0000254E
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
	b _080767F4
	.byte 0x00, 0x00
_080767B0: .4byte 0x0000254E
_080767B4:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080767BC
	adds r1, #0xFF
_080767BC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080767C6
	adds r2, #0xFF
_080767C6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080767D0
	adds r3, #0xFF
_080767D0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080767FC @ =0x00002541
	bl sub_80DF024
	str r5, [r4, #0x4C]
	str r5, [r4, #0x18]
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8B
	bl play_sfx_80195B4
_080767F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080767FC: .4byte 0x00002541
	thumb_func_start sub_8076800
sub_8076800:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_8199F30
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x22
	bhi _08076820
	movs r6, #0x00
	b _08076838
_08076820:
	cmp r0, #0x45
	bhi _08076828
	movs r6, #0x01
	b _08076838
_08076828:
	bl sub_8199F30
	movs r1, #0x06
	bl __umodsi3
	adds r0, #0x02
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08076838:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r6, r0
	bne _0807684A
	cmp r6, #0x01
	bhi _0807684A
	adds r0, r6, #0x2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0807684A:
	cmp r6, #0x00
	beq _08076864
	cmp r6, #0x01
	beq _080768B0
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r4, r1, #0x0
	cmp r0, #0x00
	bge _080768FC
	adds r0, #0xFF
	b _080768FC
_08076864:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076872
	adds r0, #0xFF
_08076872:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076884
	adds r0, #0xFF
_08076884:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076892
	adds r0, #0xFF
_08076892:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768AC @ =0x0000404A
	b _08076934
_080768AC: .4byte 0x0000404A
_080768B0:
	ldr r1, [r5, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768BE
	adds r0, #0xFF
_080768BE:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768D0
	adds r0, #0xFF
_080768D0:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080768DE
	adds r0, #0xFF
_080768DE:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r6, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080768F8 @ =0x0000404B
	b _08076934
	.byte 0x00, 0x00
_080768F8: .4byte 0x0000404B
_080768FC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x40
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807690E
	adds r0, #0xFF
_0807690E:
	asrs r3, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807691C
	adds r0, #0xFF
_0807691C:
	asrs r0, r0, #0x08
	adds r0, #0xA0
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080769EC @ =0x0000404C
_08076934:
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, _080769F0 @ =0x083B87AC
	lsls r1, r6, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r2, #0x04
	ldr r0, _080769F4 @ =0x083B87CC
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsls r0, r0, #0x08
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r2, #0x00
	movs r0, #0xB3
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080769F8 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _080769FC @ =0x08077141
	str r0, [r4, #0x58]
	ldr r0, _08076A00 @ =0x08076A09
	str r0, [r4, #0x60]
	ldr r0, [r5, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769C2
	adds r0, #0xFF
_080769C2:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xAE
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080769D6
	adds r0, #0xFF
_080769D6:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB0
	strh r0, [r1, #0x00]
	ldr r0, _08076A04 @ =0x08077189
	str r0, [r4, #0x4C]
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_080769EC: .4byte 0x0000404C
_080769F0: .4byte 0x083B87AC
_080769F4: .4byte 0x083B87CC
_080769F8: .4byte sub_8087540
_080769FC: .4byte sub_8077140
_08076A00: .4byte sub_8076A08
_08076A04: .4byte sub_8077188
	thumb_func_start sub_8076A08
sub_8076A08:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	mov r8, r0
	cmp r0, #0x00
	bne _08076B0E
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076A24
	adds r1, #0xFF
_08076A24:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076A2E
	adds r2, #0xFF
_08076A2E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076A38
	adds r3, #0xFF
_08076A38:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076B1C @ =0x000025D5
	bl sub_80DF024
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xAE
	adds r0, r0, r4
	mov r12, r0
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r3, r4, #0x0
	adds r3, #0xB0
	movs r6, #0x00
	ldsh r0, [r3, r6]
	lsls r0, r0, #0x08
	str r0, [r5, #0x00]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _08076A78
	adds r0, #0xFF
_08076A78:
	asrs r0, r0, #0x08
	mov r2, r12
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	bge _08076A86
	adds r0, #0xFF
_08076A86:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08076A92
	adds r0, #0xFF
_08076A92:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB2
	strh r0, [r2, #0x00]
	mov r6, r12
	movs r2, #0x00
	ldsh r0, [r6, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r6, r1, r0
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r5, r1, r0
	ldr r2, _08076B20 @ =0x03001038
	adds r0, r6, #0x0
	muls r0, r6
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	cmp r0, #0x00
	bge _08076ACA
	ldr r2, _08076B24 @ =0x000003FF
	adds r0, r0, r2
_08076ACA:
	asrs r7, r0, #0x0A
	lsrs r0, r0, #0x1F
	adds r0, r7, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0xE0
	lsls r0, r0, #0x06
	bl __divsi3
	cmp r0, #0x01
	bne _08076AE4
	movs r0, #0x02
_08076AE4:
	adds r1, r4, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r5, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	strh r3, [r0, #0x00]
	ldr r0, _08076B28 @ =0x08076B2D
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x8C
	mov r6, r8
	str r6, [r0, #0x00]
	movs r0, #0x00
_08076B0E:
	add sp, #0x004
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08076B1C: .4byte 0x000025D5
_08076B20: .4byte 0x03001038
_08076B24: .4byte 0x000003FF
_08076B28: .4byte sub_8076B2C
	thumb_func_start sub_8076B2C
sub_8076B2C:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0x8C
	ldr r0, [r1, #0x00]
	ldr r2, _08076C0C @ =0xFFFFF800
	adds r0, r0, r2
	str r0, [r1, #0x00]
	ldr r1, [r6, #0x08]
	strh r0, [r1, #0x0C]
	adds r0, r6, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r0, #0x00
	ldsh r2, [r4, r0]
	ldr r0, [r5, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	movs r2, #0xE0
	lsls r2, r2, #0x06
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	blt _08076C04
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08076BD0
	adds r1, #0xFF
_08076BD0:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08076BDA
	adds r2, #0xFF
_08076BDA:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08076BE4
	adds r3, #0xFF
_08076BE4:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08076C10 @ =0x000025C7
	bl sub_80DF024
	adds r0, r6, #0x0
	bl sub_807C298
	ldr r0, [r6, #0x28]
	adds r0, #0xB0
	movs r1, #0x01
	str r1, [r0, #0x00]
	subs r1, #0x02
	movs r0, #0xCC
	bl play_sfx_80195B4
_08076C04:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076C0C: .4byte 0xFFFFF800
_08076C10: .4byte 0x000025C7
	thumb_func_start sub_8076C14
sub_8076C14:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076C7C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076C2C
	adds r2, #0xFF
_08076C2C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076C36
	adds r3, #0xFF
_08076C36:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076C4C
	movs r0, #0x13
	b _08076C4E
_08076C4C:
	movs r0, #0x12
_08076C4E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076C78 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x10
	str r0, [r1, #0x00]
	b _08076CF4
_08076C78: .4byte sub_80770BC
_08076C7C:
	adds r5, r4, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CBC
	adds r6, r4, #0x0
	adds r6, #0xB2
	movs r0, #0x00
	ldsh r1, [r6, r0]
	adds r0, r4, #0x0
	bl sub_8076800
	strh r0, [r6, #0x00]
	movs r0, #0x32
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08076CB2
	ldr r0, _08076CFC @ =0x08076D05
	str r0, [r4, #0x4C]
_08076CB2:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_08076CBC:
	adds r5, r4, #0x0
	adds r5, #0xA0
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _08076CF4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08076CD2
	adds r1, #0xFF
_08076CD2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08076CDC
	adds r2, #0xFF
_08076CDC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08076CE6
	adds r3, #0xFF
_08076CE6:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08076D00 @ =0x000025A3
	bl sub_80DF024
	movs r0, #0x14
	str r0, [r5, #0x00]
_08076CF4:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08076CFC: .4byte sub_8076D04
_08076D00: .4byte 0x000025A3
	thumb_func_start sub_8076D04
sub_8076D04:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08076D6C
	ldr r5, [r4, #0x2C]
	ldr r2, [r4, #0x10]
	cmp r2, #0x00
	bge _08076D1C
	adds r2, #0xFF
_08076D1C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08076D26
	adds r3, #0xFF
_08076D26:
	asrs r3, r3, #0x08
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r6, #0x00
	ldsh r1, [r0, r6]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08076D3C
	movs r0, #0x13
	b _08076D3E
_08076D3C:
	movs r0, #0x12
_08076D3E:
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_810D738
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, _08076D68 @ =0x080770BD
	str r0, [r4, #0x4C]
	subs r1, #0x06
	movs r0, #0x11
	str r0, [r1, #0x00]
	b _08076D82
_08076D68: .4byte sub_80770BC
_08076D6C:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _08076D82
	adds r0, r4, #0x0
	movs r1, #0x0F
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08076D8C @ =0x08077119
	str r0, [r4, #0x4C]
_08076D82:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08076D8C: .4byte sub_8077118
	thumb_func_start sub_8076D90
sub_8076D90:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r9, r0
	ldr r4, [r0, #0x08]
	ldrb r1, [r4, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08076DAC
	b _08076F7C
_08076DAC:
	mov r0, r9
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DBC
	adds r0, #0xFF
_08076DBC:
	asrs r2, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DCA
	adds r0, #0xFF
_08076DCA:
	asrs r3, r0, #0x08
	adds r0, r1, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08076DD8
	adds r0, #0xFF
_08076DD8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08076E98 @ =0x00004049
	bl sub_807BF34
	adds r5, r0, #0x0
	mov r1, r9
	ldr r0, [r1, #0x30]
	str r0, [r5, #0x30]
	str r5, [r1, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08076E9C @ =0x08087541
	str r0, [r5, #0x68]
	mov r2, r9
	ldr r0, [r2, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r2, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r3, [r5, #0x10]
	mov r10, r3
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x00C]
	mov r1, r9
	ldr r0, [r1, #0x2C]
	ldr r0, [r0, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	adds r4, r5, #0x0
	adds r4, #0x84
	subs r7, r1, r3
	str r7, [r4, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [sp, #0x00C]
	subs r2, r0, r2
	mov r8, r2
	str r2, [r6, #0x00]
	mov r0, r9
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08076EA4
	mov r0, r9
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, _08076EA0 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r4, #0x08
	movs r1, #0xC0
	lsls r1, r1, #0x02
	bl __divsi3
	str r0, [r4, #0x00]
	adds r2, r4, #0x0
	b _08076EF8
_08076E98: .4byte 0x00004049
_08076E9C: .4byte sub_8087540
_08076EA0: .4byte 0x03001038
_08076EA4:
	mov r0, r9
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	lsls r0, r7, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r4, #0x00]
	mov r1, r8
	lsls r0, r1, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r6, #0x00]
	ldr r7, [r4, #0x00]
	mov r8, r0
	ldr r2, _08076F8C @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	mov r3, r8
	mov r1, r8
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	adds r2, r5, #0x0
	adds r2, #0x8C
	cmp r6, #0x00
	bge _08076EEC
	ldr r1, _08076F90 @ =0x000001FF
	adds r0, r6, r1
_08076EEC:
	asrs r0, r0, #0x09
	str r0, [r2, #0x00]
	cmp r0, #0x2F
	bgt _08076EF8
	movs r0, #0x30
	str r0, [r2, #0x00]
_08076EF8:
	mov r0, r10
	cmp r0, #0x00
	bge _08076F00
	adds r0, #0xFF
_08076F00:
	asrs r0, r0, #0x08
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r3, #0x00
	mov r10, r3
	strh r0, [r1, #0x00]
	ldr r1, [sp, #0x00C]
	cmp r1, #0x00
	bge _08076F14
	adds r1, #0xFF
_08076F14:
	asrs r1, r1, #0x08
	adds r0, r5, #0x0
	adds r0, #0xB0
	strh r1, [r0, #0x00]
	adds r0, #0x02
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r1, _08076F94 @ =0x000001B3
	adds r0, r6, #0x0
	str r2, [sp, #0x010]
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r1, r4, #0x1F
	adds r1, r4, r1
	asrs r1, r1, #0x01
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	lsls r0, r0, #0x08
	adds r2, r1, #0x0
	muls r2, r1
	adds r1, r2, #0x0
	bl __divsi3
	cmp r0, #0x01
	bne _08076F4A
	movs r0, #0x02
_08076F4A:
	adds r1, r5, #0x0
	adds r1, #0x9C
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xA0
	str r4, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r3, r8
	str r3, [r0, #0x00]
	adds r0, #0x04
	mov r1, r10
	strh r1, [r0, #0x00]
	ldr r0, _08076F98 @ =0x08076FA1
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x9C
	bl play_sfx_80195B4
	ldr r0, _08076F9C @ =0x08077095
	mov r2, r9
	str r0, [r2, #0x4C]
_08076F7C:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08076F8C: .4byte 0x03001038
_08076F90: .4byte 0x000001FF
_08076F94: .4byte 0x000001B3
_08076F98: .4byte sub_8076FA0
_08076F9C: .4byte sub_8077094
	thumb_func_start sub_8076FA0
sub_8076FA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r1, [r5, #0x10]
	cmp r1, #0x00
	bge _08076FAC
	adds r1, #0xFF
_08076FAC:
	asrs r1, r1, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bge _08076FBE
	adds r0, r5, #0x0
	bl sub_807C298
	b _0807708C
_08076FBE:
	ldr r1, [r5, #0x08]
	movs r2, #0xC0
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x0C]
	adds r0, r0, r2
	strh r0, [r1, #0x0C]
	adds r0, r5, #0x0
	adds r0, #0xA4
	adds r6, r5, #0x0
	adds r6, #0xAC
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r4, r5, #0x0
	adds r4, #0xA0
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r7, r5, #0x0
	adds r7, #0xAE
	movs r2, #0x00
	ldsh r1, [r7, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x10]
	adds r0, r5, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r6, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r4, #0x00]
	bl __divsi3
	adds r3, r5, #0x0
	adds r3, #0xB0
	movs r2, #0x00
	ldsh r1, [r3, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r5, #0x14]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	subs r2, r2, r0
	adds r1, r2, #0x0
	muls r1, r2
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r1, r0
	adds r0, r5, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB2
	movs r2, #0x00
	ldsh r0, [r0, r2]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r5, #0x18]
	ldrh r0, [r6, #0x00]
	adds r0, #0x01
	strh r0, [r6, #0x00]
	movs r0, #0x00
	ldsh r2, [r6, r0]
	ldr r0, [r4, #0x00]
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	cmp r2, r0
	ble _0807708C
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _08077064
	adds r0, #0xFF
_08077064:
	asrs r0, r0, #0x08
	cmp r0, #0x07
	bgt _0807708C
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _08077078
	adds r0, #0xFF
_08077078:
	asrs r0, r0, #0x08
	strh r0, [r7, #0x00]
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077084
	adds r0, #0xFF
_08077084:
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	movs r0, #0x00
	strh r0, [r6, #0x00]
_0807708C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077094
sub_8077094:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080770B4
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080770B4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80770BC
sub_80770BC:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807710C
	ldr r0, [r4, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080770E4
	adds r0, r4, #0x0
	bl sub_8086700
	b _0807710C
_080770E4:
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r2, r0, #0x0
	cmp r1, #0x10
	bne _08077104
	ldr r0, _08077100 @ =0x08076C15
	b _08077106
_08077100: .4byte sub_8076C14
_08077104:
	ldr r0, _08077114 @ =0x08076D05
_08077106:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	str r0, [r2, #0x00]
_0807710C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077114: .4byte sub_8076D04
	thumb_func_start sub_8077118
sub_8077118:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077138
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077138:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077140
sub_8077140:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077154
	adds r1, #0xFF
_08077154:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807715E
	adds r2, #0xFF
_0807715E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077168
	adds r3, #0xFF
_08077168:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077184 @ =0x000025B9
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08077184: .4byte 0x000025B9
	thumb_func_start sub_8077188
sub_8077188:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080771CC
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807719E
	adds r1, #0xFF
_0807719E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080771A8
	adds r2, #0xFF
_080771A8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080771B2
	adds r3, #0xFF
_080771B2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080771D4 @ =0x000025AB
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x76
	bl play_sfx_80195B4
	adds r0, r4, #0x0
	bl sub_807C298
_080771CC:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_080771D4: .4byte 0x000025AB
	thumb_func_start sub_80771D8
sub_80771D8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080771F8
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080771F8:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8077200
sub_8077200:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0807724C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x47
	bl play_sfx_80195B4
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	ldr r0, _08077248 @ =0x08077571
	str r0, [r5, #0x4C]
	adds r1, r6, #0x0
	adds r1, #0xB2
	movs r0, #0x00
	strh r0, [r1, #0x00]
	b _08077282
_08077248: .4byte sub_8077570
_0807724C:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _0807725E
	adds r1, #0xFF
_0807725E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08077268
	adds r2, #0xFF
_08077268:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08077272
	adds r3, #0xFF
_08077272:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _0807728C @ =0x000024CB
	bl sub_80DF024
	adds r0, r5, #0x0
	bl sub_807C298
_08077282:
	movs r0, #0x00
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0807728C: .4byte 0x000024CB
	thumb_func_start sub_8077290
sub_8077290:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _080772EA
	movs r0, #0x3C
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	ldsh r1, [r4, r0]
	cmp r1, #0x00
	bne _080772E0
	ldr r0, [r5, #0x28]
	adds r0, #0xAC
	str r1, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_807C298
	movs r0, #0x85
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	b _080772EA
_080772E0:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xA8
	bl play_sfx_80195B4
_080772EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_80772F0
sub_80772F0:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077340
	adds r0, r2, #0x0
	bl sub_807C298
	adds r0, r4, #0x0
	movs r1, #0x08
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0807731E
	adds r1, #0xFF
_0807731E:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077328
	adds r2, #0xFF
_08077328:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077332
	adds r3, #0xFF
_08077332:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077348 @ =0x00002515
	bl sub_80DF024
	ldr r0, _0807734C @ =0x080775A5
	str r0, [r4, #0x4C]
_08077340:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077348: .4byte 0x00002515
_0807734C: .4byte sub_80775A4
	thumb_func_start sub_8077350
sub_8077350:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r2, [r4, #0x30]
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077386
	adds r0, r2, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xAC
	movs r2, #0x00
	movs r0, #0x14
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xB0
	strh r2, [r0, #0x00]
	subs r0, #0x02
	strh r2, [r0, #0x00]
	ldr r0, _0807738C @ =0x080764D9
	str r0, [r4, #0x4C]
_08077386:
	pop {r4}
	pop {r0}
	bx r0
_0807738C: .4byte sub_80764D8
	thumb_func_start sub_8077390
sub_8077390:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA8
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080773CE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080773AC
	adds r1, #0xFF
_080773AC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080773B6
	adds r2, #0xFF
_080773B6:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080773C0
	adds r3, #0xFF
_080773C0:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080773E4 @ =0x000024E9
	bl sub_80DF024
	movs r0, #0x0A
	str r0, [r5, #0x00]
_080773CE:
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080773DC
	ldr r0, _080773E8 @ =0x08077611
	str r0, [r4, #0x4C]
_080773DC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_080773E4: .4byte 0x000024E9
_080773E8: .4byte sub_8077610
	thumb_func_start sub_80773EC
sub_80773EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077434
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077412
	adds r1, #0xFF
_08077412:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807741C
	adds r2, #0xFF
_0807741C:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077426
	adds r3, #0xFF
_08077426:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807743C @ =0x000025F5
	bl sub_80DF024
	ldr r0, _08077440 @ =0x08076339
	str r0, [r4, #0x4C]
_08077434:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0807743C: .4byte 0x000025F5
_08077440: .4byte sub_8076338
	.byte 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0xA5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64
	.byte 0x01, 0x20, 0x70, 0x47, 0xE5, 0x74, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47
	.byte 0x55, 0x75, 0x07, 0x08, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x39, 0x75, 0x07, 0x08
	.byte 0x00, 0xB5, 0x01, 0x1C, 0x0A, 0x1C, 0x9C, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x05, 0x20
	.byte 0x10, 0x60, 0x0A, 0x1C, 0xA0, 0x32, 0x10, 0x68, 0x00, 0x28, 0x01, 0xD1, 0x04, 0x20, 0x10, 0x60
	.byte 0x02, 0x48, 0xC8, 0x64, 0x01, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x69, 0x76, 0x07, 0x08
	thumb_func_start sub_80774A4
sub_80774A4:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8199F30
	adds r2, r4, #0x0
	adds r2, #0x9C
	movs r1, #0x01
	ands r0, r1
	str r0, [r2, #0x00]
	cmp r0, #0x00
	bne _080774C8
	adds r0, r4, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _080774D4
_080774C8:
	adds r0, r4, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_080774D4:
	ldr r0, _080774E0 @ =0x08076D91
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080774E0: .4byte sub_8076D90
	thumb_func_start sub_80774E4
sub_80774E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080774FC
	adds r1, #0xFF
_080774FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077506
	adds r2, #0xFF
_08077506:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077510
	adds r3, #0xFF
_08077510:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077530 @ =0x00002563
	bl sub_80DF024
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x4B
	bl play_sfx_80195B4
	ldr r0, _08077534 @ =0x080776B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077530: .4byte 0x00002563
_08077534: .4byte sub_80776B4
	thumb_func_start sub_8077538
sub_8077538:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x0A
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077550 @ =0x08076575
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_08077550: .4byte sub_8076574
	thumb_func_start sub_8077554
sub_8077554:
	push {r4, lr}
	adds r4, r0, #0x0
	b _08077560
_0807755A:
	ldr r0, [r4, #0x30]
	bl sub_807C298
_08077560:
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _0807755A
	movs r0, #0x00
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_8077570
sub_8077570:
	push {lr}
	adds r3, r0, #0x0
	adds r2, r3, #0x0
	adds r2, #0x8C
	ldr r0, [r3, #0x18]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x18]
	ldr r0, [r2, #0x00]
	subs r0, #0x80
	str r0, [r2, #0x00]
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bge _0807758E
	adds r0, #0xFF
_0807758E:
	asrs r0, r0, #0x08
	cmp r0, #0x28
	bgt _0807759E
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r3, #0x18]
	movs r0, #0x00
	str r0, [r3, #0x4C]
_0807759E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80775A4
sub_80775A4:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077602
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _080775FE
	ldr r5, _0807760C @ =0x000024E0
_080775CA:
	ldr r3, [r4, #0x30]
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _080775D4
	adds r1, #0xFF
_080775D4:
	asrs r1, r1, #0x08
	ldr r2, [r3, #0x3C]
	cmp r2, #0x00
	bge _080775DE
	adds r2, #0xFF
_080775DE:
	asrs r2, r2, #0x08
	ldr r3, [r3, #0x40]
	cmp r3, #0x00
	bge _080775E8
	adds r3, #0xFF
_080775E8:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_80DF024
	ldr r0, [r4, #0x30]
	bl sub_807C298
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	bne _080775CA
_080775FE:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_08077602:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807760C: .4byte 0x000024E0
	thumb_func_start sub_8077610
sub_8077610:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08077658
	adds r0, r4, #0x0
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077636
	adds r1, #0xFF
_08077636:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077640
	adds r2, #0xFF
_08077640:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807764A
	adds r3, #0xFF
_0807764A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077660 @ =0x000024FB
	bl sub_80DF024
	ldr r0, _08077664 @ =0x08076415
	str r0, [r4, #0x4C]
_08077658:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08077660: .4byte 0x000024FB
_08077664: .4byte sub_8076414
	thumb_func_start sub_8077668
sub_8077668:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077680
	adds r1, #0xFF
_08077680:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807768A
	adds r2, #0xFF
_0807768A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077694
	adds r3, #0xFF
_08077694:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080776AC @ =0x000024BA
	bl sub_80DF024
	ldr r0, _080776B0 @ =0x080761E9
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080776AC: .4byte 0x000024BA
_080776B0: .4byte sub_80761E8
	thumb_func_start sub_80776B4
sub_80776B4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080776FA
	adds r0, r4, #0x0
	movs r1, #0x0E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAC
	movs r3, #0x00
	strh r1, [r0, #0x00]
	movs r0, #0x32
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x14
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA8
	str r3, [r0, #0x00]
	adds r1, #0x12
	movs r0, #0x03
	strh r0, [r1, #0x00]
	ldr r0, _08077700 @ =0x08076C15
	str r0, [r4, #0x4C]
_080776FA:
	pop {r4}
	pop {r0}
	bx r0
_08077700: .4byte sub_8076C14
	thumb_func_start sub_8077704
sub_8077704:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807776A
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807776A
	adds r0, r4, #0x0
	movs r1, #0x0B
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x89
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08077744
	adds r1, #0xFF
_08077744:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807774E
	adds r2, #0xFF
_0807774E:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08077758
	adds r3, #0xFF
_08077758:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08077774 @ =0x00002983
	bl sub_80DF024
	movs r0, #0x3C
	strh r0, [r5, #0x00]
	ldr r0, _08077778 @ =0x0807777D
	str r0, [r4, #0x4C]
_0807776A:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077774: .4byte 0x00002983
_08077778: .4byte sub_807777C
	thumb_func_start sub_807777C
sub_807777C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0x0
	ldr r0, [r7, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0807779E
	adds r0, r7, #0x0
	movs r1, #0x0C
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
_0807779E:
	adds r1, r7, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r12, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778A4
	movs r0, #0x20
	strh r0, [r1, #0x00]
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	adds r5, r2, #0x0
	adds r5, #0x08
	ldr r3, [r0, #0x74]
	adds r6, r3, #0x0
	adds r6, #0x08
	adds r2, #0x7E
	ldrb r4, [r2, #0x00]
	movs r1, #0x7F
	adds r0, r1, #0x0
	ands r0, r4
	strb r0, [r2, #0x00]
	adds r3, #0x7E
	ldrb r0, [r3, #0x00]
	ands r1, r0
	strb r1, [r3, #0x00]
	ldr r1, _080778B4 @ =0x03000ED4
	ldr r0, [r5, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, _080778B8 @ =0x03000ED8
	ldr r0, [r6, #0x4C]
	str r0, [r1, #0x00]
	ldr r1, [r5, #0x08]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, [r6, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r1, _080778BC @ =0x08079789
	str r1, [r5, #0x4C]
	str r1, [r6, #0x4C]
	ldr r3, _080778C0 @ =0x03000F5C
	mov r0, r12
	strb r0, [r3, #0x00]
	ldr r0, _080778C4 @ =0x03000F5D
	mov r2, r12
	strb r2, [r0, #0x00]
	ldr r2, [r5, #0x30]
	movs r5, #0xAE
	adds r5, r5, r7
	mov r8, r5
	cmp r2, #0x00
	beq _08077842
	movs r0, #0x10
	mov r12, r0
	ldr r5, _080778C8 @ =0x03000EDC
	mov r9, r5
	adds r4, r1, #0x0
_08077820:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	mov r5, r12
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r9
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077820
_08077842:
	ldr r2, [r6, #0x30]
	cmp r2, #0x00
	beq _08077870
	movs r6, #0x10
	ldr r5, _080778CC @ =0x03000F1C
	ldr r3, _080778C4 @ =0x03000F5D
	ldr r4, _080778BC @ =0x08079789
_08077850:
	ldr r1, [r2, #0x08]
	ldrb r0, [r1, #0x12]
	orrs r0, r6
	strb r0, [r1, #0x12]
	ldrb r0, [r3, #0x00]
	adds r1, r0, #0x1
	strb r1, [r3, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r1, [r2, #0x4C]
	str r1, [r0, #0x00]
	str r4, [r2, #0x4C]
	ldr r2, [r2, #0x30]
	cmp r2, #0x00
	bne _08077850
_08077870:
	movs r0, #0x01
	movs r1, #0x00
	movs r2, #0x00
	bl sub_80193B4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	ldr r0, _080778B0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	movs r1, #0x01
	strb r1, [r0, #0x00]
	movs r0, #0x0A
	mov r5, r8
	strh r0, [r5, #0x00]
	ldr r0, _080778D0 @ =0x080778D5
	str r0, [r7, #0x4C]
_080778A4:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080778B0: .4byte 0x03000FD8
_080778B4: .4byte 0x03000ED4
_080778B8: .4byte 0x03000ED8
_080778BC: .4byte 0x08079789
_080778C0: .4byte 0x03000F5C
_080778C4: .4byte 0x03000F5D
_080778C8: .4byte 0x03000EDC
_080778CC: .4byte 0x03000F1C
_080778D0: .4byte sub_80778D4
	thumb_func_start sub_80778D4
sub_80778D4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r5, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _080778F6
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_080778F6:
	adds r4, r5, #0x0
	adds r4, #0xAC
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0807791A
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x64
	strh r0, [r4, #0x00]
	ldr r0, _08077920 @ =0x08077925
	str r0, [r5, #0x4C]
_0807791A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08077920: .4byte sub_8077924
	thumb_func_start sub_8077924
sub_8077924:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	mov r9, r0
	mov r4, r9
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077950
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077950:
	mov r1, r9
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r2, #0x00
	mov r8, r2
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _08077966
	b _08077E96
_08077966:
	mov r0, r9
	movs r1, #0x0D
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08077AEC @ =0x0000010B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	mov r3, r9
	ldr r1, [r3, #0x38]
	cmp r1, #0x00
	bge _08077986
	adds r1, #0xFF
_08077986:
	asrs r1, r1, #0x08
	mov r4, r9
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08077992
	adds r2, #0xFF
_08077992:
	asrs r2, r2, #0x08
	mov r5, r9
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _0807799E
	adds r3, #0xFF
_0807799E:
	asrs r3, r3, #0x08
	mov r7, r9
	str r7, [sp, #0x000]
	ldr r0, _08077AF0 @ =0x000029CA
	bl sub_80DF024
	ldr r1, [r7, #0x28]
	ldr r6, _08077AF4 @ =0x00004026
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _080779B6
	adds r0, #0xFF
_080779B6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _080779C6
	adds r0, #0xFF
_080779C6:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _080779D4
	adds r0, #0xFF
_080779D4:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	adds r4, r0, #0x0
	mov r7, r9
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x10]
	cmp r0, #0x00
	bge _08077A00
	adds r0, #0xFF
_08077A00:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077A10
	adds r0, #0xFF
_08077A10:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077A1E
	adds r0, #0xFF
_08077A1E:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r7, r9
	ldr r0, [r7, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	adds r1, r6, #0x0
	bl sub_807BF34
	str r0, [sp, #0x00C]
	str r4, [r7, #0x30]
	ldr r0, [sp, #0x00C]
	str r0, [r4, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r2, [sp, #0x00C]
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [sp, #0x00C]
	adds r0, #0x74
	mov r3, r8
	strb r3, [r0, #0x00]
	ldr r0, _08077AF8 @ =0x08079775
	str r0, [r4, #0x4C]
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x4C]
	ldr r0, _08077AFC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, [r1, #0x70]
	adds r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, [r1, #0x74]
	adds r0, #0x08
	str r0, [sp, #0x014]
	ldr r5, [r7, #0x10]
	ldr r7, _08077B00 @ =0xFFFFE600
	adds r5, r5, r7
	mov r0, r9
	ldr r4, [r0, #0x14]
	movs r1, #0xA0
	lsls r1, r1, #0x03
	adds r4, r4, r1
	ldr r2, [sp, #0x010]
	ldr r2, [r2, #0x28]
	mov r8, r2
	mov r3, r8
	adds r3, #0xDC
	str r3, [sp, #0x01C]
	ldr r0, [r3, #0x00]
	subs r0, r0, r4
	ldr r7, _08077B04 @ =0xFFFFF000
	subs r6, r7, r5
	muls r0, r6
	mov r1, r8
	adds r1, #0xD8
	ldr r1, [r1, #0x00]
	mov r10, r1
	subs r1, r1, r5
	bl __divsi3
	adds r0, r0, r4
	str r0, [sp, #0x018]
	ldr r0, [sp, #0x014]
	ldr r7, [r0, #0x28]
	adds r1, r7, #0x0
	adds r1, #0xDC
	str r1, [sp, #0x020]
	ldr r0, [r1, #0x00]
	subs r0, r0, r4
	muls r0, r6
	adds r6, r7, #0x0
	adds r6, #0xD8
	ldr r1, [r6, #0x00]
	subs r1, r1, r5
	bl __divsi3
	adds r4, r0, r4
	mov r0, r9
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x024]
	cmp r1, #0x01
	beq _08077B48
	cmp r1, #0x01
	bgt _08077B08
	cmp r1, #0x00
	beq _08077B0E
	b _08077BB0
_08077AEC: .4byte 0x0000010B
_08077AF0: .4byte 0x000029CA
_08077AF4: .4byte 0x00004026
_08077AF8: .4byte sub_8079774
_08077AFC: .4byte 0x03000FD8
_08077B00: .4byte 0xFFFFE600
_08077B04: .4byte 0xFFFFF000
_08077B08:
	cmp r1, #0x02
	beq _08077B7C
	b _08077BB0
_08077B0E:
	ldr r1, _08077B38 @ =0x03000EB0
	ldr r2, _08077B3C @ =0xFFFFF000
	str r2, [r1, #0x00]
	ldr r2, _08077B40 @ =0x03000EB8
	ldr r3, [sp, #0x018]
	str r3, [r2, #0x00]
	ldr r3, _08077B44 @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r3, #0x00]
	ldr r0, [r6, #0x00]
	str r0, [r1, #0x04]
	ldr r4, [sp, #0x020]
	ldr r0, [r4, #0x00]
	str r0, [r2, #0x04]
	adds r0, r7, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077B38: .4byte 0x03000EB0
_08077B3C: .4byte 0xFFFFF000
_08077B40: .4byte 0x03000EB8
_08077B44: .4byte 0x03000EC0
_08077B48:
	ldr r3, _08077B6C @ =0x03000EB0
	mov r5, r10
	str r5, [r3, #0x00]
	ldr r2, _08077B70 @ =0x03000EB8
	ldr r7, [sp, #0x01C]
	ldr r0, [r7, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077B74 @ =0x03000EC0
	mov r0, r8
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077B78 @ =0xFFFFF000
	str r0, [r3, #0x04]
	str r4, [r2, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	b _08077BEC
_08077B6C: .4byte 0x03000EB0
_08077B70: .4byte 0x03000EB8
_08077B74: .4byte 0x03000EC0
_08077B78: .4byte 0xFFFFF000
_08077B7C:
	ldr r3, _08077BA0 @ =0x03000EB0
	ldr r1, _08077BA4 @ =0xFFFFF000
	str r1, [r3, #0x00]
	ldr r1, _08077BA8 @ =0x03000EB8
	ldr r2, [sp, #0x018]
	str r2, [r1, #0x00]
	ldr r2, _08077BAC @ =0x03000EC0
	movs r0, #0x80
	lsls r0, r0, #0x04
	str r0, [r2, #0x00]
	ldr r5, _08077BA4 @ =0xFFFFF000
	str r5, [r3, #0x04]
	str r4, [r1, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x05
	str r0, [r2, #0x04]
	b _08077BEE
	.byte 0x00, 0x00
_08077BA0: .4byte 0x03000EB0
_08077BA4: .4byte 0xFFFFF000
_08077BA8: .4byte 0x03000EB8
_08077BAC: .4byte 0x03000EC0
_08077BB0:
	ldr r3, _08077EA8 @ =0x03000EB0
	ldr r7, [sp, #0x010]
	ldr r4, [r7, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x00]
	ldr r2, _08077EAC @ =0x03000EB8
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	ldr r1, _08077EB0 @ =0x03000EC0
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [sp, #0x014]
	ldr r4, [r0, #0x28]
	adds r0, r4, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x04]
	adds r0, r4, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
_08077BEC:
	str r0, [r1, #0x04]
_08077BEE:
	mov r2, r9
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08077BFA
	adds r0, #0xFF
_08077BFA:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	mov r3, r9
	ldr r0, [r3, #0x14]
	cmp r0, #0x00
	bge _08077C0A
	adds r0, #0xFF
_08077C0A:
	asrs r0, r0, #0x08
	adds r3, r0, #0x5
	mov r4, r9
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	bge _08077C18
	adds r0, #0xFF
_08077C18:
	asrs r0, r0, #0x08
	adds r0, #0x57
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	mov r8, r0
	ldr r7, [sp, #0x00C]
	str r0, [r7, #0x30]
	mov r1, r8
	adds r1, #0xAE
	movs r2, #0x00
	movs r0, #0x00
	strh r0, [r1, #0x00]
	mov r3, r8
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	mov r1, r8
	adds r1, #0x84
	mov r3, r8
	ldr r0, [r3, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r3, #0x40]
	str r0, [r1, #0x00]
	mov r0, r8
	adds r0, #0x74
	strb r2, [r0, #0x00]
	mov r2, r8
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r3, #0x2C]
	mov r4, r8
	adds r4, #0x0C
	bl sub_807FA50
	mov r5, r8
	str r0, [r5, #0x04]
	ldr r1, [r5, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077CE4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	mov r3, r8
	ldr r2, [r3, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	mov r7, r8
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077CE4
	movs r4, #0x00
	str r4, [r0, #0x00]
	mov r0, r8
	adds r0, #0x9C
	str r4, [r0, #0x00]
	mov r1, r8
	adds r1, #0xA0
	ldr r2, [sp, #0x024]
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	mov r3, r9
	ldr r1, [r3, #0x28]
	ldr r0, [r3, #0x10]
	cmp r0, #0x00
	bge _08077D4C
	adds r0, #0xFF
_08077D4C:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x0E
	mov r5, r9
	ldr r0, [r5, #0x14]
	cmp r0, #0x00
	bge _08077D5C
	adds r0, #0xFF
_08077D5C:
	asrs r0, r0, #0x08
	adds r3, r0, #0x6
	mov r7, r9
	ldr r0, [r7, #0x18]
	cmp r0, #0x00
	bge _08077D6A
	adds r0, #0xFF
_08077D6A:
	asrs r0, r0, #0x08
	adds r0, #0x5A
	str r0, [sp, #0x000]
	mov r5, r9
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08077EB4 @ =0x00004025
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	str r7, [r0, #0x30]
	adds r0, r7, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	strh r4, [r0, #0x00]
	adds r3, r7, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x84
	ldr r0, [r7, #0x38]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r7, #0x40]
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r2, [r0, #0x00]
	adds r2, r7, #0x0
	adds r2, #0x76
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, [r5, #0x2C]
	str r0, [r7, #0x2C]
	adds r4, r7, #0x0
	adds r4, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r4, [r0, #0x08]
	ldr r1, _08077EB8 @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	movs r5, #0x07
_08077E2E:
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r4, #0x00]
	adds r4, r0, #0x0
	subs r5, #0x04
	cmp r5, #0x00
	bge _08077E2E
	movs r2, #0x00
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0x9C
	movs r0, #0x01
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r3, [sp, #0x024]
	ldr r0, [r3, #0x00]
	str r0, [r1, #0x00]
	ldr r0, _08077EBC @ =0x08078001
	str r0, [r7, #0x4C]
	ldr r0, _08077EC0 @ =0x03000EC8
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC4 @ =0x03000ECC
	strh r2, [r0, #0x02]
	strh r2, [r0, #0x00]
	ldr r0, _08077EC8 @ =0x0807972D
	mov r4, r9
	str r0, [r4, #0x4C]
_08077E96:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077EA8: .4byte 0x03000EB0
_08077EAC: .4byte 0x03000EB8
_08077EB0: .4byte 0x03000EC0
_08077EB4: .4byte 0x00004025
_08077EB8: .4byte 0x03000FD8
_08077EBC: .4byte sub_8078000
_08077EC0: .4byte 0x03000EC8
_08077EC4: .4byte 0x03000ECC
_08077EC8: .4byte sub_807972C
	thumb_func_start sub_8077ECC
sub_8077ECC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0x0
	adds r4, r7, #0x0
	adds r4, #0xAE
	ldrh r0, [r4, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r4, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08077EF4
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x54
	bl play_sfx_80195B4
	movs r0, #0x0A
	strh r0, [r4, #0x00]
_08077EF4:
	ldr r0, [r7, #0x30]
	cmp r0, #0x00
	bne _08077FD4
	movs r0, #0x01
	movs r1, #0xFF
	movs r2, #0x00
	bl sub_80193B4
	ldr r1, _08077FE0 @ =0x03000FD8
	ldr r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	movs r2, #0xEE
	lsls r2, r2, #0x03
	adds r0, r0, r2
	strb r6, [r0, #0x00]
	ldr r1, [r1, #0x00]
	ldr r0, [r1, #0x70]
	adds r3, r0, #0x0
	adds r3, #0x08
	ldr r0, [r1, #0x74]
	adds r5, r0, #0x0
	adds r5, #0x08
	ldr r0, [r3, #0x4C]
	ldr r4, _08077FE4 @ =0x08079789
	cmp r0, r4
	bne _08077F40
	ldr r0, _08077FE8 @ =0x03000ED4
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F40:
	ldr r0, [r5, #0x4C]
	cmp r0, r4
	bne _08077F58
	ldr r0, _08077FEC @ =0x03000ED8
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x4C]
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x12]
_08077F58:
	ldr r1, _08077FF0 @ =0x03000F5C
	strb r6, [r1, #0x00]
	ldr r0, _08077FF4 @ =0x03000F5D
	strb r6, [r0, #0x00]
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	beq _08077F98
	mov r12, r4
	movs r0, #0x11
	negs r0, r0
	mov r8, r0
	ldr r6, _08077FF8 @ =0x03000EDC
	adds r4, r1, #0x0
_08077F72:
	ldr r0, [r3, #0x4C]
	cmp r0, r12
	bne _08077F92
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r6
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077F92:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077F72
_08077F98:
	ldr r3, [r5, #0x30]
	cmp r3, #0x00
	beq _08077FD0
	ldr r6, _08077FE4 @ =0x08079789
	movs r2, #0x11
	negs r2, r2
	mov r8, r2
	ldr r5, _08077FFC @ =0x03000F1C
	ldr r4, _08077FF4 @ =0x03000F5D
_08077FAA:
	ldr r0, [r3, #0x4C]
	cmp r0, r6
	bne _08077FCA
	ldr r2, [r3, #0x08]
	ldrb r1, [r2, #0x12]
	mov r0, r8
	ands r0, r1
	strb r0, [r2, #0x12]
	ldrb r0, [r4, #0x00]
	adds r1, r0, #0x1
	strb r1, [r4, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r5
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x4C]
_08077FCA:
	ldr r3, [r3, #0x30]
	cmp r3, #0x00
	bne _08077FAA
_08077FD0:
	movs r0, #0x00
	str r0, [r7, #0x4C]
_08077FD4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08077FE0: .4byte 0x03000FD8
_08077FE4: .4byte 0x08079789
_08077FE8: .4byte 0x03000ED4
_08077FEC: .4byte 0x03000ED8
_08077FF0: .4byte 0x03000F5C
_08077FF4: .4byte 0x03000F5D
_08077FF8: .4byte 0x03000EDC
_08077FFC: .4byte 0x03000F1C
	thumb_func_start sub_8078000
sub_8078000:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x80
	lsls r2, r2, #0x03
	adds r0, r2, #0x0
	ldrh r2, [r1, #0x00]
	adds r0, r0, r2
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_807830C
	ldr r5, [r6, #0x28]
	movs r0, #0x08
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08078124 @ =0x03000EB0
	adds r7, r6, #0x0
	adds r7, #0x9C
	ldr r0, [r7, #0x00]
	lsls r4, r0, #0x02
	adds r1, r4, r1
	ldr r1, [r1, #0x00]
	cmp r1, #0x00
	bge _0807803C
	adds r1, #0xFF
_0807803C:
	asrs r2, r1, #0x08
	ldr r0, _08078128 @ =0x03000EB8
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0807804A
	adds r0, #0xFF
_0807804A:
	asrs r3, r0, #0x08
	ldr r0, _0807812C @ =0x03000EC0
	adds r0, r4, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078058
	adds r0, #0xFF
_08078058:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r5, #0x0
	ldr r1, _08078130 @ =0x00004025
	bl sub_807BF34
	adds r5, r0, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x74
	movs r0, #0xFF
	strb r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x03
	ldrb r0, [r2, #0x00]
	movs r1, #0x06
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r1, r8
	ldr r0, [r1, #0x2C]
	str r0, [r5, #0x2C]
	ldr r0, [r1, #0x6C]
	str r0, [r5, #0x6C]
	movs r2, #0x77
	adds r2, r2, r6
	mov r12, r2
	ldrb r0, [r2, #0x00]
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
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	adds r0, #0x1A
	ands r0, r1
	strb r0, [r2, #0x12]
	ldr r0, _08078134 @ =0x08078235
	str r0, [r5, #0x4C]
	adds r1, r5, #0x0
	adds r1, #0xAC
	movs r0, #0x1E
	strh r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	subs r1, #0x10
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r1, r6, #0x0
	adds r1, #0xAC
	movs r0, #0x28
	strh r0, [r1, #0x00]
	ldr r0, [r7, #0x00]
	cmp r0, #0x00
	bne _08078138
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	beq _08078142
	cmp r0, #0x02
	bne _08078148
	b _08078142
	.byte 0x00, 0x00
_08078124: .4byte 0x03000EB0
_08078128: .4byte 0x03000EB8
_0807812C: .4byte 0x03000EC0
_08078130: .4byte 0x00004025
_08078134: .4byte sub_8078234
_08078138:
	ldr r0, [r2, #0x00]
	cmp r0, #0x02
	bgt _08078148
	cmp r0, #0x01
	blt _08078148
_08078142:
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r5, #0x10]
_08078148:
	ldr r0, _08078158 @ =0x0807815D
	str r0, [r6, #0x4C]
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078158: .4byte sub_807815C
	thumb_func_start sub_807815C
sub_807815C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0x0
	bl sub_807830C
	adds r7, r6, #0x0
	adds r7, #0xAC
	ldrh r0, [r7, #0x00]
	subs r0, #0x01
	strh r0, [r7, #0x00]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	bgt _0807820A
	ldr r0, _08078218 @ =0x03001038
	mov r9, r0
	ldr r4, _0807821C @ =0x0819832C
	ldr r0, _08078220 @ =0x08198220
	subs r4, r4, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldr r1, _08078224 @ =0x03000EC8
	adds r5, r6, #0x0
	adds r5, #0x9C
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	mov r8, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	ldr r1, _08078228 @ =0x03000ECC
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r0, r1, #0x03
	adds r0, r0, r1
	lsls r0, r0, #0x01
	movs r3, #0x00
	ldsh r1, [r7, r3]
	bl _call_via_r2
	ldr r3, _0807822C @ =0x0300034C
	ldr r2, _08078230 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r6, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	mov r3, r8
	strh r3, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r3, [r2, #0x1E]
	movs r1, #0x00
	ldsh r0, [r7, r1]
	cmp r0, #0x01
	bne _0807820A
	adds r0, r6, #0x0
	bl sub_807C298
_0807820A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078218: .4byte 0x03001038
_0807821C: .4byte 0x0819832C
_08078220: .4byte 0x08198220
_08078224: .4byte 0x03000EC8
_08078228: .4byte 0x03000ECC
_0807822C: .4byte 0x0300034C
_08078230: .4byte 0x00000888
	thumb_func_start sub_8078234
sub_8078234:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	ldr r0, _08078280 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x70]
	adds r3, r1, #0x0
	adds r3, #0x08
	ldr r5, [r0, #0x74]
	adds r2, r5, #0x0
	adds r2, #0x08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0807829E
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08078260
	cmp r0, #0x02
	bne _08078284
_08078260:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r3, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
	.byte 0x00, 0x00
_08078280: .4byte 0x03000FD8
_08078284:
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r3, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r3, #0x0
	b _080782C8
_0807829E:
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	cmp r0, #0x02
	bgt _080782D0
	cmp r0, #0x01
	blt _080782D0
	adds r0, r5, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r1, [r2, #0x18]
	movs r0, #0x80
	lsls r0, r0, #0x05
	cmp r1, r0
	ble _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
_080782C8:
	movs r2, #0xFF
	bl sub_810DD7C
	b _080782EE
_080782D0:
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080782EE
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _080782EE
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_080782EE:
	adds r0, r4, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	subs r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	cmp r1, #0x00
	bgt _08078304
	adds r0, r4, #0x0
	bl sub_807C298
_08078304:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_807830C
sub_807830C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x030
	adds r7, r0, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078324
	adds r0, #0xFF
_08078324:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	adds r0, #0x88
	ldr r1, [r0, #0x00]
	str r0, [sp, #0x02C]
	cmp r1, #0x00
	bge _08078336
	adds r1, #0xFF
_08078336:
	asrs r0, r1, #0x08
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x8C
	ldr r1, [r0, #0x00]
	mov r10, r0
	cmp r1, #0x00
	bge _08078348
	adds r1, #0xFF
_08078348:
	asrs r0, r1, #0x08
	str r0, [sp, #0x008]
	ldr r0, [r7, #0x30]
	ldr r0, _080784FC @ =0x03000EB0
	adds r2, r7, #0x0
	adds r2, #0x9C
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	mov r9, r2
	cmp r0, #0x00
	bge _08078364
	adds r0, #0xFF
_08078364:
	asrs r0, r0, #0x08
	str r0, [sp, #0x00C]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078374
	adds r0, #0xFF
_08078374:
	asrs r0, r0, #0x08
	str r0, [sp, #0x010]
	ldr r0, _08078504 @ =0x03000EC0
	adds r0, r1, r0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _08078384
	adds r0, #0xFF
_08078384:
	asrs r0, r0, #0x08
	str r0, [sp, #0x014]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	add r0, sp, #0x00C
	add r1, sp, #0x010
	add r2, sp, #0x014
	movs r3, #0x00
	bl sub_807FC08
	ldr r4, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	subs r4, r4, r0
	ldr r5, [sp, #0x004]
	ldr r0, [sp, #0x010]
	subs r5, r5, r0
	adds r0, r4, #0x0
	muls r0, r4
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	ldr r2, _08078508 @ =0x03001038
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r1, _0807850C @ =0x0819832C
	ldr r0, _08078510 @ =0x08198220
	subs r1, r1, r0
	mov r8, r1
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	add r2, r8
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r4, r0, #0x0
	ldr r0, _08078508 @ =0x03001038
	ldr r2, [r0, #0x00]
	add r2, r8
	lsls r5, r5, #0x08
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl _call_via_r2
	ldr r2, _08078514 @ =0x03000EC8
	mov r3, r9
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r4, [r1, #0x00]
	ldr r2, _08078518 @ =0x03000ECC
	ldr r1, [r3, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	strh r0, [r1, #0x00]
	ldr r3, _0807851C @ =0x0300034C
	ldr r2, _08078520 @ =0x00000888
	adds r1, r3, r2
	ldrb r2, [r1, #0x00]
	lsls r2, r2, #0x1C
	lsrs r2, r2, #0x1F
	lsls r2, r2, #0x0A
	ldr r1, [r7, #0x04]
	ldrb r1, [r1, #0x0C]
	lsls r1, r1, #0x1B
	lsrs r1, r1, #0x16
	adds r3, #0x80
	adds r1, r1, r3
	adds r2, r2, r1
	ldrh r1, [r2, #0x06]
	strh r4, [r2, #0x06]
	ldrh r1, [r2, #0x0E]
	strh r0, [r2, #0x0E]
	negs r0, r0
	ldrh r1, [r2, #0x16]
	strh r0, [r2, #0x16]
	ldrh r0, [r2, #0x1E]
	strh r4, [r2, #0x1E]
	adds r0, r7, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x01C]
	ldr r3, [sp, #0x02C]
	ldr r3, [r3, #0x00]
	str r3, [sp, #0x020]
	mov r0, r10
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x024]
	ldr r0, _080784FC @ =0x03000EB0
	mov r2, r9
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	ldr r0, _08078500 @ =0x03000EB8
	adds r0, r1, r0
	ldr r2, [r0, #0x00]
	ldr r0, _08078504 @ =0x03000EC0
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r1, [sp, #0x01C]
	subs r3, r3, r1
	str r3, [sp, #0x028]
	ldr r3, [sp, #0x020]
	subs r3, r2, r3
	mov r10, r3
	ldr r1, [sp, #0x024]
	subs r1, r0, r1
	mov r9, r1
	adds r4, r7, #0x0
	adds r4, #0x0C
	cmp r4, #0x00
	beq _080784E8
	mov r7, r8
	mov r8, r9
	mov r6, r10
	ldr r5, [sp, #0x028]
_0807847C:
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r5, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x01C]
	adds r0, r1, r0
	str r0, [r4, #0x04]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	adds r0, r6, #0x0
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x020]
	adds r0, r1, r0
	str r0, [r4, #0x08]
	ldr r3, _08078508 @ =0x03001038
	ldr r2, [r3, #0x00]
	adds r2, r2, r7
	mov r0, r8
	movs r1, #0x1A
	bl _call_via_r2
	ldr r1, [sp, #0x024]
	adds r0, r1, r0
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x04]
	cmp r1, #0x00
	bge _080784C0
	adds r1, #0xFF
_080784C0:
	asrs r1, r1, #0x08
	movs r0, #0x08
	negs r0, r0
	cmp r1, r0
	bge _080784D0
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r4, #0x04]
_080784D0:
	ldr r4, [r4, #0x00]
	mov r2, r9
	lsls r0, r2, #0x01
	add r8, r0
	mov r3, r10
	lsls r0, r3, #0x01
	adds r6, r6, r0
	ldr r1, [sp, #0x028]
	lsls r0, r1, #0x01
	adds r5, r5, r0
	cmp r4, #0x00
	bne _0807847C
_080784E8:
	ldr r0, [sp, #0x018]
	add sp, #0x030
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080784FC: .4byte 0x03000EB0
_08078500: .4byte 0x03000EB8
_08078504: .4byte 0x03000EC0
_08078508: .4byte 0x03001038
_0807850C: .4byte 0x0819832C
_08078510: .4byte 0x08198220
_08078514: .4byte 0x03000EC8
_08078518: .4byte 0x03000ECC
_0807851C: .4byte 0x0300034C
_08078520: .4byte 0x00000888
	thumb_func_start sub_8078524
sub_8078524:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078538
	b _08078652
_08078538:
	adds r0, r6, #0x0
	movs r1, #0x14
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0807854C
	adds r1, #0xFF
_0807854C:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078556
	adds r2, #0xFF
_08078556:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078560
	adds r3, #0xFF
_08078560:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0807865C @ =0x000029DB
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078574
	adds r0, #0xFF
_08078574:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078582
	adds r0, #0xFF
_08078582:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0807858E
	adds r0, #0xFF
_0807858E:
	asrs r0, r0, #0x08
	adds r0, #0x50
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078660 @ =0x0000402B
	bl sub_807BF34
	adds r5, r0, #0x0
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078664 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08078668 @ =0x080796B1
	str r0, [r5, #0x58]
	ldr r0, _0807866C @ =0x08078769
	str r0, [r5, #0x60]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r6, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x08
	str r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r4, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078670 @ =0x080796C5
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0xAE
	strh r4, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x86
	bl play_sfx_80195B4
	ldr r0, _08078674 @ =0x08079705
	str r0, [r6, #0x4C]
_08078652:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0807865C: .4byte 0x000029DB
_08078660: .4byte 0x0000402B
_08078664: .4byte sub_8087540
_08078668: .4byte 0x080796B1
_0807866C: .4byte sub_8078768
_08078670: .4byte sub_80796C4
_08078674: .4byte sub_8079704
	thumb_func_start sub_8078678
sub_8078678:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0x8C
	ldr r0, [r5, #0x00]
	subs r0, #0x01
	str r0, [r5, #0x00]
	cmp r0, #0x00
	bgt _080786AE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078694
	adds r1, #0xFF
_08078694:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807869E
	adds r2, #0xFF
_0807869E:
	asrs r2, r2, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080786FC @ =0x000029E8
	movs r3, #0x00
	bl sub_80DF024
	movs r0, #0x10
	str r0, [r5, #0x00]
_080786AE:
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	adds r0, #0x4C
	str r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x02
	cmp r0, r2
	ble _080786C2
	str r2, [r1, #0x00]
_080786C2:
	ldr r0, [r4, #0x18]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0x06
	cmp r0, r1
	bgt _08078758
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r1, r0, #0x01
	adds r1, r1, r0
	lsls r0, r1, #0x04
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #0x01
	cmp r1, r2
	bgt _08078700
	ldr r0, [r4, #0x28]
	subs r1, r2, r1
	adds r2, #0x24
	adds r0, r0, r2
	b _0807870A
	.byte 0x00, 0x00
_080786FC: .4byte 0x000029E8
_08078700:
	ldr r0, [r4, #0x28]
	movs r1, #0x92
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r1, #0x00
_0807870A:
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x2C]
	adds r0, r4, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	ldr r0, [r4, #0x28]
	movs r2, #0x92
	lsls r2, r2, #0x01
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078736
	adds r1, #0xFF
_08078736:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078740
	adds r2, #0xFF
_08078740:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807874A
	adds r3, #0xFF
_0807874A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078760 @ =0x00002A0C
	bl sub_80DF024
	ldr r0, _08078764 @ =0x080796B9
	str r0, [r4, #0x4C]
_08078758:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_08078760: .4byte 0x00002A0C
_08078764: .4byte sub_80796B8
	thumb_func_start sub_8078768
sub_8078768:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8086D80
	cmp r0, #0x00
	beq _08078778
	b _0807887E
_08078778:
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078848
	movs r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x06
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	adds r5, r0, #0x0
	cmp r1, #0x01
	beq _080787BC
	cmp r1, #0x01
	bgt _080787AC
	cmp r1, #0x00
	beq _080787B2
	b _08078800
_080787AC:
	cmp r1, #0x02
	beq _080787C4
	b _08078800
_080787B2:
	ldr r2, _080787B8 @ =0x0000402C
	b _080787C6
	.byte 0x00, 0x00
_080787B8: .4byte 0x0000402C
_080787BC:
	ldr r2, _080787C0 @ =0x0000402D
	b _080787C6
_080787C0: .4byte 0x0000402D
_080787C4:
	ldr r2, _080787F8 @ =0x0000402E
_080787C6:
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080787D8
	adds r1, #0xFF
_080787D8:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080787E2
	adds r2, #0xFF
_080787E2:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080787EC
	adds r3, #0xFF
_080787EC:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _080787FC @ =0x000029F1
	bl sub_80DF024
	b _08078840
_080787F8: .4byte 0x0000402E
_080787FC: .4byte 0x000029F1
_08078800:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078808
	adds r1, #0xFF
_08078808:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078812
	adds r2, #0xFF
_08078812:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0807881C
	adds r3, #0xFF
_0807881C:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0807883C @ =0x00002A32
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x3B
	bl play_sfx_80195B4
	movs r0, #0x00
	b _0807887E
	.byte 0x00, 0x00
_0807883C: .4byte 0x00002A32
_08078840:
	ldrh r0, [r5, #0x00]
	adds r0, #0x01
	strh r0, [r5, #0x00]
	b _0807886E
_08078848:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078850
	adds r1, #0xFF
_08078850:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0807885A
	adds r2, #0xFF
_0807885A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078864
	adds r3, #0xFF
_08078864:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078888 @ =0x000029F1
	bl sub_80DF024
_0807886E:
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, _0807888C @ =0xFFFFF900
	str r1, [r0, #0x00]
	ldr r0, _08078890 @ =0x08078679
	str r0, [r4, #0x4C]
	movs r0, #0x01
	negs r0, r0
_0807887E:
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078888: .4byte 0x000029F1
_0807888C: .4byte 0xFFFFF900
_08078890: .4byte sub_8078678
	thumb_func_start sub_8078894
sub_8078894:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080788AA
	b _080789A8
_080788AA:
	movs r0, #0x50
	str r0, [r1, #0x00]
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	blt _08078998
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080788CE
	adds r1, #0xFF
_080788CE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _080788D8
	adds r2, #0xFF
_080788D8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _080788E2
	adds r3, #0xFF
_080788E2:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078984 @ =0x00002A61
	bl sub_80DF024
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _080788F6
	adds r0, #0xFF
_080788F6:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078904
	adds r0, #0xFF
_08078904:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078910
	adds r0, #0xFF
_08078910:
	asrs r0, r0, #0x08
	adds r0, #0x30
	str r0, [sp, #0x000]
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078988 @ =0x0000402F
	bl sub_807BF34
	adds r3, r0, #0x0
	ldr r0, [r4, #0x30]
	str r0, [r3, #0x30]
	str r3, [r4, #0x30]
	adds r2, r3, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0807898C @ =0x08087541
	str r0, [r3, #0x68]
	ldr r0, [r4, #0x6C]
	str r0, [r3, #0x6C]
	ldr r0, [r4, #0x2C]
	str r0, [r3, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078990 @ =0x08079655
	str r0, [r3, #0x4C]
	adds r1, r3, #0x0
	adds r1, #0xB2
	ldr r0, _08078994 @ =0x00001111
	strh r0, [r1, #0x00]
	subs r1, #0x06
	movs r0, #0x03
	strh r0, [r1, #0x00]
	b _080789A8
	.byte 0x00, 0x00
_08078984: .4byte 0x00002A61
_08078988: .4byte 0x0000402F
_0807898C: .4byte sub_8087540
_08078990: .4byte sub_8079654
_08078994: .4byte 0x00001111
_08078998:
	adds r0, r4, #0x0
	movs r1, #0x17
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789B0 @ =0x08079689
	str r0, [r4, #0x4C]
_080789A8:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
_080789B0: .4byte sub_8079688
	thumb_func_start sub_80789B4
sub_80789B4:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08078A4A
	adds r1, #0x10
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	ble _080789E8
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080789E4 @ =0x080795D5
	b _08078A3E
_080789E4: .4byte sub_80795D4
_080789E8:
	movs r5, #0x00
	bl sub_8199F30
	adds r2, r0, #0x0
	movs r0, #0x01
	ands r2, r0
	adds r3, r4, #0x0
	adds r3, #0xA8
	b _080789FE
_080789FA:
	cmp r5, #0x02
	bhi _08078A2C
_080789FE:
	adds r0, r5, #0x1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r2, #0x1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0x01
	ands r2, r0
	ldr r0, _08078A50 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	adds r0, r2, #0x6
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	ldr r0, [r0, #0x30]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _080789FA
	cmp r5, #0x02
	bls _08078A2E
_08078A2C:
	movs r2, #0x00
_08078A2E:
	str r2, [r3, #0x00]
	adds r1, r2, #0x3
	adds r0, r4, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08078A54 @ =0x08079569
_08078A3E:
	str r0, [r4, #0x4C]
	ldr r0, _08078A58 @ =0x00000119
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_08078A4A:
	pop {r4, r5}
	pop {r0}
	bx r0
_08078A50: .4byte 0x03000FD8
_08078A54: .4byte sub_8079568
_08078A58: .4byte 0x00000119
	thumb_func_start sub_8078A5C
sub_8078A5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	mov r8, r0
	mov r1, r8
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078B6C
	mov r0, r8
	bl sub_807F4FC
	ldr r0, _08078B78 @ =0x08079485
	mov r1, r8
	str r0, [r1, #0x58]
	ldr r0, _08078B7C @ =0x08078B95
	str r0, [r1, #0x60]
	ldr r1, [r1, #0x28]
	mov r3, r8
	ldr r2, [r3, #0x38]
	cmp r2, #0x00
	bge _08078A92
	adds r2, #0xFF
_08078A92:
	asrs r2, r2, #0x08
	mov r4, r8
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08078A9E
	adds r0, #0xFF
_08078A9E:
	asrs r0, r0, #0x08
	subs r3, r0, #0x2
	mov r4, r8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08078AAC
	adds r0, #0xFF
_08078AAC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	mov r4, r8
	ldr r0, [r4, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078B80 @ =0x00004030
	bl sub_807BF34
	adds r7, r0, #0x0
	mov r0, r8
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	adds r0, r7, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	str r0, [r7, #0x30]
	str r7, [r4, #0x30]
	adds r2, r7, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	mov r0, r8
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r7, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078B84 @ =0x080794FD
	str r0, [r7, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldr r0, _08078B88 @ =0x00002222
	strh r0, [r1, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x0C
	bl sub_807FA50
	str r0, [r7, #0x04]
	ldr r1, [r7, #0x08]
	str r1, [r0, #0x04]
	str r5, [r0, #0x08]
	ldr r1, _08078B8C @ =0x03000FD8
	ldr r6, [r1, #0x00]
	ldrb r5, [r6, #0x07]
	lsls r4, r5, #0x1B
	lsrs r3, r4, #0x1B
	subs r3, #0x01
	movs r1, #0x1F
	ands r3, r1
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0x0
	ands r1, r5
	orrs r1, r3
	strb r1, [r6, #0x07]
	lsrs r4, r4, #0x1B
	ldrb r1, [r0, #0x0C]
	ands r2, r1
	orrs r2, r4
	strb r2, [r0, #0x0C]
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r7, #0x0C]
	adds r5, r0, #0x0
	movs r4, #0x00
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	adds r5, r0, #0x0
	ldr r0, [r7, #0x10]
	ldr r1, [r7, #0x14]
	ldr r2, [r7, #0x18]
	bl sub_807FABC
	str r0, [r5, #0x00]
	str r4, [r0, #0x00]
	ldr r0, _08078B90 @ =0x0807953D
	mov r1, r8
	str r0, [r1, #0x4C]
_08078B6C:
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078B78: .4byte sub_8079484
_08078B7C: .4byte sub_8078B94
_08078B80: .4byte 0x00004030
_08078B84: .4byte sub_80794FC
_08078B88: .4byte 0x00002222
_08078B8C: .4byte 0x03000FD8
_08078B90: .4byte sub_807953C
	thumb_func_start sub_8078B94
sub_8078B94:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	bl sub_8086D80
	adds r2, r0, #0x0
	cmp r2, #0x00
	beq _08078BB0
	b _08078CFE
_08078BB0:
	ldr r0, _08078BCC @ =0x03000F64
	str r4, [r0, #0x00]
	ldr r0, [r4, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08078BD4
	ldr r0, _08078BD0 @ =0x03000F68
	strb r2, [r0, #0x00]
	b _08078BDA
	.byte 0x00, 0x00
_08078BCC: .4byte 0x03000F64
_08078BD0: .4byte 0x03000F68
_08078BD4:
	ldr r1, _08078D10 @ =0x03000F68
	movs r0, #0x01
	strb r0, [r1, #0x00]
_08078BDA:
	ldr r0, [r5, #0x28]
	ldr r4, [r0, #0x38]
	movs r7, #0x84
	adds r7, r7, r5
	mov r9, r7
	movs r0, #0x88
	adds r0, r0, r5
	mov r10, r0
	adds r1, r5, #0x0
	adds r1, #0x8C
	str r1, [sp, #0x00C]
	movs r2, #0x79
	adds r2, r2, r5
	mov r8, r2
	adds r3, r5, #0x0
	adds r3, #0x7C
	str r3, [sp, #0x008]
	adds r7, r5, #0x0
	adds r7, #0x7A
	str r7, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0xAC
	str r0, [sp, #0x010]
	cmp r4, #0x00
	beq _08078C26
	ldr r7, _08078D14 @ =0x00002222
_08078C0E:
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, r7
	bne _08078C20
	adds r0, r4, #0x0
	bl sub_807C298
_08078C20:
	ldr r4, [r4, #0x30]
	cmp r4, #0x00
	bne _08078C0E
_08078C26:
	ldr r1, [r5, #0x38]
	cmp r1, #0x00
	bge _08078C2E
	adds r1, #0xFF
_08078C2E:
	asrs r1, r1, #0x08
	ldr r2, [r5, #0x3C]
	cmp r2, #0x00
	bge _08078C38
	adds r2, #0xFF
_08078C38:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x40]
	cmp r3, #0x00
	bge _08078C42
	adds r3, #0xFF
_08078C42:
	asrs r3, r3, #0x08
	str r5, [sp, #0x000]
	ldr r0, _08078D18 @ =0x00002A6E
	bl sub_80DF024
	bl sub_8199F30
	movs r2, #0x03
	ands r2, r0
	ldr r1, _08078D1C @ =0x03000F60
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x00]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r4, [r0, r7]
	mov r12, r4
	movs r0, #0x00
	adds r2, #0x01
	cmp r0, r2
	bge _08078C90
	adds r4, #0x01
_08078C70:
	adds r1, r0, #0x1
_08078C72:
	ldr r3, [r3, #0x00]
	adds r0, r3, #0x0
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r6, [r0, r7]
	adds r0, #0x0A
	movs r7, #0x00
	ldsh r0, [r0, r7]
	cmp r0, #0x00
	beq _08078C72
	cmp r6, r4
	beq _08078C72
	adds r0, r1, #0x0
	cmp r0, r2
	blt _08078C70
_08078C90:
	ldr r1, _08078D1C @ =0x03000F60
	adds r0, r3, #0x0
	adds r0, #0x08
	str r0, [r1, #0x00]
	mov r0, r12
	subs r2, r6, r0
	lsls r2, r2, #0x18
	ldr r4, [r5, #0x28]
	adds r3, r4, #0x0
	adds r3, #0xD8
	ldr r0, _08078D20 @ =0x083B87EC
	lsrs r2, r2, #0x16
	adds r0, r2, r0
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	mov r1, r9
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	mov r3, r10
	str r0, [r3, #0x00]
	adds r3, r4, #0x0
	adds r3, #0xE0
	ldr r0, _08078D24 @ =0x083B87FC
	adds r2, r2, r0
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	ldr r4, [sp, #0x00C]
	str r0, [r4, #0x00]
	mov r7, r8
	ldrb r0, [r7, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r7, #0x00]
	movs r1, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	ldr r2, [sp, #0x008]
	strh r0, [r2, #0x00]
	ldr r3, [sp, #0x004]
	strh r1, [r3, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	movs r0, #0x08
	ldr r4, [sp, #0x010]
	strh r0, [r4, #0x00]
	ldr r0, _08078D28 @ =0x08078D2D
	str r0, [r5, #0x4C]
	movs r0, #0x00
_08078CFE:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08078D10: .4byte 0x03000F68
_08078D14: .4byte 0x00002222
_08078D18: .4byte 0x00002A6E
_08078D1C: .4byte 0x03000F60
_08078D20: .4byte 0x083B87EC
_08078D24: .4byte 0x083B87FC
_08078D28: .4byte sub_8078D2C
	thumb_func_start sub_8078D2C
sub_8078D2C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08078D6C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078D4A
	adds r1, #0xFF
_08078D4A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078D54
	adds r2, #0xFF
_08078D54:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078D5E
	adds r3, #0xFF
_08078D5E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078DCC @ =0x00002A86
	bl sub_80DF024
	movs r0, #0x08
	strh r0, [r5, #0x00]
_08078D6C:
	ldr r1, [r4, #0x08]
	movs r2, #0x90
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	ldrh r7, [r1, #0x0C]
	adds r0, r0, r7
	strh r0, [r1, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078E1C
	ldr r0, _08078DD0 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r0, _08078DD4 @ =0x03000F68
	ldrb r0, [r0, #0x00]
	adds r0, #0x06
	lsls r0, r0, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r6, r0, #0x0
	adds r6, #0x08
	ldr r0, _08078DD8 @ =0x03000F60
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _08078DE8
	adds r5, r1, #0x0
	ldr r2, [r5, #0x10]
	cmp r2, #0x00
	bge _08078DAC
	adds r2, #0xFF
_08078DAC:
	asrs r2, r2, #0x08
	ldr r3, [r5, #0x18]
	cmp r3, #0x00
	bge _08078DB6
	adds r3, #0xFF
_08078DB6:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x28]
	adds r0, #0xEC
	movs r7, #0x00
	ldsh r1, [r0, r7]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	beq _08078DDC
	movs r0, #0x13
	b _08078DDE
_08078DCC: .4byte 0x00002A86
_08078DD0: .4byte 0x03000FD8
_08078DD4: .4byte 0x03000F68
_08078DD8: .4byte 0x03000F60
_08078DDC:
	movs r0, #0x12
_08078DDE:
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_810D738
_08078DE8:
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xCC
	bl play_sfx_80195B4
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078DFA
	adds r1, #0xFF
_08078DFA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078E04
	adds r2, #0xFF
_08078E04:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078E0E
	adds r3, #0xFF
_08078E0E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08078E24 @ =0x00002A76
	bl sub_80DF024
	ldr r0, _08078E28 @ =0x08079479
	str r0, [r4, #0x4C]
_08078E1C:
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08078E24: .4byte 0x00002A76
_08078E28: .4byte sub_8079478
	thumb_func_start sub_8078E2C
sub_8078E2C:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08078E40
	b _08078F76
_08078E40:
	adds r0, r6, #0x0
	movs r1, #0x10
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x8A
	lsls r0, r0, #0x01
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _08078E60
	adds r1, #0xFF
_08078E60:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _08078E6A
	adds r2, #0xFF
_08078E6A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _08078E74
	adds r3, #0xFF
_08078E74:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _08078F20 @ =0x00002A94
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _08078E88
	adds r0, #0xFF
_08078E88:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _08078E96
	adds r0, #0xFF
_08078E96:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _08078EA2
	adds r0, #0xFF
_08078EA2:
	asrs r0, r0, #0x08
	adds r0, #0x40
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r4, #0x01
	str r4, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _08078F24 @ =0x00004028
	bl sub_807BF34
	adds r5, r0, #0x0
	ldr r0, [r6, #0x30]
	str r0, [r5, #0x30]
	str r5, [r6, #0x30]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r0, _08078F28 @ =0x08078F85
	str r0, [r5, #0x4C]
	subs r2, #0x02
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08078F2C @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	bl sub_8199F30
	ands r0, r4
	ldr r1, _08078F30 @ =0x03000F6C
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08078F34
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _08078F44
_08078F20: .4byte 0x00002A94
_08078F24: .4byte 0x00004028
_08078F28: .4byte sub_8078F84
_08078F2C: .4byte sub_8087540
_08078F30: .4byte 0x03000F6C
_08078F34:
	adds r1, r5, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_08078F44:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xA0
	lsls r0, r0, #0x06
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _08078F80 @ =0x08079451
	str r0, [r6, #0x4C]
_08078F76:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08078F80: .4byte sub_8079450
	thumb_func_start sub_8078F84
sub_8078F84:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _08078FFE
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08078F9A
	adds r1, #0xFF
_08078F9A:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08078FA4
	adds r2, #0xFF
_08078FA4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08078FAE
	adds r3, #0xFF
_08078FAE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08079008 @ =0x00002A9D
	bl sub_80DF024
	ldr r2, _0807900C @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r1, [r2, #0x00]
	movs r0, #0x02
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	subs r2, #0x01
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08079010 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r4, #0x18]
	movs r0, #0x00
	str r0, [r4, #0x4C]
	ldr r1, _08079014 @ =0x03000ED0
	movs r0, #0x01
	strb r0, [r1, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x55
	bl play_sfx_80195B4
_08078FFE:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079008: .4byte 0x00002A9D
_0807900C: .4byte 0x00004029
_08079010: .4byte 0x03000F6C
_08079014: .4byte 0x03000ED0
	thumb_func_start sub_8079018
sub_8079018:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _080790C4
	ldr r2, _08079068 @ =0x00004029
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0xA0
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	ble _080790C0
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r1, [r0, #0x00]
	adds r1, #0x01
	movs r2, #0x01
	ands r1, r2
	str r1, [r0, #0x00]
	cmp r1, #0x00
	bne _0807906C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0807907C
	.byte 0x00, 0x00
_08079068: .4byte 0x00004029
_0807906C:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_0807907C:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _080790BC @ =0x080793F5
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD7
	bl play_sfx_80195B4
	b _080790C4
	.byte 0x00, 0x00
_080790BC: .4byte sub_80793F4
_080790C0:
	movs r0, #0x00
	str r0, [r4, #0x4C]
_080790C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_80790CC
sub_80790CC:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, #0xA8
	ldr r2, [r0, #0x00]
	ldr r0, _080791BC @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080790E2
	movs r0, #0x05
	subs r2, r0, r2
_080790E2:
	ldr r0, _080791C0 @ =0xFFFFFB34
	ldr r1, _080791C4 @ =0x00000B33
	muls r0, r2
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r6, r0, r3
	adds r0, r2, #0x0
	muls r0, r1
	movs r1, #0xA0
	lsls r1, r1, #0x07
	adds r7, r0, r1
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x38]
	cmp r0, #0x00
	bge _08079102
	adds r0, #0xFF
_08079102:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x10
	ldr r0, [r5, #0x3C]
	cmp r0, #0x00
	bge _08079110
	adds r0, #0xFF
_08079110:
	asrs r0, r0, #0x08
	adds r3, r0, #0x4
	ldr r0, [r5, #0x40]
	cmp r0, #0x00
	bge _0807911C
	adds r0, #0xFF
_0807911C:
	asrs r0, r0, #0x08
	adds r0, #0x38
	str r0, [sp, #0x000]
	ldr r0, [r5, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _080791C8 @ =0x00004059
	bl sub_807BF34
	adds r4, r0, #0x0
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x30]
	str r4, [r5, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r3, #0x20
	orrs r0, r3
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r2, #0x00
	strb r1, [r0, #0x00]
	ldr r0, _080791CC @ =0x080793C5
	str r0, [r4, #0x4C]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r6, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r1, #0x03
	movs r0, #0x80
	lsls r0, r0, #0x03
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _080791D0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r5, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r5, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	bl sub_807F4FC
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080791BC: .4byte 0x03000F6C
_080791C0: .4byte 0xFFFFFB34
_080791C4: .4byte 0x00000B33
_080791C8: .4byte 0x00004059
_080791CC: .4byte sub_80793C4
_080791D0: .4byte sub_8087540
	thumb_func_start sub_80791D4
sub_80791D4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079278
	adds r0, r5, #0x0
	movs r1, #0x11
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _08079208 @ =0x08079395
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x9C
	movs r6, #0x00
	str r6, [r0, #0x00]
	ldr r0, [r5, #0x30]
	cmp r0, #0x00
	bne _0807920C
	str r0, [r5, #0x4C]
	b _08079278
	.byte 0x00, 0x00
_08079208: .4byte sub_8079394
_0807920C:
	adds r4, r0, #0x0
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xE0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x8C
	str r6, [r0, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, [r5, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xEC
	movs r2, #0x00
	ldsh r1, [r0, r2]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _0807926C
	adds r0, r4, #0x0
	adds r0, #0xAE
	strh r6, [r0, #0x00]
	b _08079274
_0807926C:
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x01
	strh r0, [r1, #0x00]
_08079274:
	ldr r0, _08079280 @ =0x08079349
	str r0, [r4, #0x4C]
_08079278:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08079280: .4byte sub_8079348
	thumb_func_start sub_8079284
sub_8079284:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _08079316
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08079316
	adds r0, r4, #0x0
	bl sub_807F47C
	adds r0, r4, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, _080792D0 @ =0x03000F6C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _080792D4
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _080792E4
_080792D0: .4byte 0x03000F6C
_080792D4:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xE0
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x07
_080792E4:
	str r0, [r1, #0x00]
	adds r1, #0x04
	movs r0, #0xC0
	lsls r0, r0, #0x05
	str r0, [r1, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0xC0
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0807931C @ =0x08079321
	str r0, [r4, #0x4C]
_08079316:
	pop {r4}
	pop {r0}
	bx r0
_0807931C: .4byte sub_8079320
