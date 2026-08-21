	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start script_read_next_line
script_read_next_line: @ 080E9714
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	str r0, [sp, #0x008]
	adds r6, r1, #0x0
	str r3, [sp, #0x00C]
	adds r5, r0, #0x0
	movs r1, #0x08
	add r0, sp, #0x004
	strh r1, [r0, #0x00]
	ldr r1, [r5, #0x00]
	cmp r1, #0x00
	bne _080E9736
	b _080E98AC
_080E9736:
	str r1, [r5, #0x14]
	ldrb r0, [r1, #0x00]
	adds r4, r5, #0x0
	adds r4, #0xA7
	strb r0, [r4, #0x00]
	adds r0, r1, #0x1
	str r0, [r5, #0x00]
	ldr r7, _080E980C @ =0x03000FC0
	ldr r0, [r7, #0x00]
	ldrb r1, [r4, #0x00]
	movs r2, #0xAC
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	mov r10, r0
	cmp r0, #0x00
	beq _080E976C
	ldr r0, _080E9810 @ =0x03000FC4
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x004
	mov r2, r10
	bl _call_via_r3
	str r0, [sp, #0x010]
_080E976C:
	ldr r0, [r7, #0x00]
	ldrb r1, [r4, #0x00]
	ldr r3, _080E9814 @ =0x0000055C
	adds r0, r0, r3
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldrb r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080E978E
	ldr r0, _080E9810 @ =0x03000FC4
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x004
	movs r2, #0x0D
	bl _call_via_r3
	stm r6!, {r0}
_080E978E:
	mov r0, r10
	cmp r0, #0x00
	bne _080E9796
	b _080E989C
_080E9796:
	ldr r2, [r7, #0x00]
	ldrb r0, [r4, #0x00]
	ldr r3, _080E9818 @ =0x0000056C
	adds r1, r2, r3
	ldr r1, [r1, #0x00]
	lsls r0, r0, #0x01
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	subs r3, #0x08
	adds r0, r2, r3
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xAD
	lsls r0, r0, #0x03
	adds r2, r2, r0
	ldr r0, [r2, #0x00]
	adds r0, r0, r1
	mov r9, r0
	movs r7, #0x00
	cmp r7, r10
	bge _080E989C
_080E97C2:
	mov r2, r8
	ldrb r1, [r2, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _080E9840
	ldr r0, _080E9810 @ =0x03000FC4
	ldrb r2, [r2, #0x00]
	ldr r3, [r0, #0x00]
	adds r0, r5, #0x0
	add r1, sp, #0x004
	bl _call_via_r3
	adds r4, r0, #0x0
	str r4, [r6, #0x00]
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	movs r0, #0x01
	lsls r0, r1
	ldr r3, [sp, #0x010]
	ands r0, r3
	adds r7, r2, #0x0
	cmp r0, #0x00
	beq _080E981C
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x00C]
	ldr r1, [sp, #0x008]
	adds r1, #0x18
	ldr r2, [sp, #0x034]
	ldr r3, [sp, #0x038]
	bl sub_80E9CA8
	str r0, [r6, #0x00]
	b _080E9886
	.byte 0x00, 0x00
_080E980C: .4byte 0x03000FC0
_080E9810: .4byte 0x03000FC4
_080E9814: .4byte 0x0000055C
_080E9818: .4byte 0x0000056C
_080E981C:
	mov r0, r9
	ldrb r2, [r0, #0x00]
	cmp r2, #0x01
	bne _080E9886
	mov r1, r8
	ldrb r3, [r1, #0x00]
	subs r1, r3, #0x1
	adds r0, r4, #0x0
	asrs r0, r1
	ands r0, r2
	cmp r0, #0x00
	beq _080E9886
	movs r0, #0x01
	negs r0, r0
	lsls r0, r3
	orrs r0, r4
	str r0, [r6, #0x00]
	b _080E9886
_080E9840:
	add r0, sp, #0x004
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x08
	beq _080E9850
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_080E9850:
	ldr r0, [r5, #0x00]
	ldrb r1, [r0, #0x00]
	str r1, [r6, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
	ldrb r2, [r0, #0x00]
	lsls r2, r2, #0x08
	orrs r2, r1
	str r2, [r6, #0x00]
	adds r3, r0, #0x1
	str r3, [r5, #0x00]
	ldrb r1, [r0, #0x01]
	lsls r1, r1, #0x10
	orrs r1, r2
	str r1, [r6, #0x00]
	adds r2, r3, #0x1
	str r2, [r5, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r6, #0x00]
	adds r2, #0x01
	str r2, [r5, #0x00]
	add r1, sp, #0x004
	movs r0, #0x08
	strh r0, [r1, #0x00]
	lsls r7, r7, #0x10
_080E9886:
	movs r3, #0x01
	add r8, r3
	add r9, r3
	adds r6, #0x04
	movs r1, #0x80
	lsls r1, r1, #0x09
	adds r0, r7, r1
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r10
	blt _080E97C2
_080E989C:
	add r0, sp, #0x004
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x08
	beq _080E98AC
	ldr r0, [r5, #0x00]
	adds r0, #0x01
	str r0, [r5, #0x00]
_080E98AC:
	ldr r0, [r5, #0x00]
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_80E98C0
sub_80E98C0:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r0, _080E98E8 @ =0x00001B5F
	cmp r3, r0
	bhi _080E98F0
	movs r0, #0x1F
	ands r3, r0
	ldr r0, _080E98EC @ =0x03000FC0
	ldr r1, [r0, #0x00]
	lsrs r0, r2, #0x15
	lsls r0, r0, #0x02
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	lsrs r0, r3
	adds r3, r0, #0x0
	b _080E993C
_080E98E8: .4byte 0x00001B5F
_080E98EC: .4byte 0x03000FC0
_080E98F0:
	ldr r0, _080E9918 @ =0x00001B7F
	cmp r3, r0
	bls _080E9924
	ldr r0, _080E991C @ =0x00001B8F
	cmp r3, r0
	bhi _080E9948
	cmp r4, #0x00
	beq _080E9924
	ldr r1, _080E9920 @ =0xFFFFE480
	adds r0, r3, r1
	lsls r0, r0, #0x10
	movs r1, #0xF8
	lsls r1, r1, #0x0D
	ands r1, r0
	lsrs r1, r1, #0x10
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r0, r0, r4
	b _080E9938
	.byte 0x00, 0x00
_080E9918: .4byte 0x00001B7F
_080E991C: .4byte 0x00001B8F
_080E9920: .4byte 0xFFFFE480
_080E9924:
	ldr r1, _080E9944 @ =0xFFFFE4A0
	adds r0, r3, r1
	lsls r0, r0, #0x10
	movs r1, #0xF8
	lsls r1, r1, #0x0D
	ands r1, r0
	lsrs r1, r1, #0x10
	lsrs r0, r0, #0x15
	lsls r0, r0, #0x02
	adds r0, r0, r5
_080E9938:
	ldr r3, [r0, #0x00]
	lsrs r3, r1
_080E993C:
	movs r0, #0x01
	ands r3, r0
	b _080E994C
	.byte 0x00, 0x00
_080E9944: .4byte 0xFFFFE4A0
_080E9948:
	movs r0, #0x00
	b _080E9950
_080E994C:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
_080E9950:
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
