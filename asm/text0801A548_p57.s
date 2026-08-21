	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8025ACC
sub_8025ACC:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	movs r0, #0x87
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r2, #0x88
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r3, #0x89
	lsls r3, r3, #0x01
	adds r1, r6, r3
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r0, #0x8A
	lsls r0, r0, #0x01
	adds r1, r6, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r2, #0x8B
	lsls r2, r2, #0x01
	adds r1, r6, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _08025B1A
	movs r3, #0x8D
	lsls r3, r3, #0x01
	adds r2, r6, r3
	ldrb r0, [r2, #0x00]
	movs r1, #0x00
	cmp r0, #0x00
	beq _08025B1C
_08025B1A:
	adds r1, r0, #0x0
_08025B1C:
	cmp r1, #0x00
	ble _08025BFA
	lsls r0, r1, #0x02
	adds r0, #0x28
	adds r4, r6, r0
	ldr r2, _08025C00 @ =0x0000010B
	adds r0, r6, r2
	ldrb r0, [r0, #0x00]
	subs r5, r0, r1
	cmp r5, #0x00
	beq _08025BFA
	movs r7, #0xCE
	lsls r7, r7, #0x02
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08025B7E
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x68
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r1, [r1, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r1, [r1, #0x00]
	adds r1, #0x70
	movs r3, #0x00
	ldsh r2, [r1, r3]
	adds r0, r0, r2
	ldr r3, [r1, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldm r4!, {r0}
	bl sub_804034C
	subs r5, #0x01
	cmp r5, #0x00
	beq _08025BFA
_08025B7E:
	ldr r0, [r4, #0x00]
	bl sub_80465D8
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x68
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x00]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x70
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	bl sub_804034C
	ldr r0, [r4, #0x04]
	bl sub_80465D8
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x68
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r2, #0x04]
	bl _call_via_r1
	ldr r0, [r4, #0x04]
	adds r1, r0, r7
	ldr r2, [r1, #0x00]
	adds r2, #0x70
	movs r3, #0x00
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x04]
	adds r1, r6, #0x0
	adds r1, #0x28
	movs r2, #0x00
	bl _call_via_r3
	ldr r0, [r4, #0x04]
	bl sub_804034C
	subs r5, #0x02
	adds r4, #0x08
	cmp r5, #0x00
	bne _08025B7E
_08025BFA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08025C00: .4byte 0x0000010B
	thumb_func_start sub_8025C04
sub_8025C04:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r2, r0, #0x0
	lsls r1, r1, #0x02
	adds r0, #0x28
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	movs r0, #0x00
	mov r8, r0
	ldr r1, _08025C88 @ =0x00000272
	adds r0, r4, r1
	ldrh r0, [r0, #0x00]
	lsrs r0, r0, #0x01
	ldr r1, [r4, #0x0C]
	subs r1, r1, r0
	mov r12, r1
	movs r3, #0x9C
	lsls r3, r3, #0x02
	adds r0, r4, r3
	movs r3, #0x00
	ldsh r1, [r0, r3]
	ldr r0, [r4, #0x10]
	adds r7, r0, r1
	ldr r5, [r4, #0x14]
	ldr r1, [r4, #0x18]
	cmp r1, #0x00
	bgt _08025C4C
	cmp r1, #0x00
	bge _08025C4E
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _08025C4E
_08025C4C:
	adds r5, r5, r1
_08025C4E:
	movs r6, #0x00
	adds r2, #0x28
	str r2, [sp, #0x008]
	ldr r0, _08025C8C @ =0x00000276
	mov r10, r0
	mov r1, r10
	adds r1, r4, r1
	str r1, [sp, #0x000]
	movs r2, #0x9D
	lsls r2, r2, #0x02
	mov r9, r2
	mov r3, r9
	adds r3, r4, r3
	str r3, [sp, #0x004]
_08025C6A:
	lsls r0, r6, #0x02
	ldr r1, [sp, #0x008]
	adds r0, r1, r0
	ldr r3, [r0, #0x00]
	ldr r2, _08025C88 @ =0x00000272
	adds r0, r3, r2
	ldrh r2, [r0, #0x00]
	lsrs r1, r2, #0x01
	ldr r0, [r3, #0x0C]
	subs r1, r0, r1
	cmp r1, r12
	bge _08025C90
	adds r0, r1, r2
	mov r1, r12
	b _08025C98
_08025C88: .4byte 0x00000272
_08025C8C: .4byte 0x00000276
_08025C90:
	ldr r2, _08025CBC @ =0x00000272
	adds r0, r4, r2
	ldrh r0, [r0, #0x00]
	add r0, r12
_08025C98:
	subs r0, r0, r1
	cmp r0, #0x00
	ble _08025D0A
	movs r1, #0x9C
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r2, #0x00
	ldsh r1, [r0, r2]
	ldr r0, [r3, #0x10]
	adds r1, r0, r1
	cmp r1, r7
	ble _08025CC0
	mov r2, r10
	adds r0, r3, r2
	ldrh r0, [r0, #0x00]
	subs r0, r1, r0
	subs r0, r7, r0
	b _08025CC8
_08025CBC: .4byte 0x00000272
_08025CC0:
	ldr r2, [sp, #0x000]
	ldrh r0, [r2, #0x00]
	subs r0, r7, r0
	subs r0, r1, r0
_08025CC8:
	cmp r0, #0x00
	ble _08025D0A
	ldr r2, [r3, #0x14]
	ldr r1, [r3, #0x18]
	cmp r1, #0x00
	bgt _08025CDE
	cmp r1, #0x00
	bge _08025CE0
	ldr r0, [r3, #0x40]
	cmp r0, #0x00
	bge _08025CE0
_08025CDE:
	adds r2, r2, r1
_08025CE0:
	cmp r2, r5
	bgt _08025CF0
	mov r1, r9
	adds r0, r3, r1
	ldrh r0, [r0, #0x00]
	adds r0, r2, r0
	subs r0, r0, r5
	b _08025CF8
_08025CF0:
	ldr r3, [sp, #0x004]
	ldrh r0, [r3, #0x00]
	adds r0, r5, r0
	subs r0, r0, r2
_08025CF8:
	cmp r0, #0x00
	blt _08025D0A
	movs r0, #0x01
	lsls r0, r6
	mov r1, r8
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08025D0A:
	adds r6, #0x01
	cmp r6, #0x01
	ble _08025C6A
	mov r0, r8
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
