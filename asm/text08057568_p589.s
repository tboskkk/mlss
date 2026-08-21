	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_813A5C8
sub_813A5C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x010
	adds r6, r0, #0x0
	mov r10, r2
	lsls r1, r1, #0x10
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r6, r2
	ldr r2, [r0, #0x00]
	ldr r3, [r6, #0x0C]
	ldr r4, [r6, #0x10]
	lsrs r7, r1, #0x08
	movs r5, #0x00
	mov r8, r5
	subs r0, r3, r7
	str r0, [sp, #0x004]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	ldr r5, [sp, #0x004]
	cmp r5, r0
	ble _0813A608
	movs r1, #0x00
	movs r0, #0x01
	mov r8, r0
	mov r0, sp
	strb r1, [r0, #0x00]
_0813A608:
	subs r1, r4, r7
	str r1, [sp, #0x008]
	movs r5, #0x00
	ldsh r0, [r2, r5]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	cmp r1, r0
	ble _0813A630
	mov r1, r8
	lsls r0, r1, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r0, r5
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813A630:
	adds r3, r3, r7
	str r3, [sp, #0x00C]
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x0C
	adds r2, #0x02
	cmp r3, r0
	bge _0813A658
	mov r1, r8
	lsls r0, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x02
	strb r0, [r1, #0x00]
_0813A658:
	adds r4, r4, r7
	mov r9, r4
	movs r4, #0x00
	ldsh r0, [r2, r4]
	lsls r0, r0, #0x0C
	cmp r9, r0
	bge _0813A67E
	mov r1, r8
	lsls r0, r1, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x11
	adds r0, r0, r5
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
_0813A67E:
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0813A68E
	movs r0, #0x01
	negs r0, r0
	b _0813A7F8
_0813A68E:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	add r0, sp
	ldrb r0, [r0, #0x00]
	mov r8, r0
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r2, r6, r3
	ldr r0, [r6, #0x0C]
	str r0, [r2, #0x00]
	movs r4, #0xB0
	lsls r4, r4, #0x02
	adds r3, r6, r4
	ldr r0, [r6, #0x10]
	str r0, [r3, #0x00]
	mov r5, r8
	lsls r0, r5, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0x01
	beq _0813A6E4
	cmp r5, #0x01
	bgt _0813A6C8
	cmp r5, #0x00
	beq _0813A6D2
	b _0813A79A
_0813A6C8:
	cmp r5, #0x02
	beq _0813A6F8
	cmp r5, #0x03
	beq _0813A754
	b _0813A79A
_0813A6D2:
	movs r0, #0xB3
	lsls r0, r0, #0x02
	adds r1, r6, r0
	ldr r3, [sp, #0x004]
	str r3, [r1, #0x00]
	movs r4, #0xB4
	lsls r4, r4, #0x02
	adds r0, r6, r4
	b _0813A70A
_0813A6E4:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r6, r5
	ldr r0, [sp, #0x008]
	b _0813A766
_0813A6F8:
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r1, r6, r3
	ldr r4, [sp, #0x00C]
	str r4, [r1, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r0, r6, r5
	movs r5, #0x00
_0813A70A:
	str r5, [r0, #0x00]
	ldr r0, [r1, #0x00]
	ldr r1, [r2, #0x00]
	subs r0, r0, r1
	ldr r1, _0813A744 @ =0x00000242
	adds r4, r6, r1
	strh r0, [r4, #0x00]
	ldr r2, _0813A748 @ =0x03001038
	ldr r0, _0813A74C @ =0x0819832C
	ldr r1, _0813A750 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	bl __divsi3
	strh r0, [r4, #0x00]
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r0, r6, r3
	strh r5, [r0, #0x00]
	b _0813A79A
	.byte 0x00, 0x00
_0813A744: .4byte 0x00000242
_0813A748: .4byte 0x03001038
_0813A74C: .4byte 0x0819832C
_0813A750: .4byte 0x08198220
_0813A754:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r6, r4
	movs r2, #0x00
	str r2, [r0, #0x00]
	movs r5, #0xB4
	lsls r5, r5, #0x02
	adds r1, r6, r5
	mov r0, r9
_0813A766:
	str r0, [r1, #0x00]
	subs r4, #0x8A
	adds r0, r6, r4
	strh r2, [r0, #0x00]
	ldr r0, [r1, #0x00]
	ldr r1, [r3, #0x00]
	subs r0, r0, r1
	subs r5, #0x8C
	adds r4, r6, r5
	strh r0, [r4, #0x00]
	ldr r2, _0813A7C4 @ =0x03001038
	ldr r0, _0813A7C8 @ =0x0819832C
	ldr r1, _0813A7CC @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r4, r2]
	bl __divsi3
	strh r0, [r4, #0x00]
_0813A79A:
	ldr r4, _0813A7D0 @ =0x00000242
	adds r3, r6, r4
	movs r5, #0x91
	lsls r5, r5, #0x02
	adds r2, r6, r5
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813A7D4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813A7D6
_0813A7C4: .4byte 0x03001038
_0813A7C8: .4byte 0x0819832C
_0813A7CC: .4byte 0x08198220
_0813A7D0: .4byte 0x00000242
_0813A7D4:
	movs r0, #0xFF
_0813A7D6:
	strb r0, [r6, #0x02]
	ldr r2, _0813A808 @ =0x03001038
	ldr r0, _0813A80C @ =0x0819832C
	ldr r1, _0813A810 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r7, #0x0
	mov r1, r10
	bl _call_via_r2
	ldr r4, _0813A814 @ =0x000002DE
	adds r1, r6, r4
	strh r0, [r1, #0x00]
	mov r5, r8
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
_0813A7F8:
	add sp, #0x010
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0813A808: .4byte 0x03001038
_0813A80C: .4byte 0x0819832C
_0813A810: .4byte 0x08198220
_0813A814: .4byte 0x000002DE
	thumb_func_start sub_813A818
sub_813A818:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	str r2, [sp, #0x004]
	lsls r1, r1, #0x10
	movs r2, #0xDA
	lsls r2, r2, #0x01
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r3, [r7, #0x0C]
	mov r10, r3
	ldr r6, [r7, #0x10]
	lsrs r5, r1, #0x08
	movs r4, #0x00
	ldsh r2, [r0, r4]
	lsls r2, r2, #0x0C
	adds r0, #0x02
	movs r3, #0x00
	ldsh r1, [r0, r3]
	lsls r3, r1, #0x0C
	adds r0, #0x02
	movs r4, #0x00
	ldsh r1, [r0, r4]
	lsls r1, r1, #0x0C
	mov r12, r1
	movs r1, #0x02
	ldsh r0, [r0, r1]
	lsls r4, r0, #0x0C
	movs r0, #0x00
	mov r9, r0
	mov r1, r10
	subs r0, r1, r5
	cmp r0, r2
	ble _0813A892
	subs r0, r6, r5
	cmp r0, r3
	ble _0813A874
	movs r1, #0x00
	movs r2, #0x01
	mov r9, r2
	mov r0, sp
	strb r1, [r0, #0x00]
_0813A874:
	adds r0, r6, r5
	cmp r0, r4
	bge _0813A892
	mov r1, r9
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813A892:
	mov r0, r10
	adds r0, r0, r5
	mov r8, r0
	cmp r8, r12
	bge _0813A8D8
	subs r0, r6, r5
	cmp r0, r3
	ble _0813A8BA
	mov r1, r9
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x02
	strb r0, [r1, #0x00]
_0813A8BA:
	adds r0, r6, r5
	cmp r0, r4
	bge _0813A8D8
	mov r1, r9
	lsls r0, r1, #0x18
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r1, sp
	movs r0, #0x03
	strb r0, [r1, #0x00]
_0813A8D8:
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0x00
	bne _0813A8E8
	movs r0, #0x01
	negs r0, r0
	b _0813AA3C
_0813A8E8:
	bl sub_8199F30
	adds r1, r0, #0x0
	adds r0, r4, #0x0
	bl sub_81DD77C
	add r0, sp
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xAF
	lsls r0, r0, #0x02
	adds r1, r7, r0
	ldr r0, [r7, #0x0C]
	str r0, [r1, #0x00]
	movs r2, #0xB0
	lsls r2, r2, #0x02
	adds r1, r7, r2
	ldr r0, [r7, #0x10]
	str r0, [r1, #0x00]
	mov r3, r9
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x01
	beq _0813A942
	cmp r0, #0x01
	bgt _0813A922
	cmp r0, #0x00
	beq _0813A92C
	b _0813A97E
_0813A922:
	cmp r0, #0x02
	beq _0813A956
	cmp r0, #0x03
	beq _0813A96A
	b _0813A97E
_0813A92C:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r7, r4
	mov r2, r10
	subs r0, r2, r5
	str r0, [r1, #0x00]
	movs r3, #0xB4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	subs r0, r6, r5
	b _0813A97C
_0813A942:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r1, r7, r4
	mov r2, r10
	subs r0, r2, r5
	str r0, [r1, #0x00]
	movs r3, #0xB4
	lsls r3, r3, #0x02
	adds r1, r7, r3
	b _0813A97A
_0813A956:
	movs r4, #0xB3
	lsls r4, r4, #0x02
	adds r0, r7, r4
	mov r1, r8
	str r1, [r0, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r1, r7, r2
	subs r0, r6, r5
	b _0813A97C
_0813A96A:
	movs r3, #0xB3
	lsls r3, r3, #0x02
	adds r0, r7, r3
	mov r4, r8
	str r4, [r0, #0x00]
	movs r0, #0xB4
	lsls r0, r0, #0x02
	adds r1, r7, r0
_0813A97A:
	adds r0, r6, r5
_0813A97C:
	str r0, [r1, #0x00]
_0813A97E:
	movs r1, #0xB3
	lsls r1, r1, #0x02
	adds r0, r7, r1
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x0C]
	subs r0, r0, r1
	ldr r2, _0813AA08 @ =0x00000242
	adds r2, r2, r7
	mov r8, r2
	strh r0, [r2, #0x00]
	ldr r3, _0813AA0C @ =0x03001038
	mov r10, r3
	ldr r4, _0813AA10 @ =0x0819832C
	ldr r0, _0813AA14 @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r3, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	mov r2, r8
	movs r3, #0x00
	ldsh r0, [r2, r3]
	bl __divsi3
	mov r1, r8
	strh r0, [r1, #0x00]
	movs r2, #0xB4
	lsls r2, r2, #0x02
	adds r0, r7, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r7, #0x10]
	subs r0, r0, r1
	movs r3, #0x91
	lsls r3, r3, #0x02
	adds r6, r7, r3
	strh r0, [r6, #0x00]
	mov r0, r10
	ldr r2, [r0, #0x00]
	adds r2, r2, r4
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	adds r1, r0, #0x0
	movs r2, #0x00
	ldsh r0, [r6, r2]
	bl __divsi3
	strh r0, [r6, #0x00]
	mov r3, r8
	ldrh r1, [r3, #0x00]
	orrs r0, r1
	lsls r0, r0, #0x10
	cmp r0, #0x00
	beq _0813AA18
	movs r4, #0x00
	ldsh r0, [r3, r4]
	movs r2, #0x00
	ldsh r1, [r6, r2]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AA1A
_0813AA08: .4byte 0x00000242
_0813AA0C: .4byte 0x03001038
_0813AA10: .4byte 0x0819832C
_0813AA14: .4byte 0x08198220
_0813AA18:
	movs r0, #0xFF
_0813AA1A:
	strb r0, [r7, #0x02]
	ldr r2, _0813AA4C @ =0x03001038
	ldr r0, _0813AA50 @ =0x0819832C
	ldr r1, _0813AA54 @ =0x08198220
	subs r0, r0, r1
	ldr r2, [r2, #0x00]
	adds r2, r2, r0
	adds r0, r5, #0x0
	ldr r1, [sp, #0x004]
	bl _call_via_r2
	ldr r3, _0813AA58 @ =0x000002DE
	adds r1, r7, r3
	strh r0, [r1, #0x00]
	mov r4, r9
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
_0813AA3C:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0813AA4C: .4byte 0x03001038
_0813AA50: .4byte 0x0819832C
_0813AA54: .4byte 0x08198220
_0813AA58: .4byte 0x000002DE
	thumb_func_start sub_813AA5C
sub_813AA5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x00C
	mov r8, r1
	adds r1, r2, #0x0
	ldr r0, [sp, #0x028]
	ldr r6, [sp, #0x02C]
	ldr r2, [sp, #0x030]
	ldr r4, [sp, #0x034]
	ldr r5, [sp, #0x038]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	mov r0, r8
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813AEAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xFF
	bne _0813AAA8
	b _0813ABB8
_0813AAA8:
	lsls r0, r7, #0x18
	lsrs r7, r0, #0x10
	movs r0, #0x0A
	ands r0, r4
	cmp r0, #0x00
	beq _0813AB30
	movs r0, #0x05
	ands r0, r4
	cmp r0, #0x00
	beq _0813AAFC
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	movs r3, #0x01
	ands r0, r3
	cmp r0, #0x00
	beq _0813AAE6
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _0813AADE
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB0A
_0813AADE:
	negs r1, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB22
_0813AAE6:
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0813AAF4
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB46
_0813AAF4:
	negs r2, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	b _0813AB5E
_0813AAFC:
	movs r0, #0x02
	ands r4, r0
	cmp r4, #0x00
	beq _0813AB1A
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB0A:
	mov r0, r8
	adds r1, r7, #0x0
	movs r2, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x02
	b _0813AB6A
_0813AB1A:
	negs r1, r7
	mov r4, sp
	movs r0, #0x01
	strb r0, [r4, #0x00]
_0813AB22:
	mov r0, r8
	movs r2, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x00
	b _0813AB6A
_0813AB30:
	movs r0, #0x05
	ands r0, r4
	cmp r0, #0x00
	beq _0813AB6A
	movs r0, #0x04
	ands r4, r0
	cmp r4, #0x00
	beq _0813AB56
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB46:
	mov r0, r8
	movs r1, #0x00
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x01
	b _0813AB6A
_0813AB56:
	negs r2, r7
	mov r1, sp
	movs r0, #0x01
	strb r0, [r1, #0x00]
_0813AB5E:
	mov r0, r8
	movs r1, #0x00
	mov r3, r9
	bl sub_813A284
	movs r4, #0x03
_0813AB6A:
	ldr r3, _0813AB94 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AB98
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AB9A
_0813AB94: .4byte 0x00000242
_0813AB98:
	movs r0, #0xFF
_0813AB9A:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813ABB4 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	bne _0813AC0E
	b _0813AC30
_0813ABB4: .4byte 0x00000242
_0813ABB8:
	mov r0, r8
	adds r1, r7, #0x0
	mov r2, r9
	bl sub_813A5C8
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _0813ABF0 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813ABF4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813ABF6
_0813ABF0: .4byte 0x00000242
_0813ABF4:
	movs r0, #0xFF
_0813ABF6:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813AC2C @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AC30
_0813AC0E:
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813AC34
_0813AC2C: .4byte 0x00000242
_0813AC30:
	movs r3, #0x01
	negs r3, r3
_0813AC34:
	mov r2, r8
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813AC5C
sub_813AC5C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	mov r8, r1
	adds r1, r2, #0x0
	ldr r0, [sp, #0x02C]
	ldr r6, [sp, #0x030]
	ldr r2, [sp, #0x034]
	ldr r4, [sp, #0x038]
	ldr r5, [sp, #0x03C]
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x01
	mov r10, r0
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	str r2, [sp, #0x000]
	str r4, [sp, #0x004]
	str r5, [sp, #0x008]
	mov r0, r8
	adds r2, r7, #0x0
	adds r3, r6, #0x0
	bl sub_813AEAC
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xFF
	beq _0813AD4A
	cmp r4, #0x02
	beq _0813ACB4
	cmp r4, #0x08
	bne _0813AD4A
_0813ACB4:
	cmp r4, #0x01
	beq _0813ACC0
	cmp r4, #0x04
	beq _0813ACC0
	movs r1, #0x00
	mov r10, r1
_0813ACC0:
	mov r3, r10
	cmp r3, #0x00
	beq _0813AD4A
	movs r0, #0x02
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD08
	movs r1, #0x01
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _0813ACEC
	negs r2, r7
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x00
	b _0813AD58
_0813ACEC:
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	mov r0, sp
	strb r1, [r0, #0x00]
	mov r0, r8
	adds r1, r7, #0x0
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x01
	b _0813AD58
_0813AD08:
	movs r0, #0x08
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	movs r3, #0x01
	adds r0, r4, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _0813AD2E
	negs r2, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	mov r0, r8
	adds r1, r2, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x03
	b _0813AD58
_0813AD2E:
	movs r0, #0x04
	ands r0, r4
	cmp r0, #0x00
	beq _0813AD58
	negs r1, r7
	mov r0, sp
	strb r3, [r0, #0x00]
	mov r0, r8
	adds r2, r7, #0x0
	mov r3, r9
	bl sub_813A284
	movs r4, #0x02
	b _0813AD58
_0813AD4A:
	mov r0, r8
	adds r1, r7, #0x0
	mov r2, r9
	bl sub_813A818
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0813AD58:
	ldr r3, _0813AD84 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813AD88
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x10
	lsrs r0, r0, #0x08
	b _0813AD8A
	.byte 0x00, 0x00
_0813AD84: .4byte 0x00000242
_0813AD88:
	movs r0, #0xFF
_0813AD8A:
	mov r1, r8
	strb r0, [r1, #0x02]
	ldr r3, _0813ADC0 @ =0x00000242
	add r3, r8
	movs r2, #0x91
	lsls r2, r2, #0x02
	add r2, r8
	ldrh r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	orrs r0, r1
	cmp r0, #0x00
	beq _0813ADC4
	movs r1, #0x00
	ldsh r0, [r3, r1]
	movs r3, #0x00
	ldsh r1, [r2, r3]
	bl sub_80E9594
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x05
	adds r0, r0, r1
	asrs r3, r0, #0x0D
	movs r0, #0x07
	ands r3, r0
	b _0813ADC8
_0813ADC0: .4byte 0x00000242
_0813ADC4:
	movs r3, #0x01
	negs r3, r3
_0813ADC8:
	mov r2, r8
	adds r2, #0x24
	movs r0, #0x07
	ands r3, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x00]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_start sub_813ADF0
sub_813ADF0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	ldr r6, _0813AE7C @ =0x03001038
	ldr r1, _0813AE80 @ =0x0819832C
	ldr r0, _0813AE84 @ =0x08198220
	subs r7, r1, r0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r1, #0xB5
	lsls r1, r1, #0x02
	adds r0, r5, r1
	movs r3, #0xB1
	lsls r3, r3, #0x02
	adds r1, r5, r3
	ldr r0, [r0, #0x00]
	ldr r1, [r1, #0x00]
	subs r0, r0, r1
	movs r1, #0x04
	bl _call_via_r2
	adds r4, r0, #0x0
	cmp r4, #0x00
	beq _0813AE44
	adds r0, r4, #0x0
	muls r0, r4
	ldr r1, [r6, #0x00]
	bl _call_via_r1
	adds r1, r0, #0x0
	ldr r2, [r6, #0x00]
	adds r2, r2, r7
	movs r3, #0xB7
	lsls r3, r3, #0x02
	adds r0, r5, r3
	movs r3, #0x00
	ldsh r0, [r0, r3]
	muls r0, r4
	bl _call_via_r2
	ldr r1, [r5, #0x18]
	adds r1, r1, r0
	str r1, [r5, #0x18]
_0813AE44:
	movs r0, #0xB7
	lsls r0, r0, #0x02
	adds r3, r5, r0
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r2, r5, r1
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _0813AE58
	negs r1, r1
_0813AE58:
	ldrh r0, [r3, #0x00]
	subs r1, r0, r1
	strh r1, [r3, #0x00]
	ldr r0, [r2, #0x00]
	cmp r0, #0x00
	ble _0813AE88
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bgt _0813AEA2
	movs r3, #0xB2
	lsls r3, r3, #0x02
	adds r0, r5, r3
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	bgt _0813AEA2
	b _0813AE9C
	.byte 0x00, 0x00
_0813AE7C: .4byte 0x03001038
_0813AE80: .4byte 0x0819832C
_0813AE84: .4byte 0x08198220
_0813AE88:
	lsls r0, r1, #0x10
	cmp r0, #0x00
	bgt _0813AEA2
	movs r1, #0xB2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x00]
	cmp r1, r0
	blt _0813AEA2
_0813AE9C:
	str r0, [r5, #0x18]
	movs r0, #0x00
	b _0813AEA4
_0813AEA2:
	movs r0, #0x01
_0813AEA4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813AEAC
sub_813AEAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	mov r8, r0
	mov r10, r1
	adds r4, r3, #0x0
	ldr r0, [sp, #0x034]
	ldr r5, [sp, #0x038]
	ldr r6, [sp, #0x03C]
	lsls r2, r2, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x010]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsrs r7, r2, #0x08
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x64
	bl sub_81DD77C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	mov r0, sp
	mov r1, r8
	adds r2, r5, #0x0
	adds r3, r6, #0x0
	bl sub_8139BB0
	mov r0, sp
	movs r1, #0x00
	ldsh r0, [r0, r1]
	lsls r5, r0, #0x08
	mov r0, sp
	movs r3, #0x02
	ldsh r0, [r0, r3]
	lsls r3, r0, #0x08
	mov r0, sp
	movs r1, #0x06
	ldsh r0, [r0, r1]
	lsls r0, r0, #0x08
	mov r12, r0
	mov r0, sp
	movs r1, #0x04
	ldsh r0, [r0, r1]
	lsls r6, r0, #0x08
	movs r2, #0x00
	mov r1, r9
	lsls r0, r1, #0x18
	lsls r4, r4, #0x18
	cmp r0, r4
	bge _0813AF44
	mov r4, r8
	ldr r1, [r4, #0x0C]
	mov r4, r10
	ldr r0, [r4, #0x0C]
	cmp r1, r0
	blt _0813AF3C
	subs r0, r1, r7
	cmp r0, r5
	blt _0813AF44
	movs r2, #0x08
	b _0813AF44
_0813AF3C:
	adds r0, r1, r7
	cmp r0, r3
	bgt _0813AF44
	movs r2, #0x02
_0813AF44:
	mov r0, r9
	lsls r1, r0, #0x18
	ldr r3, [sp, #0x010]
	lsls r0, r3, #0x18
	cmp r1, r0
	bge _0813AF76
	mov r4, r8
	ldr r1, [r4, #0x10]
	mov r3, r10
	ldr r0, [r3, #0x10]
	cmp r1, r0
	blt _0813AF68
	subs r0, r1, r7
	cmp r0, r12
	blt _0813AF76
	movs r0, #0x01
	orrs r2, r0
	b _0813AF76
_0813AF68:
	adds r0, r1, r7
	cmp r0, r6
	bgt _0813AF76
	movs r0, #0x04
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r2, r0, #0x10
_0813AF76:
	cmp r2, #0x00
	beq _0813AF80
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	b _0813AF82
_0813AF80:
	movs r0, #0xFF
_0813AF82:
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_813AF94
sub_813AF94:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0x0
	mov r8, r1
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r6, r5, r0
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x02
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r4, [r0, #0x30]
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	lsls r0, r0, #0x01
	adds r0, r0, r6
	movs r1, #0x00
	ldsh r2, [r0, r1]
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl _call_via_r8
	bl sub_8199F30
	adds r1, r0, #0x0
	movs r0, #0x04
	bl sub_81DD77C
	movs r2, #0xA5
	lsls r2, r2, #0x02
	adds r1, r5, r2
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r6
	ldrh r0, [r0, #0x08]
	adds r1, #0x20
	strb r0, [r1, #0x00]
	ldr r2, _0813B038 @ =0x083A05EC
	ldr r1, _0813B03C @ =0x00000216
	adds r0, r5, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x1C
	lsrs r1, r1, #0x1E
	lsls r1, r1, #0x04
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	adds r1, r1, r0
	adds r1, #0x08
	adds r1, r1, r2
	ldrb r1, [r1, #0x00]
	adds r0, r5, #0x0
	movs r2, #0x00
	bl sub_8047154
	movs r2, #0x85
	lsls r2, r2, #0x02
	adds r5, r5, r2
	ldrb r1, [r5, #0x00]
	movs r0, #0x08
	negs r0, r0
	ands r0, r1
	movs r1, #0x03
	orrs r0, r1
	strb r0, [r5, #0x00]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0813B038: .4byte 0x083A05EC
_0813B03C: .4byte 0x00000216
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x81, 0xB0, 0x07, 0x1C, 0x88, 0x46
	.byte 0x91, 0x46, 0x31, 0x4C, 0x31, 0x48, 0x24, 0x1A, 0x31, 0x48, 0x02, 0x68, 0x12, 0x19, 0xC8, 0x68
	.byte 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0x04, 0xFD, 0x82, 0x46, 0x2D, 0x49, 0x0A, 0x68, 0x12, 0x19
	.byte 0x41, 0x46, 0x08, 0x69, 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xFA, 0xFC, 0x00, 0x90, 0x28, 0x48
	.byte 0x02, 0x68, 0x12, 0x19, 0x41, 0x46, 0x48, 0x69, 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xF0, 0xFC
	.byte 0x80, 0x46, 0x23, 0x48, 0x02, 0x68, 0x12, 0x19, 0x49, 0x46, 0xC8, 0x68, 0x80, 0x21, 0x49, 0x00
	.byte 0x9F, 0xF0, 0xE6, 0xFC, 0x06, 0x1C, 0x1E, 0x48, 0x02, 0x68, 0x12, 0x19, 0x49, 0x46, 0x08, 0x69
	.byte 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xDC, 0xFC, 0x05, 0x1C, 0x19, 0x48, 0x02, 0x68, 0x12, 0x19
	.byte 0x49, 0x46, 0x48, 0x69, 0x80, 0x21, 0x49, 0x00, 0x9F, 0xF0, 0xD2, 0xFC, 0x01, 0x1C, 0x00, 0x22
	.byte 0xB8, 0x5E, 0x52, 0x46, 0x10, 0x1A, 0xB0, 0x42, 0x24, 0xDC, 0x02, 0x22, 0xB8, 0x5E, 0x50, 0x44
	.byte 0xB0, 0x42, 0x1F, 0xDB, 0x06, 0x22, 0xB8, 0x5E, 0x00, 0x9A, 0x10, 0x1A, 0xA8, 0x42, 0x19, 0xDC
	.byte 0x04, 0x22, 0xB8, 0x5E, 0x00, 0x9A, 0x10, 0x18, 0xA8, 0x42, 0x13, 0xDB, 0x0A, 0x22, 0xB8, 0x5E
	.byte 0x42, 0x46, 0x10, 0x1A, 0x88, 0x42, 0x0D, 0xDC, 0x08, 0x22, 0xB8, 0x5E, 0x40, 0x44, 0x88, 0x42
	.byte 0x08, 0xDB, 0x01, 0x20, 0x07, 0xE0, 0x00, 0x00, 0x2C, 0x83, 0x19, 0x08, 0x20, 0x82, 0x19, 0x08
	.byte 0x38, 0x10, 0x00, 0x03, 0x00, 0x20, 0x01, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x30, 0xB5, 0xC4, 0x68, 0xCA, 0x68, 0xA4, 0x1A
	.byte 0x03, 0x69, 0x0A, 0x69, 0x9B, 0x1A, 0x42, 0x69, 0x80, 0x69, 0x12, 0x18, 0x48, 0x69, 0x89, 0x69
	.byte 0x40, 0x18, 0x12, 0x1A, 0x07, 0x4D, 0x20, 0x1C, 0x60, 0x43, 0x19, 0x1C, 0x59, 0x43, 0x40, 0x18
	.byte 0x11, 0x1C, 0x51, 0x43, 0x40, 0x18, 0x29, 0x68, 0x9F, 0xF0, 0x80, 0xFC, 0x30, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0x38, 0x10, 0x00, 0x03
