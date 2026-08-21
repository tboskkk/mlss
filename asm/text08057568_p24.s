	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8167B44
sub_8167B44:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	mov r9, r0
	ldr r0, [r0, #0x3C]
	ldr r0, [r0, #0x04]
	mov r10, r0
	mov r1, r9
	ldr r0, [r1, #0x6C]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _08167B66
	b _08167CE2
_08167B66:
	mov r1, r9
	ldr r0, [r1, #0x44]
	bl sub_8165404
	movs r0, #0x00
	mov r8, r0
	movs r7, #0x00
	mov r1, r9
	ldr r2, [r1, #0x40]
	movs r6, #0x0E
_08167B7A:
	ldr r0, [r2, #0x00]
	adds r7, r7, r0
	ldr r0, [r2, #0x04]
	ldr r1, [r2, #0x08]
	adds r0, r0, r1
	add r8, r0
	adds r1, r2, #0x0
	adds r1, #0x0C
	ldr r0, [r2, #0x0C]
	adds r7, r7, r0
	ldr r0, [r1, #0x04]
	ldr r1, [r1, #0x08]
	adds r0, r0, r1
	add r8, r0
	adds r1, r2, #0x0
	adds r1, #0x18
	ldr r0, [r2, #0x18]
	adds r7, r7, r0
	ldr r0, [r1, #0x04]
	ldr r1, [r1, #0x08]
	adds r0, r0, r1
	add r8, r0
	adds r1, r2, #0x0
	adds r1, #0x24
	ldr r0, [r2, #0x24]
	adds r7, r7, r0
	ldr r0, [r1, #0x04]
	ldr r1, [r1, #0x08]
	adds r0, r0, r1
	add r8, r0
	adds r1, r2, #0x0
	adds r1, #0x30
	ldr r0, [r2, #0x30]
	adds r7, r7, r0
	ldr r0, [r1, #0x04]
	ldr r1, [r1, #0x08]
	adds r0, r0, r1
	add r8, r0
	adds r2, #0x3C
	subs r6, #0x05
	cmp r6, #0x00
	bge _08167B7A
	ldr r5, _08167CF4 @ =0x03001038
	ldr r4, _08167CF8 @ =0x0819832C
	ldr r0, _08167CFC @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	adds r0, r7, #0x0
	movs r1, #0x0F
	bl _call_via_r2
	negs r0, r0
	asrs r0, r0, #0x08
	adds r7, r0, #0x0
	adds r7, #0x40
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	mov r0, r8
	movs r1, #0x0F
	bl _call_via_r2
	mov r1, r10
	subs r0, r1, r0
	asrs r0, r0, #0x08
	adds r0, #0x40
	mov r8, r0
	mov r1, r9
	ldr r0, [r1, #0x44]
	adds r1, r7, #0x0
	mov r2, r8
	bl sub_816544C
	movs r6, #0x00
_08167C0E:
	mov r0, r9
	ldr r3, [r0, #0x40]
	lsls r1, r6, #0x01
	adds r1, r1, r6
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [sp, #0x000]
	adds r2, r3, #0x0
	adds r2, #0x08
	adds r1, r2, r1
	ldr r0, [r1, #0x00]
	mov r1, r10
	subs r0, r0, r1
	asrs r0, r0, #0x08
	add r0, r8
	str r0, [sp, #0x004]
	adds r4, r6, #0x1
	lsls r1, r4, #0x01
	adds r1, r1, r4
	lsls r1, r1, #0x02
	adds r3, r3, r1
	ldr r0, [r3, #0x00]
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [sp, #0x008]
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	mov r1, r10
	subs r0, r0, r1
	asrs r0, r0, #0x08
	add r0, r8
	str r0, [sp, #0x00C]
	mov r1, r9
	ldr r0, [r1, #0x44]
	mov r1, sp
	movs r2, #0x01
	bl sub_8165350
	adds r6, r4, #0x0
	cmp r6, #0x0D
	ble _08167C0E
	movs r6, #0x00
_08167C68:
	mov r0, r9
	ldr r2, [r0, #0x40]
	lsls r1, r6, #0x01
	adds r1, r1, r6
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [sp, #0x000]
	adds r4, r2, #0x4
	adds r0, r4, r1
	adds r3, r2, #0x0
	adds r3, #0x08
	adds r1, r3, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	mov r1, r10
	subs r0, r0, r1
	asrs r0, r0, #0x08
	add r0, r8
	str r0, [sp, #0x004]
	adds r5, r6, #0x1
	lsls r1, r5, #0x01
	adds r1, r1, r5
	lsls r1, r1, #0x02
	adds r2, r2, r1
	ldr r0, [r2, #0x00]
	asrs r0, r0, #0x08
	adds r0, r7, r0
	str r0, [sp, #0x008]
	adds r4, r4, r1
	adds r3, r3, r1
	ldr r0, [r4, #0x00]
	ldr r1, [r3, #0x00]
	adds r0, r0, r1
	mov r1, r10
	subs r0, r0, r1
	asrs r0, r0, #0x08
	add r0, r8
	str r0, [sp, #0x00C]
	mov r0, r9
	ldr r1, [r0, #0x44]
	movs r0, #0x02
	ands r0, r6
	movs r2, #0x03
	cmp r0, #0x00
	beq _08167CCC
	movs r2, #0x02
_08167CCC:
	adds r0, r1, #0x0
	mov r1, sp
	bl sub_8165350
	adds r6, r5, #0x0
	cmp r6, #0x0D
	ble _08167C68
	mov r1, r9
	ldr r0, [r1, #0x44]
	bl sub_8165420
_08167CE2:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08167CF4: .4byte 0x03001038
_08167CF8: .4byte 0x0819832C
_08167CFC: .4byte 0x08198220
	thumb_func_start sub_8167D00
sub_8167D00:
	push {r4, r5, lr}
	ldr r5, [r0, #0x14]
	bl sub_8020A78
	ldr r2, _08167D3C @ =0x03000D48
	ldr r4, _08167D40 @ =0x0203FFB8
	ldr r0, [r4, #0x3C]
	ldr r3, _08167D44 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r2, _08167D48 @ =0x03000D4C
	ldr r0, [r4, #0x3C]
	ldr r4, _08167D4C @ =0x0300034C
	movs r1, #0x88
	lsls r1, r1, #0x04
	adds r4, r4, r1
	ldr r1, [r4, #0x00]
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	str r0, [r4, #0x00]
	adds r0, r5, #0x0
	bl sub_8167B44
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08167D3C: .4byte 0x03000D48
_08167D40: .4byte 0x0203FFB8
_08167D44: .4byte 0x00000A14
_08167D48: .4byte 0x03000D4C
_08167D4C: .4byte 0x0300034C
	thumb_func_start sub_8167D50
sub_8167D50:
	push {r4, lr}
	adds r4, r1, #0x0
	ldr r0, [r4, #0x18]
	subs r0, r0, r2
	lsls r0, r0, #0x08
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x20]
	subs r1, r1, r3
	lsls r1, r1, #0x08
	asrs r1, r1, #0x10
	bl sub_81DA690
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	lsrs r0, r0, #0x0D
	ldr r1, _08167D88 @ =0x0821422C
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, #0x52
	strh r0, [r4, #0x00]
	pop {r4}
	pop {r0}
	bx r0
_08167D88: .4byte 0x0821422C
	thumb_func_start sub_8167D8C
sub_8167D8C:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x6C]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08167DE6
	ldr r0, [r5, #0x28]
	ldr r3, [r0, #0x18]
	ldr r2, [r0, #0x1C]
	ldr r1, [r0, #0x3C]
	adds r2, r2, r1
	ldr r0, [r0, #0x20]
	ldr r1, [r5, #0x40]
	mov r12, r1
	ldr r4, _08167DEC @ =0xFFFFF800
	adds r2, r2, r4
	str r3, [r1, #0x00]
	str r2, [r1, #0x04]
	str r0, [r1, #0x08]
	ldr r0, [r5, #0x2C]
	ldr r3, [r0, #0x18]
	ldr r2, [r0, #0x1C]
	ldr r1, [r0, #0x3C]
	adds r2, r2, r1
	ldr r1, [r0, #0x20]
	adds r2, r2, r4
	mov r0, r12
	adds r0, #0xA8
	str r3, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r1, [r0, #0x00]
	movs r2, #0x8D
	lsls r2, r2, #0x02
	add r2, r12
	ldr r0, _08167DF0 @ =0x08001DF8
	ldr r1, _08167DF4 @ =0x08001DF8
	subs r0, r0, r1
	ldr r1, [r2, #0x00]
	adds r1, r1, r0
	mov r0, r12
	bl _call_via_r1
_08167DE6:
	pop {r4, r5}
	pop {r0}
	bx r0
_08167DEC: .4byte 0xFFFFF800
_08167DF0: .4byte 0x08001DF8
_08167DF4: .4byte 0x08001DF8
