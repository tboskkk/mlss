	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8137FA4
sub_8137FA4:
	push {r4, r5, lr}
	mov r12, r0
	movs r0, #0xE8
	lsls r0, r0, #0x01
	add r0, r12
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	movs r0, #0x90
	lsls r0, r0, #0x01
	add r0, r12
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	movs r5, #0x97
	lsls r5, r5, #0x02
	add r5, r12
	ldr r1, [r5, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08138050
	cmp r4, #0x00
	beq _08138040
	ldr r2, _08138034 @ =0x000002B6
	add r2, r12
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0xDF
	lsls r0, r0, #0x01
	add r0, r12
	movs r3, #0x00
	strh r4, [r0, #0x00]
	movs r1, #0xE0
	lsls r1, r1, #0x01
	add r1, r12
	movs r0, #0xE6
	lsls r0, r0, #0x01
	add r0, r12
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r2, #0x93
	lsls r2, r2, #0x02
	add r2, r12
	mov r1, r12
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	add r1, r12
	mov r2, r12
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x00]
	movs r1, #0x95
	lsls r1, r1, #0x02
	add r1, r12
	ldr r0, _08138038 @ =0x0000023E
	add r0, r12
	movs r4, #0x00
	ldsh r0, [r0, r4]
	str r0, [r1, #0x00]
	str r3, [r5, #0x00]
	ldr r2, _0813803C @ =0x000002B5
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	b _0813804C
_08138034: .4byte 0x000002B6
_08138038: .4byte 0x0000023E
_0813803C: .4byte 0x000002B5
_08138040:
	ldr r2, _08138058 @ =0x000002B6
	add r2, r12
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
_0813804C:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08138050:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138058: .4byte 0x000002B6
	thumb_func_start sub_813805C
sub_813805C:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r1, #0xE8
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	lsls r1, r1, #0x01
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r4, [r0, #0x00]
	adds r2, #0x08
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r2, [r0, #0x00]
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r6, r3, r0
	ldr r1, [r6, #0x00]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08138104
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r4, #0x0
	orrs r0, r5
	cmp r0, #0x00
	beq _081380F4
	ldr r1, _081380EC @ =0x000002B6
	adds r2, r3, r1
	ldrb r1, [r2, #0x00]
	movs r0, #0x7F
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x93
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	movs r2, #0x94
	lsls r2, r2, #0x02
	adds r1, r3, r2
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x00]
	movs r0, #0x95
	lsls r0, r0, #0x02
	adds r1, r3, r0
	adds r2, #0x08
	adds r0, r3, r2
	str r4, [r0, #0x00]
	str r4, [r1, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r3, r1
	str r5, [r0, #0x00]
	movs r0, #0x00
	str r0, [r6, #0x00]
	ldr r0, _081380F0 @ =0x000002B5
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x08
	b _08138100
	.byte 0x00, 0x00
_081380EC: .4byte 0x000002B6
_081380F0: .4byte 0x000002B5
_081380F4:
	ldr r1, _0813810C @ =0x000002B6
	adds r2, r3, r1
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	movs r1, #0x40
_08138100:
	orrs r0, r1
	strb r0, [r2, #0x00]
_08138104:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813810C: .4byte 0x000002B6
	.byte 0xF0, 0xB5, 0x05, 0x1C, 0x97, 0x20, 0x80, 0x00, 0x2F, 0x18, 0x39, 0x68, 0x01, 0x20, 0x40, 0x42
	.byte 0x81, 0x42, 0x51, 0xD1, 0xE6, 0x21, 0x49, 0x00, 0x6E, 0x18, 0x30, 0x68, 0x00, 0x28, 0x43, 0xD0
	.byte 0x1F, 0x4B, 0xEA, 0x18, 0x11, 0x78, 0x7F, 0x20, 0x08, 0x40, 0x41, 0x21, 0x49, 0x42, 0x08, 0x40
	.byte 0x10, 0x70, 0x69, 0x69, 0xA8, 0x69, 0x09, 0x18, 0x00, 0x29, 0x00, 0xDA, 0xFF, 0x31, 0x09, 0x12
	.byte 0xDE, 0x20, 0x40, 0x00, 0x2A, 0x18, 0x10, 0x88, 0x09, 0x1A, 0xDF, 0x23, 0x5B, 0x00, 0xE8, 0x18
	.byte 0x00, 0x23, 0x01, 0x80, 0xE0, 0x20, 0x40, 0x00, 0x2C, 0x18, 0x30, 0x68, 0x40, 0x00, 0x20, 0x60
	.byte 0x93, 0x26, 0xB6, 0x00, 0xA9, 0x19, 0x00, 0x26, 0x90, 0x5F, 0x00, 0x02, 0x08, 0x60, 0x94, 0x21
	.byte 0x89, 0x00, 0x68, 0x18, 0x03, 0x60, 0x95, 0x23, 0x9B, 0x00, 0xEA, 0x18, 0x09, 0x4E, 0xA8, 0x19
	.byte 0x00, 0x23, 0xC1, 0x5E, 0xC8, 0x0F, 0x09, 0x18, 0x49, 0x10, 0x11, 0x60, 0xC9, 0x00, 0x20, 0x68
	.byte 0xA2, 0xF0, 0x80, 0xFC, 0x38, 0x60, 0x77, 0x36, 0xAA, 0x19, 0x10, 0x78, 0x08, 0x21, 0x09, 0xE0
	.byte 0xB6, 0x02, 0x00, 0x00, 0x3E, 0x02, 0x00, 0x00, 0x05, 0x48, 0x2A, 0x18, 0x10, 0x78, 0x80, 0x21
	.byte 0x08, 0x43, 0x40, 0x21, 0x08, 0x43, 0x10, 0x70, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xB6, 0x02, 0x00, 0x00
	thumb_func_start sub_81381D4
sub_81381D4:
	push {r4, lr}
	adds r3, r0, #0x0
	ldr r1, _08138298 @ =0x00000216
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138292
	movs r4, #0xB6
	lsls r4, r4, #0x02
	adds r2, r3, r4
	movs r0, #0x00
	ldsh r1, [r2, r0]
	ldr r0, [r3, #0x0C]
	adds r0, r0, r1
	str r0, [r3, #0x0C]
	ldr r1, _0813829C @ =0x000002DA
	adds r0, r3, r1
	movs r4, #0x00
	ldsh r1, [r0, r4]
	ldr r0, [r3, #0x10]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	ldr r0, _081382A0 @ =0x000002DE
	adds r1, r3, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r2, [r2, r1]
	cmp r2, #0x00
	ble _0813822A
	ldr r0, [r3, #0x0C]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138244
_0813822A:
	cmp r2, #0x00
	bge _08138240
	ldr r0, [r3, #0x0C]
	ldr r1, _081382A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138244
_08138240:
	cmp r2, #0x00
	bne _0813824E
_08138244:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x0C]
_0813824E:
	ldr r4, _0813829C @ =0x000002DA
	adds r0, r3, r4
	movs r1, #0x00
	ldsh r2, [r0, r1]
	cmp r2, #0x00
	ble _0813826E
	ldr r0, [r3, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138288
_0813826E:
	cmp r2, #0x00
	bge _08138284
	ldr r0, [r3, #0x10]
	ldr r1, _081382A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r3, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138288
_08138284:
	cmp r2, #0x00
	bne _08138292
_08138288:
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	str r0, [r3, #0x10]
_08138292:
	pop {r4}
	pop {r0}
	bx r0
_08138298: .4byte 0x00000216
_0813829C: .4byte 0x000002DA
_081382A0: .4byte 0x000002DE
_081382A4: .4byte 0xFFFFFF00
	thumb_func_start sub_81382A8
sub_81382A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0x0
	ldr r1, _081382E8 @ =0x00000216
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138348
	ldr r2, _081382EC @ =0x000002DE
	adds r7, r6, r2
	ldrh r0, [r7, #0x00]
	adds r0, #0x01
	strh r0, [r7, #0x00]
	movs r3, #0xB8
	lsls r3, r3, #0x02
	adds r5, r6, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5, #0x00]
	cmp r0, r1
	bcc _081382F0
	subs r2, #0x12
	adds r0, r6, r2
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x0C]
	subs r3, #0x10
	adds r0, r6, r3
	ldr r0, [r0, #0x00]
	b _08138346
_081382E8: .4byte 0x00000216
_081382EC: .4byte 0x000002DE
_081382F0:
	ldr r0, _08138354 @ =0x03001038
	mov r8, r0
	ldr r4, _08138358 @ =0x0819832C
	ldr r0, _0813835C @ =0x08198220
	subs r4, r4, r0
	mov r1, r8
	ldr r2, [r1, #0x00]
	adds r2, r2, r4
	ldrh r1, [r7, #0x00]
	movs r3, #0xB6
	lsls r3, r3, #0x02
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	lsls r0, r0, #0x02
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r6, #0x0C]
	mov r3, r8
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	ldrh r1, [r7, #0x00]
	ldr r3, _08138360 @ =0x000002DA
	adds r0, r6, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r1
	ldrh r1, [r5, #0x00]
	bl _call_via_r2
	lsls r0, r0, #0x02
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r6, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
_08138346:
	str r0, [r6, #0x10]
_08138348:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138354: .4byte 0x03001038
_08138358: .4byte 0x0819832C
_0813835C: .4byte 0x08198220
_08138360: .4byte 0x000002DA
	thumb_func_start sub_8138364
sub_8138364:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	ldr r1, _08138478 @ =0x00000216
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138466
	ldr r2, _0813847C @ =0x000002DE
	adds r1, r7, r2
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	movs r1, #0xAF
	lsls r1, r1, #0x02
	adds r0, r7, r1
	subs r2, #0x12
	adds r2, r7, r2
	str r2, [sp, #0x000]
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081383A2
	adds r0, #0x03
_081383A2:
	asrs r3, r0, #0x02
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r7, r1
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r2, r2, r7
	mov r10, r2
	ldr r1, [r0, #0x00]
	ldr r0, [r2, #0x00]
	subs r0, r1, r0
	cmp r0, #0x00
	bge _081383BE
	adds r0, #0x03
_081383BE:
	asrs r5, r0, #0x02
	adds r0, r3, #0x0
	orrs r0, r5
	cmp r0, #0x00
	beq _08138420
	ldr r0, _08138480 @ =0x03001038
	mov r9, r0
	adds r0, r3, #0x0
	muls r0, r3
	adds r1, r5, #0x0
	muls r1, r5
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0x00]
	str r3, [sp, #0x004]
	bl _call_via_r1
	mov r8, r0
	ldr r4, _08138484 @ =0x0819832C
	ldr r0, _08138488 @ =0x08198220
	subs r4, r4, r0
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r6, r7, r1
	movs r1, #0x00
	ldsh r0, [r6, r1]
	ldr r3, [sp, #0x004]
	muls r0, r3
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r7, #0x0C]
	adds r1, r1, r0
	str r1, [r7, #0x0C]
	mov r0, r9
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	movs r1, #0x00
	ldsh r0, [r6, r1]
	muls r0, r5
	mov r1, r8
	bl _call_via_r2
	ldr r1, [r7, #0x10]
	adds r1, r1, r0
	str r1, [r7, #0x10]
_08138420:
	movs r2, #0xB6
	lsls r2, r2, #0x02
	adds r3, r7, r2
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r1, [r0, #0x00]
	ldrh r0, [r3, #0x00]
	subs r0, r0, r1
	strh r0, [r3, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _08138466
	ldr r0, _0813848C @ =0x0000020D
	adds r2, r7, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x09
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	negs r0, r0
	ldr r2, _08138490 @ =0x0000023E
	adds r1, r7, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	cmp r0, r1
	blt _08138466
	ldr r1, [sp, #0x000]
	ldr r0, [r1, #0x00]
	str r0, [r7, #0x0C]
	mov r2, r10
	ldr r0, [r2, #0x00]
	str r0, [r7, #0x10]
_08138466:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138478: .4byte 0x00000216
_0813847C: .4byte 0x000002DE
_08138480: .4byte 0x03001038
_08138484: .4byte 0x0819832C
_08138488: .4byte 0x08198220
_0813848C: .4byte 0x0000020D
_08138490: .4byte 0x0000023E
	thumb_func_start sub_8138494
sub_8138494:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	ldr r1, _08138598 @ =0x00000216
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	bne _08138590
	movs r4, #0xAF
	lsls r4, r4, #0x02
	adds r3, r2, r4
	ldr r0, [r2, #0x0C]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x0C]
	movs r5, #0xB0
	lsls r5, r5, #0x02
	adds r4, r2, r5
	ldr r0, [r2, #0x10]
	ldr r1, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x10]
	ldr r1, [r3, #0x00]
	subs r5, #0x7E
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x00]
	adds r5, #0x02
	adds r0, r2, r5
	strh r1, [r0, #0x00]
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r3, #0x00]
	ldr r1, _0813859C @ =0x000002DA
	adds r0, r2, r1
	movs r5, #0x00
	ldsh r1, [r0, r5]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x00]
	movs r1, #0xC0
	lsls r1, r1, #0x03
	cmp r0, r1
	ble _081384FC
	str r1, [r3, #0x00]
_081384FC:
	ldr r0, [r4, #0x00]
	cmp r0, r1
	ble _08138504
	str r1, [r4, #0x00]
_08138504:
	ldr r0, _081385A0 @ =0x000002DE
	adds r1, r2, r0
	ldrh r0, [r1, #0x00]
	adds r0, #0x01
	strh r0, [r1, #0x00]
	ldr r3, [r3, #0x00]
	cmp r3, #0x00
	ble _08138528
	ldr r0, [r2, #0x0C]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138542
_08138528:
	cmp r3, #0x00
	bge _0813853E
	ldr r0, [r2, #0x0C]
	ldr r5, _081385A4 @ =0xFFFFFF00
	adds r0, r0, r5
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138542
_0813853E:
	cmp r3, #0x00
	bne _0813854C
_08138542:
	movs r5, #0xB3
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x0C]
_0813854C:
	movs r1, #0xB0
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r3, [r0, #0x00]
	cmp r3, #0x00
	ble _0813856C
	ldr r0, [r2, #0x10]
	movs r4, #0x80
	lsls r4, r4, #0x01
	adds r0, r0, r4
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r2, r5
	ldr r1, [r1, #0x00]
	cmp r0, r1
	bgt _08138586
_0813856C:
	cmp r3, #0x00
	bge _08138582
	ldr r0, [r2, #0x10]
	ldr r1, _081385A4 @ =0xFFFFFF00
	adds r0, r0, r1
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r1, r2, r4
	ldr r1, [r1, #0x00]
	cmp r0, r1
	blt _08138586
_08138582:
	cmp r3, #0x00
	bne _08138590
_08138586:
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r0, r2, r5
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x10]
_08138590:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138598: .4byte 0x00000216
_0813859C: .4byte 0x000002DA
_081385A0: .4byte 0x000002DE
_081385A4: .4byte 0xFFFFFF00
	thumb_func_start sub_81385A8
sub_81385A8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r5, r4, r0
	ldr r0, [r5, #0x00]
	movs r6, #0x01
	negs r6, r6
	cmp r0, r6
	beq _08138604
	adds r0, #0x01
	str r0, [r5, #0x00]
	movs r2, #0xE0
	lsls r2, r2, #0x01
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	movs r3, #0xDF
	lsls r3, r3, #0x01
	adds r2, r4, r3
	movs r7, #0x00
	ldsh r2, [r2, r7]
	movs r7, #0x95
	lsls r7, r7, #0x02
	adds r3, r4, r7
	ldr r3, [r3, #0x00]
	bl sub_8138F1C
	movs r2, #0x93
	lsls r2, r2, #0x02
	adds r1, r4, r2
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	ldr r1, [r4, #0x14]
	subs r0, r0, r1
	str r0, [r4, #0x18]
	cmp r0, #0x00
	bgt _08138604
	movs r0, #0x00
	str r0, [r4, #0x18]
	str r6, [r5, #0x00]
	ldr r3, _0813860C @ =0x000002B5
	adds r2, r4, r3
	ldrb r1, [r2, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r2, #0x00]
_08138604:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813860C: .4byte 0x000002B5
	thumb_func_start sub_8138610
sub_8138610:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r1, _081386B8 @ =0x08198584
	movs r6, #0xBD
	lsls r6, r6, #0x02
	adds r4, r3, r6
	movs r5, #0xFF
	ldrb r0, [r4, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08138638
	adds r0, #0x3F
_08138638:
	asrs r1, r0, #0x06
	movs r2, #0xAF
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x0C]
	movs r6, #0xB4
	lsls r6, r6, #0x02
	adds r2, r3, r6
	ldr r1, _081386BC @ =0x08198504
	ldr r0, [r4, #0x00]
	ands r0, r5
	lsls r0, r0, #0x01
	adds r0, r0, r1
	movs r6, #0x00
	ldsh r1, [r0, r6]
	ldr r0, [r2, #0x00]
	muls r0, r1
	cmp r0, #0x00
	bge _08138666
	adds r0, #0x3F
_08138666:
	asrs r1, r0, #0x06
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	adds r1, r1, r0
	str r1, [r3, #0x10]
	movs r6, #0xB2
	lsls r6, r6, #0x02
	adds r0, r3, r6
	ldr r0, [r0, #0x00]
	lsls r0, r0, #0x08
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	str r0, [r3, #0x18]
	movs r1, #0xBE
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r4, #0x00]
	adds r0, r0, r1
	ands r0, r5
	str r0, [r4, #0x00]
	ldr r0, [r3, #0x0C]
	ldr r1, [r3, #0x34]
	subs r0, r0, r1
	subs r6, #0x86
	adds r1, r3, r6
	strh r0, [r1, #0x00]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x38]
	subs r0, r0, r1
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_081386B8: .4byte 0x08198584
_081386BC: .4byte 0x08198504
	thumb_func_start sub_81386C0
sub_81386C0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r2, r0, #0x0
	adds r4, r1, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r7, r4, r0
	movs r1, #0xA0
	lsls r1, r1, #0x01
	adds r1, r1, r4
	mov r9, r1
	ldr r3, _08138760 @ =0x00000141
	adds r3, r4, r3
	str r3, [sp, #0x000]
	ldrb r0, [r1, #0x00]
	ldrb r1, [r3, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _081387B4
	adds r0, r2, #0x0
	movs r1, #0xFF
	bl sub_8138F64
	adds r6, r0, #0x0
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	bge _08138700
	adds r0, #0xFF
_08138700:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	bge _0813870C
	adds r0, #0xFF
_0813870C:
	asrs r0, r0, #0x08
	mov r10, r0
	movs r1, #0x9B
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	movs r2, #0x30
	ldsh r1, [r7, r2]
	muls r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0x00
	beq _081387B4
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	mov r3, r9
	movs r1, #0x00
	ldsb r1, [r3, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08138776
	ldr r1, [r4, #0x0C]
	ldr r0, [r6, #0x0C]
	cmp r1, r0
	blt _08138764
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	subs r0, r1, r0
	movs r2, #0x3C
	ldsh r1, [r7, r2]
	cmp r0, r1
	ble _081387B4
	movs r0, #0x02
	b _081387B6
_08138760: .4byte 0x00000141
_08138764:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add r0, r8
	movs r3, #0x3E
	ldsh r1, [r7, r3]
	cmp r0, r1
	bge _081387B4
	movs r0, #0x03
	b _081387B6
_08138776:
	subs r0, r0, r1
	ldr r2, [sp, #0x000]
	movs r1, #0x00
	ldsb r1, [r2, r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _081387B4
	ldr r1, [r4, #0x10]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	blt _081387A2
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r3, r10
	subs r0, r3, r0
	movs r2, #0x38
	ldsh r1, [r7, r2]
	cmp r0, r1
	ble _081387B4
	movs r0, #0x00
	b _081387B6
_081387A2:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	add r0, r10
	movs r3, #0x3A
	ldsh r1, [r7, r3]
	cmp r0, r1
	bge _081387B4
	movs r0, #0x01
	b _081387B6
_081387B4:
	movs r0, #0xFF
_081387B6:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_81387C8
sub_81387C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138816
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_081387FC:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081387FC
_08138816:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _08138840
	movs r1, #0x00
_08138826:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r6, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138826
_08138840:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138886
	adds r2, r3, #0x0
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_08138854:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r3, [r2, #0x00]
	movs r1, #0x40
	ands r1, r3
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _0813886C
	movs r0, #0x0F
	ands r0, r3
	b _08138872
_0813886C:
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
_08138872:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r2, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138854
	adds r3, r2, #0x0
_08138886:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _081388B2
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x10
_08138898:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138898
_081388B2:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0x00
	beq _081388DE
	movs r1, #0x00
	adds r4, r6, #0x0
	adds r4, #0x18
_081388C4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081388C4
_081388DE:
	adds r2, r3, #0x0
	mov r0, r12
	asrs r3, r0, #0x10
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0x00
	beq _08138900
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r2, #0x01
	movs r0, #0x00
	ldsb r0, [r2, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r2, #0x01
_08138900:
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0x00
	beq _08138916
	ldrb r1, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r2, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138916:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r3, r0
	cmp r3, #0x00
	beq _08138934
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138940 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138934:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138940: .4byte 0x0000033D
	thumb_func_start sub_8138944
sub_8138944:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #0x01
	add r6, r8
	movs r0, #0xD8
	lsls r0, r0, #0x01
	add r0, r8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r3, r0, r1
	ldrh r5, [r3, #0x00]
	adds r3, #0x02
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138992
	movs r1, #0x00
	movs r4, #0x94
	lsls r4, r4, #0x01
	add r4, r8
_08138978:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #0x01
	adds r1, r4, r1
	ldrh r2, [r3, #0x00]
	strh r2, [r1, #0x00]
	adds r3, #0x02
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _08138978
_08138992:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x02
	ands r1, r2
	mov r12, r0
	cmp r1, #0x00
	beq _081389D4
	movs r1, #0x00
_081389A2:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r6, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389BC
	movs r0, #0x0F
	ands r0, r2
	lsls r0, r0, #0x04
	b _081389C2
_081389BC:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x08
_081389C2:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389A2
_081389D4:
	mov r1, r12
	asrs r0, r1, #0x10
	movs r1, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _08138A16
	movs r1, #0x00
	adds r7, r6, #0x0
	adds r7, #0x08
_081389E6:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x0F
	adds r5, r7, r1
	ldrb r2, [r3, #0x00]
	movs r1, #0x40
	ands r1, r2
	adds r4, r0, #0x0
	cmp r1, #0x00
	beq _081389FE
	movs r0, #0x0F
	ands r0, r2
	b _08138A04
_081389FE:
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
_08138A04:
	strh r0, [r5, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r4, r1
	adds r3, #0x01
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x03
	ble _081389E6
_08138A16:
	mov r0, r12
	asrs r2, r0, #0x10
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _08138A36
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x30]
	adds r3, #0x01
	movs r0, #0x00
	ldsb r0, [r3, r0]
	lsls r0, r0, #0x04
	strh r0, [r6, #0x32]
	adds r3, #0x01
_08138A36:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0x00
	beq _08138A4C
	ldrb r1, [r3, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x40
	strb r1, [r0, #0x00]
	ldrb r1, [r3, #0x01]
	adds r0, #0x01
	strb r1, [r0, #0x00]
_08138A4C:
	movs r0, #0xF0
	lsls r0, r0, #0x08
	ands r2, r0
	cmp r2, #0x00
	beq _08138A6A
	mov r0, r12
	lsrs r1, r0, #0x1C
	ldr r3, _08138A74 @ =0x0000033D
	add r3, r8
	lsls r1, r1, #0x04
	ldrb r2, [r3, #0x00]
	movs r0, #0x0F
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x00]
_08138A6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08138A74: .4byte 0x0000033D
	thumb_func_start sub_8138A78
sub_8138A78:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r5, #0x80
	lsls r5, r5, #0x01
	add r5, r12
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	adds r4, r0, #0x0
	adds r3, r4, #0x4
	movs r0, #0x02
	ldsh r2, [r4, r0]
	ldrb r0, [r4, #0x00]
	movs r6, #0x01
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AA6
	lsls r2, r2, #0x04
_08138AA6:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138AAE
	adds r0, #0x08
_08138AAE:
	strh r0, [r5, #0x3C]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, #0x02
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AC4
	lsls r2, r2, #0x04
_08138AC4:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138ACC
	adds r0, #0x08
_08138ACC:
	strh r0, [r5, #0x38]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	adds r3, #0x02
	adds r2, r0, #0x0
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AE2
	lsls r2, r2, #0x04
_08138AE2:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138AEA
	adds r0, #0x08
_08138AEA:
	strh r0, [r5, #0x3E]
	movs r0, #0x00
	ldsh r2, [r3, r0]
	ldrb r0, [r4, #0x00]
	adds r1, r6, #0x0
	ands r1, r0
	cmp r1, #0x00
	beq _08138AFC
	lsls r2, r2, #0x04
_08138AFC:
	adds r0, r2, #0x0
	cmp r1, #0x00
	beq _08138B04
	adds r0, #0x08
_08138B04:
	strh r0, [r5, #0x3A]
	movs r1, #0x3C
	ldsh r2, [r5, r1]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B22
	mov r1, r12
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08138B1E
	adds r0, #0xFF
_08138B1E:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B22:
	strh r2, [r5, #0x3C]
	movs r0, #0x38
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B40
	mov r1, r12
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08138B3C
	adds r0, #0xFF
_08138B3C:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B40:
	strh r2, [r5, #0x38]
	movs r0, #0x3E
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B5E
	mov r1, r12
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bge _08138B5A
	adds r0, #0xFF
_08138B5A:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B5E:
	strh r2, [r5, #0x3E]
	movs r0, #0x3A
	ldsh r2, [r5, r0]
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08138B7C
	mov r1, r12
	ldr r0, [r1, #0x10]
	cmp r0, #0x00
	bge _08138B78
	adds r0, #0xFF
_08138B78:
	asrs r0, r0, #0x08
	adds r2, r2, r0
_08138B7C:
	strh r2, [r5, #0x3A]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8138B84
sub_8138B84:
	push {r4, r5, r6, lr}
	mov r12, r0
	movs r0, #0xDA
	lsls r0, r0, #0x01
	add r0, r12
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	adds r5, r2, #0x2
	ldrb r0, [r2, #0x00]
	movs r4, #0x98
	lsls r4, r4, #0x01
	add r4, r12
	movs r1, #0x03
	ands r1, r0
	ldrb r3, [r4, #0x00]
	movs r0, #0x04
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldrb r2, [r2, #0x01]
	movs r1, #0x01
	ands r1, r2
	lsls r1, r1, #0x02
	movs r2, #0x05
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x00]
	movs r6, #0x99
	lsls r6, r6, #0x01
	add r6, r12
	movs r3, #0xA9
	lsls r3, r3, #0x01
	add r3, r12
	ldrh r2, [r5, #0x00]
	ldr r1, _08138C14 @ =0x00000131
	add r1, r12
	movs r0, #0x00
	strb r2, [r1, #0x00]
	adds r5, #0x02
	ldr r1, _08138C18 @ =0x00000193
	add r1, r12
	strb r0, [r1, #0x00]
	movs r1, #0xC9
	lsls r1, r1, #0x01
	add r1, r12
	strb r0, [r1, #0x00]
	ldrb r1, [r4, #0x00]
	subs r0, #0x09
	ands r0, r1
	strb r0, [r4, #0x00]
_08138BF0:
	ldrh r0, [r5, #0x00]
	strh r0, [r6, #0x00]
	adds r5, #0x02
	adds r6, #0x02
	ldrh r0, [r5, #0x00]
	strh r0, [r3, #0x00]
	adds r5, #0x02
	adds r3, #0x02
	lsls r0, r2, #0x10
	ldr r1, _08138C1C @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	cmp r0, #0x00
	bgt _08138BF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08138C14: .4byte 0x00000131
_08138C18: .4byte 0x00000193
_08138C1C: .4byte 0xFFFF0000
	thumb_func_start sub_8138C20
sub_8138C20:
	push {r4, r5, r6, lr}
	adds r2, r0, #0x0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r0, r0, r2
	mov r12, r0
	movs r3, #0xD8
	lsls r3, r3, #0x01
	adds r0, r2, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x0F
	ldr r0, [r0, #0x00]
	adds r5, r0, r1
	adds r4, r5, #0x0
	adds r4, #0x08
	movs r0, #0x00
	movs r1, #0xA3
	lsls r1, r1, #0x01
	adds r6, r2, r1
_08138C46:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #0x01
	mov r0, r12
	adds r0, #0x36
	adds r0, r0, r3
	ldrh r1, [r5, #0x00]
	strh r1, [r0, #0x00]
	adds r5, #0x02
	mov r0, r12
	adds r0, #0x3E
	adds r0, r0, r3
	movs r1, #0x00
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r3, r6, r3
	movs r0, #0x04
	ldsb r0, [r4, r0]
	strh r0, [r3, #0x00]
	adds r0, r2, #0x4
	lsls r0, r0, #0x01
	adds r0, r6, r0
	movs r1, #0x08
	ldsb r1, [r4, r1]
	strh r1, [r0, #0x00]
	adds r2, #0x01
	lsls r2, r2, #0x10
	adds r4, #0x01
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x03
	ble _08138C46
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_start sub_8138C8C
sub_8138C8C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r2, r1, #0x0
	adds r3, r2, #0x0
	adds r3, #0x58
	movs r6, #0x00
	adds r4, r2, #0x0
	adds r4, #0xF8
	ldrh r1, [r4, #0x00]
	movs r5, #0x80
	lsls r5, r5, #0x04
	adds r0, r5, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _08138CAE
	movs r0, #0x00
	b _08138E18
_08138CAE:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r2, #0x0C]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08138CDC
	movs r1, #0xB4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r1, [r2, #0x10]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bne _08138CDC
	adds r0, r2, #0x0
	bl sub_8046980
	ldrh r1, [r4, #0x00]
	adds r0, r5, #0x0
	eors r0, r1
	strh r0, [r4, #0x00]
	movs r0, #0x00
	b _08138E18
_08138CDC:
	movs r0, #0xBF
	lsls r0, r0, #0x01
	adds r3, r3, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	movs r1, #0x09
	negs r1, r1
	ands r0, r1
	subs r1, #0x08
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x24
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08138D66
	ldr r1, _08138DCC @ =0x0000020E
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x18
	bne _08138D38
	movs r1, #0x00
	ldsb r1, [r2, r1]
	movs r0, #0xFE
	ands r0, r1
	cmp r0, #0x00
	bne _08138D38
	movs r0, #0xE3
	lsls r0, r0, #0x02
	muls r0, r1
	adds r0, r0, r7
	ldr r3, _08138DD0 @ =0x0000037A
	adds r0, r0, r3
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _08138D66
_08138D38:
	ldr r1, _08138DD4 @ =0x00000213
	adds r0, r2, r1
	ldrb r0, [r0, #0x00]
	movs r1, #0x1E
	ands r1, r0
	cmp r1, #0x00
	bne _08138D62
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138DD8 @ =0x000002B6
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _08138DA0
_08138D62:
	movs r0, #0x01
	orrs r6, r0
_08138D66:
	adds r0, r2, #0x0
	adds r0, #0x25
	ldrb r1, [r0, #0x00]
	movs r0, #0x78
	ands r0, r1
	cmp r0, #0x00
	beq _08138DE4
	ldr r3, _08138DD4 @ =0x00000213
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r1, r0, #0x1C
	movs r0, #0x0C
	ands r1, r0
	cmp r1, #0x00
	bne _08138DE0
	adds r3, #0x31
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	subs r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138DD8 @ =0x000002B6
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08138DE0
_08138DA0:
	adds r3, #0x9C
	adds r1, r2, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08138DAE
	subs r0, #0x01
	strh r0, [r1, #0x00]
_08138DAE:
	movs r0, #0x97
	lsls r0, r0, #0x02
	adds r1, r2, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
	ldr r1, _08138DDC @ =0x000002B5
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	subs r0, #0x08
	ands r0, r1
	strb r0, [r2, #0x00]
	movs r0, #0x00
	b _08138E18
	.byte 0x00, 0x00
_08138DCC: .4byte 0x0000020E
_08138DD0: .4byte 0x0000037A
_08138DD4: .4byte 0x00000213
_08138DD8: .4byte 0x000002B6
_08138DDC: .4byte 0x000002B5
_08138DE0:
	movs r0, #0x01
	orrs r6, r0
_08138DE4:
	cmp r6, #0x00
	beq _08138DFC
	ldr r3, _08138DF8 @ =0x000002DE
	adds r1, r2, r3
	ldrh r0, [r1, #0x00]
	cmp r0, #0x00
	beq _08138DFC
	subs r0, #0x01
	strh r0, [r1, #0x00]
	b _08138E16
_08138DF8: .4byte 0x000002DE
_08138DFC:
	movs r1, #0xB6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	ldr r3, _08138E20 @ =0x00000242
	adds r0, r2, r3
	strh r1, [r0, #0x00]
	ldr r1, _08138E24 @ =0x000002DA
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	adds r3, #0x02
	adds r0, r2, r3
	strh r1, [r0, #0x00]
_08138E16:
	movs r0, #0x01
_08138E18:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08138E20: .4byte 0x00000242
_08138E24: .4byte 0x000002DA
	thumb_func_start sub_8138E28
sub_8138E28:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	str r1, [sp, #0x000]
	adds r4, r2, #0x0
	adds r5, r3, #0x0
	ldr r3, [sp, #0x024]
	ldr r2, [r6, #0x2C]
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _08138E48
	adds r0, #0xFF
_08138E48:
	asrs r0, r0, #0x08
	mov r8, r0
	ldr r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08138E54
	adds r0, #0xFF
_08138E54:
	asrs r0, r0, #0x08
	mov r9, r0
	ldr r0, [r2, #0x14]
	cmp r0, #0x00
	bge _08138E60
	adds r0, #0xFF
_08138E60:
	asrs r0, r0, #0x08
	mov r12, r0
	movs r1, #0x9E
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r7, r0, #0x08
	adds r1, #0x04
	adds r0, r2, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x08
	mov r10, r0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08138E80
	adds r0, #0xFF
_08138E80:
	asrs r4, r0, #0x08
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08138E8A
	adds r0, #0xFF
_08138E8A:
	asrs r5, r0, #0x08
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08138E94
	adds r0, #0xFF
_08138E94:
	asrs r3, r0, #0x08
	ldr r1, _08138F04 @ =0x00000246
	adds r0, r6, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x1C
	ands r0, r1
	cmp r0, #0x0C
	bne _08138F08
	movs r6, #0x83
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08138F08
	cmp r12, r3
	bne _08138F08
	lsrs r3, r7, #0x01
	mov r0, r8
	subs r1, r0, r3
	subs r1, #0x02
	ldr r2, [sp, #0x000]
	movs r6, #0x9E
	lsls r6, r6, #0x02
	adds r0, r2, r6
	ldrh r0, [r0, #0x00]
	lsrs r2, r0, #0x09
	adds r0, r4, r2
	cmp r1, r0
	bgt _08138F08
	mov r1, r8
	adds r0, r1, r3
	adds r0, #0x02
	subs r1, r4, r2
	cmp r0, r1
	blt _08138F08
	mov r2, r9
	mov r3, r10
	subs r0, r2, r3
	subs r0, #0x02
	cmp r0, r5
	bgt _08138F08
	mov r1, r9
	adds r1, #0x02
	ldr r6, [sp, #0x000]
	movs r2, #0x9F
	lsls r2, r2, #0x02
	adds r0, r6, r2
	ldrh r0, [r0, #0x00]
	subs r0, r5, r0
	cmp r1, r0
	blt _08138F08
	movs r0, #0x01
	b _08138F0A
	.byte 0x00, 0x00
_08138F04: .4byte 0x00000246
_08138F08:
	movs r0, #0x00
_08138F0A:
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8138F1C
sub_8138F1C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	adds r6, r2, #0x0
	adds r0, r4, #0x0
	cmp r4, #0x00
	bge _08138F2C
	adds r0, r4, #0x7
_08138F2C:
	asrs r4, r0, #0x03
	muls r5, r3
	subs r5, r5, r4
	ldr r2, _08138F58 @ =0x03001038
	ldr r0, _08138F5C @ =0x0819832C
	ldr r1, _08138F60 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	negs r0, r6
	muls r0, r5
	muls r0, r5
	adds r1, r4, #0x0
	muls r1, r4
	bl _call_via_r2
	adds r0, r0, r6
	lsls r0, r0, #0x08
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08138F58: .4byte 0x03001038
_08138F5C: .4byte 0x0819832C
_08138F60: .4byte 0x08198220
	thumb_func_start sub_8138F64
sub_8138F64:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	ldr r1, _08138F94 @ =0x0000010B
	adds r2, r4, r1
	ldrb r2, [r2, #0x00]
	cmp r0, r2
	bcc _08138F8A
	adds r0, r4, #0x0
	mov r1, sp
	bl sub_80FBD44
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _08138F98
	mov r0, sp
	ldrb r0, [r0, #0x00]
_08138F8A:
	lsls r0, r0, #0x02
	adds r0, r0, r4
	ldr r0, [r0, #0x28]
	b _08138F9A
	.byte 0x00, 0x00
_08138F94: .4byte 0x0000010B
_08138F98:
	movs r0, #0x00
_08138F9A:
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
