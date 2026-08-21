	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_805EC04
sub_805EC04:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r7, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x8C
	ldr r3, [r5, #0x00]
	mov r12, r3
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r7, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	mov r3, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	ldr r3, [r5, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EC8C
	ldr r0, _0805EC9C @ =0x0805ECA1
	str r0, [r7, #0x4C]
	mov r3, r9
	strh r3, [r1, #0x00]
	subs r1, #0x0A
	movs r0, #0xC0
	lsls r0, r0, #0x01
	str r0, [r1, #0x00]
	subs r0, #0x71
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805EC8C:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EC9C: .4byte sub_805ECA0
	thumb_func_start sub_805ECA0
sub_805ECA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r0, #0xA8
	ldr r1, [r0, #0x00]
	movs r0, #0x84
	adds r0, r0, r7
	mov r10, r0
	ldr r2, [r0, #0x00]
	adds r2, r2, r1
	str r2, [r0, #0x00]
	adds r1, r7, #0x0
	adds r1, #0xAE
	str r1, [sp, #0x00C]
	movs r3, #0x00
	ldsh r1, [r1, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	adds r0, r7, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r7, #0x0
	adds r0, #0xB0
	movs r5, #0x00
	ldsh r4, [r0, r5]
	lsls r4, r4, #0x08
	subs r0, #0x0C
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	movs r3, #0x88
	adds r3, r3, r7
	mov r8, r3
	muls r0, r2
	bl __divsi3
	subs r4, r4, r0
	mov r5, r8
	str r4, [r5, #0x00]
	mov r0, r10
	ldr r1, [r0, #0x00]
	adds r6, r7, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r2, #0xB2
	adds r2, r2, r7
	mov r9, r2
	movs r5, #0x00
	ldsh r0, [r2, r5]
	str r0, [sp, #0x000]
	adds r5, r7, #0x0
	adds r5, #0xAC
	movs r2, #0x00
	ldsh r0, [r5, r2]
	str r0, [sp, #0x004]
	adds r0, r7, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	str r0, [sp, #0x008]
	adds r0, r7, #0x0
	adds r2, r4, #0x0
	bl sub_805F2D4
	mov r3, r10
	ldr r1, [r3, #0x00]
	mov r4, r8
	ldr r2, [r4, #0x00]
	ldr r0, [r6, #0x00]
	mov r8, r0
	mov r3, r9
	movs r4, #0x00
	ldsh r0, [r3, r4]
	str r0, [sp, #0x000]
	adds r0, r7, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r5, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r5, r1]
	subs r0, #0x18
	lsls r0, r0, #0x08
	mov r2, r10
	ldr r1, [r2, #0x00]
	cmp r1, r0
	ble _0805EDA4
	ldr r1, _0805ED80 @ =0x03000E15
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x00]
	ldr r3, _0805ED84 @ =0xFFFFFEE0
	adds r0, r0, r3
	str r0, [r6, #0x00]
	mov r4, r9
	ldrh r1, [r4, #0x00]
	movs r5, #0x00
	ldsh r0, [r4, r5]
	cmp r0, #0x00
	ble _0805ED88
	subs r0, r1, #0x1
	strh r0, [r4, #0x00]
	b _0805EDA4
	.byte 0x00, 0x00
_0805ED80: .4byte 0x03000E15
_0805ED84: .4byte 0xFFFFFEE0
_0805ED88:
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDA4:
	adds r0, r7, #0x0
	adds r0, #0x84
	adds r1, r7, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	ldr r0, [r0, #0x00]
	cmp r0, r1
	ble _0805EDD4
	ldr r0, [r7, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r7, #0x0
	bl sub_807C298
_0805EDD4:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_start sub_805EDE4
sub_805EDE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r5, #0x0
	adds r6, #0x84
	ldr r2, [r6, #0x00]
	ldr r0, _0805EEB4 @ =0xFFFFFD80
	adds r2, r2, r0
	str r2, [r6, #0x00]
	adds r0, r5, #0x0
	adds r0, #0xAE
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x08
	subs r2, r1, r2
	subs r0, #0x0E
	str r0, [sp, #0x00C]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	adds r0, r5, #0x0
	adds r0, #0xB0
	movs r3, #0x00
	ldsh r4, [r0, r3]
	lsls r4, r4, #0x08
	movs r0, #0xA4
	adds r0, r0, r5
	mov r10, r0
	ldr r0, [r0, #0x00]
	subs r0, r4, r0
	adds r7, r5, #0x0
	adds r7, #0x88
	muls r0, r2
	bl __divsi3
	subs r2, r4, r0
	str r2, [r7, #0x00]
	ldr r1, [r6, #0x00]
	movs r3, #0x8C
	adds r3, r3, r5
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	movs r3, #0x22
	mov r9, r3
	str r3, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r3, #0x00
	ldsh r0, [r4, r3]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EE5C
	adds r0, #0xFF
_0805EE5C:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	ldr r2, [r7, #0x00]
	mov r0, r8
	ldr r3, [r0, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	ldr r0, [r6, #0x00]
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r0, r1
	bge _0805EEA2
	str r1, [r6, #0x00]
	mov r3, r10
	ldr r0, [r3, #0x00]
	str r0, [r7, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	movs r0, #0x96
	strh r0, [r1, #0x00]
	ldr r0, _0805EEB8 @ =0x0805EEBD
	str r0, [r5, #0x4C]
_0805EEA2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805EEB4: .4byte 0xFFFFFD80
_0805EEB8: .4byte sub_805EEBC
	thumb_func_start sub_805EEBC
sub_805EEBC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r10, r7
	ldr r2, [r7, #0x00]
	adds r6, r4, #0x0
	adds r6, #0x8C
	ldr r3, [r6, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EEFC
	adds r0, #0xFF
_0805EEFC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	mov r7, r10
	ldr r2, [r7, #0x00]
	ldr r3, [r6, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805EF3C
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r0, _0805EF4C @ =0x0805EF51
	str r0, [r4, #0x4C]
_0805EF3C:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EF4C: .4byte sub_805EF50
	thumb_func_start sub_805EF50
sub_805EF50:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r0, #0x84
	adds r0, r0, r5
	mov r8, r0
	ldr r1, [r0, #0x00]
	adds r6, r5, #0x0
	adds r6, #0x88
	ldr r2, [r6, #0x00]
	movs r7, #0x8C
	adds r7, r7, r5
	mov r10, r7
	ldr r3, [r7, #0x00]
	movs r0, #0x22
	mov r9, r0
	str r0, [sp, #0x000]
	adds r4, r5, #0x0
	adds r4, #0xAC
	movs r7, #0x00
	ldsh r0, [r4, r7]
	str r0, [sp, #0x004]
	adds r0, r5, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805EF90
	adds r0, #0xFF
_0805EF90:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r5, #0x0
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_805F508
	ldrh r0, [r4, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xB2
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0805F016
	ldr r1, [r6, #0x00]
	ldr r0, _0805EFDC @ =0x00005FFF
	cmp r1, r0
	bgt _0805EFE0
	adds r1, r5, #0x0
	adds r1, #0xA4
	movs r0, #0x80
	lsls r0, r0, #0x06
	b _0805EFE6
	.byte 0x00, 0x00
_0805EFDC: .4byte 0x00005FFF
_0805EFE0:
	adds r1, r5, #0x0
	adds r1, #0xA4
	ldr r0, _0805F028 @ =0xFFFFE000
_0805EFE6:
	str r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA8
	ldr r1, [r1, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x10
	bl __divsi3
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r1, #0x02
	movs r0, #0x22
	strh r0, [r1, #0x00]
	ldr r0, _0805F02C @ =0x0805F035
	str r0, [r5, #0x4C]
	ldr r0, _0805F030 @ =0x0000010F
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0805F016:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F028: .4byte 0xFFFFE000
_0805F02C: .4byte sub_805F034
_0805F030: .4byte 0x0000010F
	thumb_func_start sub_805F034
sub_805F034:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r6, r4, #0x0
	adds r6, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r6, #0x00]
	subs r1, r0, r1
	str r1, [r6, #0x00]
	movs r7, #0x88
	adds r7, r7, r4
	mov r8, r7
	ldr r2, [r7, #0x00]
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F082
	adds r0, #0xFF
_0805F082:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	bl sub_805F2D4
	ldr r1, [r6, #0x00]
	mov r0, r8
	ldr r2, [r0, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x04
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, _0805F0C8 @ =0x000007FF
	cmp r1, r0
	bgt _0805F0B6
	ldr r0, _0805F0CC @ =0x0805F0D1
	str r0, [r4, #0x4C]
_0805F0B6:
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F0C8: .4byte 0x000007FF
_0805F0CC: .4byte sub_805F0D0
	thumb_func_start sub_805F0D0
sub_805F0D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xA4
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _0805F11C
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	ldr r7, _0805F118 @ =0xFFFFFF00
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	bgt _0805F14C
	b _0805F148
	.byte 0x00, 0x00
_0805F118: .4byte 0xFFFFFF00
_0805F11C:
	adds r3, r4, #0x0
	adds r3, #0x88
	ldr r0, [r3, #0x00]
	ldr r1, _0805F1C8 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x9C
	adds r1, r4, #0x0
	adds r1, #0xA8
	ldr r0, [r2, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	str r0, [r2, #0x00]
	ldr r0, [r5, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x01
	adds r0, r0, r7
	str r0, [r5, #0x00]
	adds r6, r3, #0x0
	cmp r0, #0x00
	blt _0805F14C
_0805F148:
	ldr r0, _0805F1CC @ =0x0805F1D1
	str r0, [r4, #0x4C]
_0805F14C:
	movs r0, #0x84
	adds r0, r0, r4
	mov r8, r0
	ldr r1, [r0, #0x00]
	ldr r7, [r6, #0x00]
	mov r12, r7
	movs r0, #0x8C
	adds r0, r0, r4
	mov r10, r0
	ldr r3, [r0, #0x00]
	movs r7, #0x22
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r7, #0x00
	ldsh r0, [r5, r7]
	str r0, [sp, #0x004]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	bge _0805F17A
	adds r0, #0xFF
_0805F17A:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r2, r12
	bl sub_805F2D4
	mov r0, r8
	ldr r1, [r0, #0x00]
	ldr r2, [r6, #0x00]
	mov r7, r10
	ldr r3, [r7, #0x00]
	mov r0, r9
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0xB0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r0, #0x51
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805F1C8: .4byte 0xFFFFFF00
_0805F1CC: .4byte sub_805F1D0
	thumb_func_start sub_805F1D0
sub_805F1D0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAE
	adds r7, r4, #0x0
	adds r7, #0x84
	movs r0, #0x00
	ldsh r1, [r1, r0]
	ldr r0, [r7, #0x00]
	adds r1, r0, r1
	str r1, [r7, #0x00]
	movs r2, #0x88
	adds r2, r2, r4
	mov r9, r2
	ldr r2, [r2, #0x00]
	movs r3, #0x8C
	adds r3, r3, r4
	mov r8, r3
	ldr r0, [r3, #0x00]
	mov r12, r0
	adds r6, r4, #0x0
	adds r6, #0xB0
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r5, r4, #0x0
	adds r5, #0xAC
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0805F220
	adds r0, #0xFF
_0805F220:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	adds r0, r4, #0x0
	mov r3, r12
	bl sub_805F2D4
	ldr r1, [r7, #0x00]
	mov r0, r9
	ldr r2, [r0, #0x00]
	mov r3, r8
	ldr r3, [r3, #0x00]
	mov r8, r3
	movs r3, #0x00
	ldsh r0, [r6, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	mov r3, r8
	bl sub_805F508
	ldrh r0, [r5, #0x00]
	adds r0, #0x02
	movs r1, #0xFF
	ands r0, r1
	strh r0, [r5, #0x00]
	adds r2, r4, #0x0
	adds r2, #0xA0
	ldr r0, [r2, #0x00]
	ldr r1, _0805F278 @ =0xFFFFD000
	adds r0, r0, r1
	ldr r1, [r7, #0x00]
	adds r5, r2, #0x0
	cmp r1, r0
	ble _0805F29C
	ldr r0, _0805F27C @ =0x03000E15
	movs r1, #0x02
	strb r1, [r0, #0x00]
	ldrh r1, [r6, #0x00]
	movs r2, #0x00
	ldsh r0, [r6, r2]
	cmp r0, #0x00
	ble _0805F280
	subs r0, r1, #0x1
	strh r0, [r6, #0x00]
	b _0805F29C
_0805F278: .4byte 0xFFFFD000
_0805F27C: .4byte 0x03000E15
_0805F280:
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F29C:
	adds r0, r4, #0x0
	adds r0, #0x84
	ldr r1, [r0, #0x00]
	ldr r0, [r5, #0x00]
	cmp r1, r0
	ble _0805F2C4
	ldr r0, [r4, #0x30]
	ldr r2, [r0, #0x30]
	adds r1, r2, #0x0
	adds r1, #0x9C
	movs r3, #0x01
	str r3, [r1, #0x00]
	ldr r1, [r2, #0x30]
	adds r1, #0x9C
	str r3, [r1, #0x00]
	bl sub_807C298
	adds r0, r4, #0x0
	bl sub_807C298
_0805F2C4:
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_805F2D4
sub_805F2D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r5, r0, #0x0
	str r1, [sp, #0x00C]
	mov r10, r2
	str r3, [sp, #0x010]
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0805F328
	ldr r6, _0805F48C @ =0x03000E14
	ldr r4, _0805F490 @ =0x03000E15
	ldrb r0, [r6, #0x00]
	ldrb r1, [r4, #0x00]
	cmp r0, r1
	beq _0805F328
	ldrb r1, [r4, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldrb r0, [r4, #0x00]
	strb r0, [r6, #0x00]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x02
	bne _0805F328
	ldr r2, [r5, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
_0805F328:
	ldr r2, _0805F494 @ =0x08198584
	mov r9, r2
	movs r1, #0xFF
	ldr r0, [sp, #0x03C]
	ands r0, r1
	lsls r7, r0, #0x01
	adds r0, r7, r2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F340
	adds r0, #0x3F
_0805F340:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r6
	adds r4, r1, #0x0
	ldr r0, [sp, #0x040]
	ands r4, r0
	lsls r3, r4, #0x01
	mov r1, r9
	adds r0, r3, r1
	movs r6, #0x00
	ldsh r0, [r0, r6]
	cmp r0, #0x00
	bge _0805F35E
	adds r0, #0x3F
_0805F35E:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F368
	adds r0, #0xFF
_0805F368:
	asrs r2, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r2
	ldr r1, _0805F498 @ =0x08198504
	adds r0, r3, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F37C
	adds r0, #0x3F
_0805F37C:
	asrs r0, r0, #0x06
	muls r0, r2
	ldr r3, [sp, #0x00C]
	adds r2, r0, r3
	str r2, [r5, #0x10]
	mov r0, r10
	adds r3, r6, r0
	str r3, [r5, #0x14]
	adds r0, r7, r1
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F398
	adds r0, #0x3F
_0805F398:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r6, [sp, #0x010]
	adds r1, r0, r6
	str r1, [r5, #0x18]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F3AC
	adds r0, #0xFF
_0805F3AC:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F3B8
	adds r0, #0xFF
_0805F3B8:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r1, #0x0
	cmp r0, #0x00
	bge _0805F3C4
	adds r0, #0xFF
_0805F3C4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	ldr r0, [r5, #0x30]
	ldr r1, [sp, #0x00C]
	str r1, [r0, #0x10]
	mov r2, r10
	str r2, [r0, #0x14]
	movs r1, #0x00
	str r1, [r0, #0x18]
	adds r5, #0x0C
	mov r8, r1
	cmp r5, #0x00
	beq _0805F47A
	str r4, [sp, #0x014]
_0805F3EC:
	mov r3, r8
	lsls r0, r3, #0x08
	movs r1, #0x0B
	bl __divsi3
	ldr r6, [sp, #0x03C]
	adds r0, r6, r0
	movs r1, #0xFF
	ands r0, r1
	lsls r0, r0, #0x01
	mov r12, r0
	add r0, r9
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bge _0805F40E
	adds r0, #0x3F
_0805F40E:
	asrs r0, r0, #0x06
	ldr r3, [sp, #0x038]
	adds r2, r0, #0x0
	muls r2, r3
	ldr r6, [sp, #0x014]
	lsls r4, r6, #0x01
	mov r1, r9
	adds r0, r4, r1
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F428
	adds r0, #0x3F
_0805F428:
	asrs r1, r0, #0x06
	adds r0, r2, #0x0
	cmp r2, #0x00
	bge _0805F432
	adds r0, #0xFF
_0805F432:
	asrs r3, r0, #0x08
	adds r6, r1, #0x0
	muls r6, r3
	ldr r7, _0805F498 @ =0x08198504
	adds r0, r4, r7
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bge _0805F446
	adds r0, #0x3F
_0805F446:
	asrs r0, r0, #0x06
	muls r0, r3
	ldr r2, [sp, #0x00C]
	adds r1, r0, r2
	mov r3, r10
	adds r2, r6, r3
	mov r6, r12
	adds r0, r6, r7
	movs r3, #0x00
	ldsh r0, [r0, r3]
	cmp r0, #0x00
	bge _0805F460
	adds r0, #0x3F
_0805F460:
	asrs r0, r0, #0x06
	ldr r6, [sp, #0x038]
	muls r0, r6
	ldr r3, [sp, #0x010]
	adds r0, r0, r3
	str r1, [r5, #0x04]
	str r2, [r5, #0x08]
	str r0, [r5, #0x0C]
	ldr r5, [r5, #0x00]
	movs r6, #0x01
	add r8, r6
	cmp r5, #0x00
	bne _0805F3EC
_0805F47A:
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805F48C: .4byte 0x03000E14
_0805F490: .4byte 0x03000E15
_0805F494: .4byte 0x08198584
_0805F498: .4byte 0x08198504
	thumb_func_start sub_805F49C
sub_805F49C:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r0, #0xAE
	movs r2, #0x00
	ldsh r1, [r0, r2]
	lsls r1, r1, #0x08
	str r1, [r4, #0x10]
	adds r0, #0x02
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r2, r0, #0x08
	str r2, [r4, #0x14]
	adds r0, r4, #0x0
	adds r0, #0xB2
	movs r3, #0x00
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	str r3, [r4, #0x18]
	cmp r1, #0x00
	bge _0805F4C8
	adds r1, #0xFF
_0805F4C8:
	asrs r0, r1, #0x08
	str r0, [sp, #0x000]
	adds r0, r2, #0x0
	cmp r0, #0x00
	bge _0805F4D4
	adds r0, #0xFF
_0805F4D4:
	asrs r0, r0, #0x08
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	cmp r0, #0x00
	bge _0805F4E0
	adds r0, #0xFF
_0805F4E0:
	asrs r0, r0, #0x08
	str r0, [sp, #0x008]
	add r1, sp, #0x004
	add r2, sp, #0x008
	mov r0, sp
	movs r3, #0x00
	bl sub_807FC08
	adds r0, r4, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805F500
	adds r0, r4, #0x0
	bl sub_807C298
_0805F500:
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
