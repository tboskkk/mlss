	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8109C08
sub_8109C08:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _08109C7C @ =0x03000D74
	ldr r0, [r1, #0x00]
	ldr r5, [r0, #0x38]
	movs r7, #0x00
	mov r10, r1
	ldr r0, _08109C80 @ =0x000001FF
	mov r9, r0
	movs r1, #0xFF
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #0x07
	mov r12, r2
_08109C2A:
	ldr r3, _08109C84 @ =0x03000FD8
	ldr r0, [r3, #0x00]
	lsls r1, r7, #0x02
	movs r2, #0xBF
	lsls r2, r2, #0x02
	adds r0, r0, r2
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	cmp r6, #0x00
	beq _08109CD4
	ldr r0, [r6, #0x08]
	adds r1, r0, #0x0
	adds r1, #0x21
	ldrb r2, [r1, #0x00]
	cmp r2, #0x05
	bne _08109C4C
	movs r2, #0x04
_08109C4C:
	cmp r2, #0x04
	ble _08109C52
	subs r2, #0x05
_08109C52:
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r3, #0x02
	ldsh r4, [r0, r3]
	ldr r0, _08109C88 @ =0x0820112C
	adds r0, r2, r0
	ldrb r0, [r0, #0x00]
	adds r3, r0, #0x0
	adds r3, #0x5D
	cmp r2, #0x03
	bne _08109C8C
	subs r1, #0x08
	mov r0, r9
	ands r1, r0
	subs r0, r4, #0x4
	mov r2, r8
	ands r0, r2
	mov r2, r12
	orrs r0, r2
	strh r0, [r5, #0x00]
	b _08109CA0
_08109C7C: .4byte 0x03000D74
_08109C80: .4byte 0x000001FF
_08109C84: .4byte 0x03000FD8
_08109C88: .4byte 0x0820112C
_08109C8C:
	subs r1, #0x10
	mov r0, r9
	ands r1, r0
	subs r0, r4, #0x4
	mov r2, r8
	ands r0, r2
	mov r2, r12
	orrs r0, r2
	strh r0, [r5, #0x00]
	orrs r1, r2
_08109CA0:
	strh r1, [r5, #0x02]
	ldr r1, _08109CF0 @ =0xFFFFD800
	adds r0, r1, #0x0
	orrs r3, r0
	strh r3, [r5, #0x04]
	ldr r4, [r5, #0x10]
	ldr r3, [r5, #0x0C]
	ldr r0, [r6, #0x08]
	ldr r2, [r0, #0x34]
	ldr r1, [r2, #0x0C]
	movs r0, #0x00
	strh r0, [r5, #0x06]
	ldr r0, [r1, #0x08]
	str r0, [r5, #0x08]
	str r3, [r4, #0x0C]
	str r4, [r3, #0x10]
	str r1, [r5, #0x0C]
	str r2, [r5, #0x10]
	str r5, [r1, #0x10]
	str r5, [r2, #0x0C]
	mov r2, r10
	ldr r1, [r2, #0x00]
	ldrb r0, [r1, #0x02]
	adds r0, #0x01
	strb r0, [r1, #0x02]
	adds r5, r4, #0x0
_08109CD4:
	adds r7, #0x01
	cmp r7, #0x04
	ble _08109C2A
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r5, [r0, #0x38]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08109CF0: .4byte 0xFFFFD800
	thumb_func_start sub_8109CF4
sub_8109CF4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	mov r8, r2
	adds r6, r3, #0x0
	ldr r5, [r4, #0x4C]
	cmp r5, #0x00
	bne _08109D16
	ldr r0, _08109DB4 @ =0x08109DC5
	adds r1, r4, #0x0
	bl sub_807FF48
	adds r5, r0, #0x0
	str r5, [r4, #0x4C]
_08109D16:
	add r1, sp, #0x008
	ldr r2, [r4, #0x18]
	ldr r0, [sp, #0x024]
	str r0, [sp, #0x000]
	add r0, sp, #0x004
	adds r3, r6, #0x0
	bl sub_8087878
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r3, [sp, #0x004]
	str r3, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [sp, #0x008]
	str r0, [r1, #0x00]
	ldr r2, _08109DB8 @ =0x03001038
	ldr r0, _08109DBC @ =0x0819832C
	ldr r1, _08109DC0 @ =0x08198220
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r2, r1, r0
	adds r1, r3, #0x0
	adds r0, r1, #0x0
	cmp r1, #0x00
	bge _08109D4C
	adds r0, #0x1F
_08109D4C:
	asrs r0, r0, #0x05
	muls r0, r3
	cmp r0, #0x00
	bge _08109D56
	adds r0, #0x3F
_08109D56:
	asrs r1, r0, #0x06
	movs r0, #0xB3
	lsls r0, r0, #0x0E
	bl _call_via_r2
	adds r1, r4, #0x0
	adds r1, #0x7C
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x84
	str r7, [r0, #0x00]
	adds r0, #0x04
	mov r1, r8
	str r1, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	adds r0, #0x0C
	ldr r2, [sp, #0x024]
	str r2, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x94
	ldr r0, [r4, #0x08]
	movs r2, #0x04
	ldsh r0, [r0, r2]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _08109D90
	adds r0, #0xFF
_08109D90:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x12]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _08109D9C
	adds r0, #0xFF
_08109D9C:
	asrs r0, r0, #0x08
	strh r0, [r5, #0x14]
	movs r0, #0x00
	strh r0, [r5, #0x10]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08109DB4: .4byte sub_8109DC4
_08109DB8: .4byte 0x03001038
_08109DBC: .4byte 0x0819832C
_08109DC0: .4byte 0x08198220
	thumb_func_start sub_8109DC4
sub_8109DC4:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	ldr r4, [r2, #0x08]
	adds r0, r4, #0x0
	adds r0, #0x7C
	ldrh r0, [r0, #0x00]
	ldrh r1, [r2, #0x10]
	adds r0, r0, r1
	movs r3, #0x00
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x17
	cmp r0, r1
	ble _08109E0C
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x10]
	adds r0, r4, #0x0
	adds r0, #0x88
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0x8C
	ldr r0, [r0, #0x00]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x08]
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x04]
	ldr r0, [r4, #0x08]
	strh r1, [r0, #0x06]
	str r3, [r2, #0x04]
	str r3, [r4, #0x4C]
	b _08109E84
_08109E0C:
	movs r0, #0x10
	ldsh r5, [r2, r0]
	movs r1, #0x12
	ldsh r0, [r2, r1]
	lsls r3, r0, #0x08
	movs r1, #0x14
	ldsh r0, [r2, r1]
	lsls r7, r0, #0x08
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	adds r0, r5, #0x0
	cmp r5, #0x00
	bge _08109E2E
	adds r0, #0x3F
_08109E2E:
	asrs r6, r0, #0x06
	subs r0, r1, r3
	muls r0, r6
	cmp r0, #0x00
	bge _08109E3A
	adds r0, #0xFF
_08109E3A:
	asrs r0, r0, #0x08
	adds r0, r3, r0
	str r0, [r4, #0x10]
	subs r0, r2, r7
	muls r0, r6
	cmp r0, #0x00
	bge _08109E4A
	adds r0, #0xFF
_08109E4A:
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	adds r0, #0x04
	ldr r2, [r0, #0x00]
	subs r0, #0x10
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_80877FC
	str r0, [r4, #0x18]
	adds r0, r4, #0x0
	adds r0, #0x94
	ldr r1, [r0, #0x00]
	ldr r2, [r4, #0x08]
	movs r0, #0x80
	lsls r0, r0, #0x01
	subs r0, r0, r1
	muls r0, r6
	cmp r0, #0x00
	bge _08109E7C
	adds r0, #0xFF
_08109E7C:
	asrs r0, r0, #0x08
	adds r0, r1, r0
	strh r0, [r2, #0x04]
	strh r0, [r2, #0x06]
_08109E84:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
