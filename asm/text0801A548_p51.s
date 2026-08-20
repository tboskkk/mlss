	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_801DA4C
sub_801DA4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x004]
	ldr r1, [r0, #0x08]
	ldr r6, [r0, #0x00]
	movs r5, #0x00
	ldr r0, [sp, #0x004]
	lsls r0, r0, #0x04
	mov r10, r0
	ldr r0, [sp, #0x004]
	mov r2, r10
	orrs r0, r2
	lsls r0, r0, #0x18
	str r0, [sp, #0x000]
_0801DA74:
	ldrh r0, [r1, #0x00]
	movs r3, #0x00
	ldsh r2, [r1, r3]
	ldrh r4, [r1, #0x02]
	movs r7, #0x02
	ldsh r3, [r1, r7]
	adds r5, #0x01
	mov r8, r5
	adds r1, #0x04
	mov r9, r1
	movs r1, #0x80
	adds r1, r1, r6
	mov r12, r1
	cmp r2, r3
	bgt _0801DB3A
	cmp r2, #0x00
	bge _0801DA98
	movs r0, #0x00
_0801DA98:
	cmp r3, #0xEF
	ble _0801DA9E
	movs r4, #0xEF
_0801DA9E:
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1F
	adds r0, r1, r0
	asrs r0, r0, #0x01
	adds r3, r6, r0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r1
	adds r0, #0x01
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r7, #0x01
	ands r1, r7
	cmp r1, #0x00
	beq _0801DAD4
	ldrb r0, [r3, #0x00]
	movs r1, #0x0F
	ands r1, r0
	mov r0, r10
	orrs r1, r0
	strb r1, [r3, #0x00]
	adds r3, #0x01
	lsls r0, r2, #0x10
	ldr r1, _0801DB54 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r2, r0, #0x10
_0801DAD4:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0x0
	cmp r1, #0x01
	ble _0801DB24
	ldr r2, [sp, #0x000]
	lsrs r4, r2, #0x18
	lsrs r0, r5, #0x1F
	adds r0, r1, r0
	asrs r2, r0, #0x01
	cmp r2, #0x00
	beq _0801DB24
	negs r1, r2
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0801DB14
	cmp r1, #0x03
	bge _0801DB0A
	cmp r1, #0x02
	bge _0801DB04
	strb r4, [r3, #0x00]
	adds r3, #0x01
	subs r2, #0x01
_0801DB04:
	strb r4, [r3, #0x00]
	adds r3, #0x01
	subs r2, #0x01
_0801DB0A:
	strb r4, [r3, #0x00]
	adds r3, #0x01
	subs r2, #0x01
	cmp r2, #0x00
	beq _0801DB24
_0801DB14:
	strb r4, [r3, #0x00]
	strb r4, [r3, #0x01]
	strb r4, [r3, #0x02]
	strb r4, [r3, #0x03]
	adds r3, #0x04
	subs r2, #0x04
	cmp r2, #0x00
	bne _0801DB14
_0801DB24:
	asrs r0, r5, #0x10
	movs r7, #0x01
	ands r0, r7
	cmp r0, #0x00
	beq _0801DB3A
	ldrb r1, [r3, #0x00]
	movs r0, #0xF0
	ands r0, r1
	ldr r1, [sp, #0x004]
	orrs r0, r1
	strb r0, [r3, #0x00]
_0801DB3A:
	mov r5, r8
	mov r1, r9
	mov r6, r12
	cmp r5, #0x9F
	ble _0801DA74
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801DB54: .4byte 0xFFFF0000
	thumb_func_start sub_801DB58
sub_801DB58:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r6, _0801DBF0 @ =0x04000208
	movs r0, #0x00
	strh r0, [r6, #0x00]
	ldr r0, [r5, #0x04]
	ldrh r1, [r5, #0x0C]
	movs r2, #0xC0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0xA0
	lsls r2, r2, #0x05
	mov r8, r2
	movs r4, #0x00
	str r4, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	movs r0, #0x01
	mov r9, r0
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	add r0, r8
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBF4 @ =0x06001400
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	movs r1, #0xA0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBF8 @ =0x06002800
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	strh r4, [r6, #0x00]
	ldr r0, [r5, #0x04]
	movs r1, #0xF0
	lsls r1, r1, #0x06
	adds r0, r0, r1
	ldrh r1, [r5, #0x0C]
	ldr r2, _0801DBFC @ =0x06003C00
	adds r1, r1, r2
	str r4, [sp, #0x000]
	mov r2, r8
	movs r3, #0x20
	bl sub_8018218
	mov r0, r9
	strh r0, [r6, #0x00]
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801DBF0: .4byte 0x04000208
_0801DBF4: .4byte 0x06001400
_0801DBF8: .4byte 0x06002800
_0801DBFC: .4byte 0x06003C00
	thumb_func_start sub_801DC00
sub_801DC00:
	push {lr}
	add sp, #-0x004
	adds r3, r1, #0x0
	lsls r1, r3, #0x04
	orrs r1, r3
	lsls r2, r3, #0x08
	orrs r1, r2
	lsls r2, r3, #0x0C
	orrs r1, r2
	lsls r2, r3, #0x10
	orrs r1, r2
	lsls r2, r3, #0x14
	orrs r1, r2
	lsls r2, r3, #0x18
	orrs r1, r2
	lsls r2, r3, #0x1C
	orrs r1, r2
	str r1, [sp, #0x000]
	ldr r1, [r0, #0x00]
	ldr r2, _0801DC34 @ =0x01001400
	mov r0, sp
	bl CpuFastSet
	add sp, #0x004
	pop {r0}
	bx r0
_0801DC34: .4byte 0x01001400
