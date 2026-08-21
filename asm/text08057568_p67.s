	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8151158
sub_8151158:
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0x0
	mov r12, r1
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsrs r7, r0, #0x01
	adds r0, r2, #0x0
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsrs r5, r0, #0x01
	mov r0, r12
	adds r0, #0x28
	ldrb r0, [r0, #0x00]
	lsrs r6, r0, #0x01
	mov r0, r12
	adds r0, #0x29
	ldrb r0, [r0, #0x00]
	lsrs r4, r0, #0x01
	ldr r1, [r2, #0x04]
	mov r3, r12
	ldr r0, [r3, #0x04]
	cmp r1, r0
	ble _0815118A
	subs r0, r1, r0
	b _08151190
_0815118A:
	cmp r1, r0
	bge _08151196
	subs r0, r0, r1
_08151190:
	lsls r0, r0, #0x08
	lsrs r3, r0, #0x10
	b _08151198
_08151196:
	movs r3, #0x00
_08151198:
	ldr r1, [r2, #0x08]
	asrs r1, r1, #0x08
	subs r1, r1, r5
	mov r2, r12
	ldr r0, [r2, #0x08]
	asrs r0, r0, #0x08
	subs r0, r0, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _081511B6
	subs r0, r1, r0
	b _081511BC
_081511B6:
	cmp r1, r0
	bge _081511C2
	subs r0, r0, r1
_081511BC:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _081511C4
_081511C2:
	movs r2, #0x00
_081511C4:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r7, r6
	cmp r0, r1
	bgt _081511DC
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, r4
	cmp r0, r1
	bgt _081511DC
	movs r0, #0x01
	b _081511DE
_081511DC:
	movs r0, #0x00
_081511DE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
