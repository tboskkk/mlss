	.include "asm/macros.inc"

	.syntax unified
	.text

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
