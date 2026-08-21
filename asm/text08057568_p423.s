	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8162DFC
sub_8162DFC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	movs r0, #0x00
	mov r8, r0
	movs r7, #0x00
	ldr r1, _08162ECC @ =0x08212AA4
	mov r10, r1
	mov r6, r9
_08162E1C:
	mov r2, r8
	lsls r0, r2, #0x02
	ldr r5, _08162ED0 @ =0x083CC2B0
	adds r0, r0, r5
	ldr r1, [r6, #0x00]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	ldr r0, [r6, #0x00]
	bl sub_8161E38
	ldr r0, [r6, #0x00]
	mov r3, r8
	lsls r2, r3, #0x03
	movs r1, #0x06
	bl sub_816391C
	ldr r0, [r6, #0x00]
	mov r1, r10
	str r1, [r0, #0x44]
	adds r0, #0x48
	strh r7, [r0, #0x00]
	mov r4, r8
	adds r4, #0x01
	lsls r0, r4, #0x02
	adds r0, r0, r5
	ldr r1, [r6, #0x04]
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x44]
	adds r0, r1, #0x0
	adds r0, #0x48
	strh r7, [r0, #0x00]
	str r7, [r1, #0x40]
	ldr r0, [r6, #0x04]
	bl sub_8161E38
	ldr r0, [r6, #0x04]
	lsls r4, r4, #0x03
	movs r1, #0x06
	adds r2, r4, #0x0
	bl sub_816391C
	ldr r0, [r6, #0x04]
	mov r2, r10
	str r2, [r0, #0x44]
	adds r0, #0x48
	strh r7, [r0, #0x00]
	adds r6, #0x08
	movs r3, #0x02
	add r8, r3
	mov r0, r8
	cmp r0, #0x03
	ble _08162E1C
	ldr r1, [sp, #0x004]
	cmp r1, #0x00
	beq _08162EE0
	mov r2, r9
	ldr r0, [r2, #0x0C]
	ldr r0, [r0, #0x10]
	ldr r2, _08162ED4 @ =0x08212954
	ldr r1, _08162ED8 @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
	mov r3, r9
	ldr r0, [r3, #0x0C]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	ldr r2, _08162EDC @ =0xFFFFF000
	str r1, [r0, #0x18]
	str r2, [r0, #0x1C]
	str r4, [r0, #0x20]
	b _08162F06
	.byte 0x00, 0x00
_08162ECC: .4byte 0x08212AA4
_08162ED0: .4byte 0x083CC2B0
_08162ED4: .4byte 0x08212954
_08162ED8: .4byte 0x0300034C
_08162EDC: .4byte 0xFFFFF000
_08162EE0:
	mov r1, r9
	ldr r0, [r1, #0x0C]
	ldr r0, [r0, #0x10]
	ldr r2, _08162F18 @ =0x0821294A
	ldr r1, _08162F1C @ =0x0300034C
	movs r3, #0x8C
	lsls r3, r3, #0x04
	adds r1, r1, r3
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x01
	adds r1, r1, r2
	movs r2, #0x00
	ldsh r1, [r1, r2]
	ldr r3, [sp, #0x004]
	str r3, [sp, #0x000]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_801E150
_08162F06:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08162F18: .4byte 0x0821294A
_08162F1C: .4byte 0x0300034C
	thumb_func_start sub_8162F20
sub_8162F20:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	ldr r0, [r5, #0x24]
	cmp r0, #0x01
	beq _08162F48
	cmp r0, #0x01
	bgt _08162F40
	cmp r0, #0x00
	bne _08162F3E
	b _08163060
_08162F3E:
	b _081630CC
_08162F40:
	cmp r0, #0x02
	bne _08162F46
	b _08163050
_08162F46:
	b _081630CC
_08162F48:
	ldr r0, [r5, #0x2C]
	adds r0, #0x01
	str r0, [r5, #0x2C]
	ldr r1, [r5, #0x28]
	cmp r0, r1
	ble _08162F56
	b _0816305C
_08162F56:
	ldr r2, [r5, #0x10]
	mov r9, r2
	ldr r6, [r5, #0x08]
	mov r8, r6
	adds r7, r1, #0x0
	adds r6, r0, #0x0
	cmp r7, #0x00
	bgt _08162F68
	movs r7, #0x01
_08162F68:
	cmp r6, #0x00
	bge _08162F6E
	movs r6, #0x00
_08162F6E:
	cmp r6, r7
	ble _08162F74
	adds r6, r7, #0x0
_08162F74:
	ldr r1, _08163044 @ =0x0819832C
	ldr r0, _08163048 @ =0x08198220
	subs r1, r1, r0
	mov r10, r1
	ldr r0, _0816304C @ =0x03001038
	ldr r4, [r0, #0x00]
	add r4, r10
	mov r2, r9
	lsls r1, r2, #0x01
	add r1, r9
	mov r2, r8
	lsls r0, r2, #0x01
	add r0, r8
	subs r0, r0, r1
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	str r0, [sp, #0x000]
	ldr r0, _0816304C @ =0x03001038
	ldr r4, [r0, #0x00]
	add r4, r10
	mov r2, r9
	mov r0, r8
	subs r1, r2, r0
	lsls r0, r6, #0x01
	muls r0, r1
	adds r1, r7, #0x0
	bl _call_via_r4
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	ldr r1, [sp, #0x000]
	adds r0, r0, r1
	add r0, r9
	str r0, [r5, #0x00]
	ldr r2, [r5, #0x14]
	mov r9, r2
	ldr r6, [r5, #0x0C]
	mov r8, r6
	ldr r7, [r5, #0x28]
	ldr r6, [r5, #0x2C]
	cmp r7, #0x00
	bgt _08162FE2
	movs r7, #0x01
_08162FE2:
	cmp r6, #0x00
	bge _08162FE8
	movs r6, #0x00
_08162FE8:
	cmp r6, r7
	ble _08162FEE
	adds r6, r7, #0x0
_08162FEE:
	ldr r0, _0816304C @ =0x03001038
	ldr r4, [r0, #0x00]
	add r4, r10
	mov r2, r9
	lsls r1, r2, #0x01
	add r1, r9
	mov r2, r8
	lsls r0, r2, #0x01
	add r0, r8
	subs r0, r0, r1
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	str r0, [sp, #0x004]
	ldr r0, _0816304C @ =0x03001038
	ldr r4, [r0, #0x00]
	add r4, r10
	mov r2, r9
	mov r0, r8
	subs r1, r2, r0
	lsls r0, r6, #0x01
	muls r0, r1
	adds r1, r7, #0x0
	bl _call_via_r4
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	muls r0, r6
	adds r1, r7, #0x0
	bl _call_via_r4
	ldr r1, [sp, #0x004]
	adds r0, r0, r1
	add r0, r9
	b _081630CA
	.byte 0x00, 0x00
_08163044: .4byte 0x0819832C
_08163048: .4byte 0x08198220
_0816304C: .4byte 0x03001038
_08163050:
	ldr r0, [r5, #0x2C]
	adds r0, #0x01
	str r0, [r5, #0x2C]
	ldr r1, [r5, #0x28]
	cmp r0, r1
	ble _08163064
_0816305C:
	movs r0, #0x00
	str r0, [r5, #0x24]
_08163060:
	movs r0, #0x01
	b _081630DA
_08163064:
	ldr r6, [r5, #0x10]
	ldr r2, [r5, #0x08]
	mov r8, r2
	adds r4, r1, #0x0
	adds r3, r0, #0x0
	cmp r4, #0x00
	bgt _08163074
	movs r4, #0x01
_08163074:
	cmp r3, #0x00
	bge _0816307A
	movs r3, #0x00
_0816307A:
	cmp r3, r4
	ble _08163080
	adds r3, r4, #0x0
_08163080:
	ldr r0, _081630EC @ =0x03001038
	mov r9, r0
	ldr r1, _081630F0 @ =0x0819832C
	ldr r0, _081630F4 @ =0x08198220
	subs r7, r1, r0
	mov r1, r9
	ldr r2, [r1, #0x00]
	adds r2, r2, r7
	mov r1, r8
	subs r0, r1, r6
	muls r0, r3
	adds r1, r4, #0x0
	bl _call_via_r2
	adds r0, r6, r0
	str r0, [r5, #0x00]
	ldr r4, [r5, #0x14]
	ldr r0, [r5, #0x0C]
	ldr r1, [r5, #0x28]
	ldr r3, [r5, #0x2C]
	cmp r1, #0x00
	bgt _081630AE
	movs r1, #0x01
_081630AE:
	cmp r3, #0x00
	bge _081630B4
	movs r3, #0x00
_081630B4:
	cmp r3, r1
	ble _081630BA
	adds r3, r1, #0x0
_081630BA:
	mov r6, r9
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	subs r0, r0, r4
	muls r0, r3
	bl _call_via_r2
	adds r0, r4, r0
_081630CA:
	str r0, [r5, #0x04]
_081630CC:
	ldr r0, [r5, #0x00]
	asrs r0, r0, #0x08
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x04]
	asrs r0, r0, #0x08
	str r0, [r5, #0x1C]
	movs r0, #0x00
_081630DA:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081630EC: .4byte 0x03001038
_081630F0: .4byte 0x0819832C
_081630F4: .4byte 0x08198220
	.byte 0x00, 0x04, 0x04, 0x49, 0x40, 0x0D, 0x80, 0x00, 0x20, 0x30, 0x09, 0x68, 0x09, 0x18, 0x08, 0x1C
	.byte 0x70, 0x47, 0x00, 0x00, 0xC0, 0x0F, 0x00, 0x03
