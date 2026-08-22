	.syntax unified
	.text

	thumb_func_start sub_801E3EC
sub_801E3EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x028
	str r0, [sp, #0x000]
	ldrb r2, [r1, #0x00]
	ldrb r0, [r1, #0x01]
	lsls r0, r0, #0x08
	orrs r2, r0
	subs r2, r1, r2
	str r2, [sp, #0x004]
	ldrb r1, [r1, #0x06]
	movs r0, #0x7F
	ands r0, r1
	adds r0, #0x01
	str r0, [sp, #0x008]
	ldrb r0, [r2, #0x00]
	str r0, [sp, #0x00C]
	movs r0, #0xC0
	lsls r0, r0, #0x02
	ldr r2, _0801E5C0 @ =0x081E25A4
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_zero_8018DB4
	mov r9, r0
	movs r0, #0x01
	ldr r1, [sp, #0x000]
	strb r0, [r1, #0x00]
	adds r1, #0x01
	str r1, [sp, #0x000]
	movs r2, #0x00
	ldr r3, [sp, #0x00C]
	cmp r2, r3
	blt _0801E438
	b _0801E670
_0801E438:
	lsls r0, r2, #0x01
	ldr r6, [sp, #0x004]
	adds r0, r0, r6
	ldrb r1, [r0, #0x01]
	ldrb r0, [r0, #0x02]
	lsls r0, r0, #0x08
	orrs r1, r0
	adds r5, r6, r1
	ldrb r0, [r5, #0x00]
	mov r10, r0
	adds r5, #0x01
	movs r0, #0x80
	mov r1, r10
	ands r0, r1
	cmp r0, #0x00
	beq _0801E46C
	movs r0, #0x7F
	ands r1, r0
	mov r10, r1
	lsls r0, r1, #0x01
	add r0, r10
	lsls r0, r0, #0x01
	adds r5, r5, r0
	ldrb r3, [r5, #0x00]
	mov r10, r3
	adds r5, #0x01
_0801E46C:
	ldrb r6, [r5, #0x00]
	str r6, [sp, #0x010]
	adds r5, #0x01
	ldr r0, _0801E5C4 @ =0x0839EE58
	adds r0, r6, r0
	ldrb r0, [r0, #0x00]
	str r0, [sp, #0x014]
	adds r1, r0, #0x0
	mov r0, r10
	muls r0, r1
	adds r3, r5, r0
	ldrb r6, [r3, #0x00]
	str r6, [sp, #0x018]
	adds r3, #0x01
	movs r6, #0x00
	mov r4, r9
	ldr r0, [sp, #0x000]
	ldr r1, [sp, #0x008]
	adds r0, r0, r1
	str r0, [sp, #0x01C]
	adds r2, #0x01
	str r2, [sp, #0x020]
	ldr r2, [sp, #0x018]
	cmp r2, #0x00
	bne _0801E4A0
	b _0801E5AA
_0801E4A0:
	mov r8, r2
	negs r1, r2
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0801E518
	cmp r1, #0x03
	bge _0801E4F0
	cmp r1, #0x02
	bge _0801E4CE
	ldrb r0, [r3, #0x00]
	ldrb r1, [r3, #0x01]
	lsls r1, r1, #0x08
	orrs r0, r1
	strh r0, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r6, [r3, #0x02]
	subs r2, #0x01
	mov r8, r2
	adds r3, #0x03
	adds r4, #0x06
_0801E4CE:
	ldrb r1, [r3, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r0, [r3, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x01
	negs r0, r0
	add r8, r0
	adds r3, #0x03
	adds r4, #0x06
_0801E4F0:
	ldrb r1, [r3, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r0, [r3, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r1, #0x01
	negs r1, r1
	add r8, r1
	adds r3, #0x03
	adds r4, #0x06
	mov r2, r8
	cmp r2, #0x00
	beq _0801E5AA
_0801E518:
	ldrb r1, [r3, #0x00]
	ldrb r0, [r3, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x00]
	ldrb r0, [r3, #0x02]
	strh r0, [r4, #0x02]
	strh r6, [r4, #0x04]
	ldrb r0, [r3, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r3, #0x3
	adds r0, r4, #0x6
	mov r12, r0
	ldrb r1, [r3, #0x03]
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x06]
	ldrb r0, [r2, #0x02]
	mov r1, r12
	strh r0, [r1, #0x02]
	strh r6, [r1, #0x04]
	ldrb r0, [r2, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r3, #0x6
	mov r12, r2
	adds r2, r4, #0x0
	adds r2, #0x0C
	ldrb r1, [r3, #0x06]
	mov r0, r12
	ldrb r0, [r0, #0x01]
	lsls r0, r0, #0x08
	str r0, [sp, #0x024]
	orrs r1, r0
	strh r1, [r4, #0x0C]
	mov r1, r12
	ldrb r0, [r1, #0x02]
	strh r0, [r2, #0x02]
	strh r6, [r2, #0x04]
	ldrb r0, [r1, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r2, r3, #0x0
	adds r2, #0x09
	movs r0, #0x12
	adds r0, r0, r4
	mov r12, r0
	ldrb r1, [r3, #0x09]
	ldrb r0, [r2, #0x01]
	lsls r0, r0, #0x08
	orrs r1, r0
	strh r1, [r4, #0x12]
	ldrb r0, [r2, #0x02]
	mov r1, r12
	strh r0, [r1, #0x02]
	strh r6, [r1, #0x04]
	ldrb r0, [r2, #0x02]
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r2, #0x04
	negs r2, r2
	add r8, r2
	adds r3, #0x0C
	adds r4, #0x18
	mov r0, r8
	cmp r0, #0x00
	bne _0801E518
_0801E5AA:
	movs r4, #0x00
	cmp r4, r10
	bge _0801E662
_0801E5B0:
	ldr r1, [sp, #0x010]
	cmp r1, #0x05
	bhi _0801E60A
	lsls r0, r1, #0x02
	ldr r1, _0801E5C8 @ =lbl_0801E5CC
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
_0801E5C0: .4byte 0x081E25A4
_0801E5C4: .4byte 0x0839EE58
_0801E5C8: .4byte lbl_0801E5CC
lbl_0801E5CC:
	.4byte _0801E5E4
	.4byte _0801E5EC
	.4byte _0801E608
	.4byte _0801E5F2
	.4byte _0801E600
	.4byte _0801E608
_0801E5E4:
	ldrb r2, [r5, #4]
	ldrb r1, [r5, #5]
	movs r0, #3
	b.n _0801E5F8
_0801E5EC:
	ldrb r2, [r5, #3]
	ldrb r1, [r5, #4]
	b.n _0801E5F6
_0801E5F2:
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
_0801E5F6:
	movs r0, #1
_0801E5F8:
	ands r0, r1
	lsls r0, r0, #8
	adds r7, r2, r0
	b.n _0801E60A
_0801E600:
	ldrb r0, [r5, #2]
	movs r7, #127 @ 0x7f
	ands r7, r0
	b.n _0801E60A
_0801E608:
	ldrb r7, [r5, #2]
_0801E60A:
	mov r3, r9
	movs r1, #0x00
	adds r2, r4, #0x1
	mov r8, r2
	ldr r6, [sp, #0x014]
	adds r5, r5, r6
	ldr r0, [sp, #0x018]
	cmp r1, r0
	bge _0801E65C
	ldrh r2, [r3, #0x00]
	cmp r7, r2
	blt _0801E638
	ldrh r0, [r3, #0x02]
	adds r0, r2, r0
	cmp r7, r0
	bge _0801E638
	ldr r3, [sp, #0x000]
	adds r1, r3, r4
	subs r0, r7, r2
	mov r6, r9
	ldrb r6, [r6, #0x04]
	adds r0, r0, r6
	b _0801E65A
_0801E638:
	adds r1, #0x01
	adds r3, #0x06
	ldr r0, [sp, #0x018]
	cmp r1, r0
	bge _0801E65C
	ldrh r2, [r3, #0x00]
	cmp r7, r2
	blt _0801E638
	ldrh r0, [r3, #0x02]
	adds r0, r2, r0
	cmp r7, r0
	bge _0801E638
	ldr r6, [sp, #0x000]
	adds r1, r6, r4
	subs r0, r7, r2
	ldrb r3, [r3, #0x04]
	adds r0, r0, r3
_0801E65A:
	strb r0, [r1, #0x00]
_0801E65C:
	mov r4, r8
	cmp r4, r10
	blt _0801E5B0
_0801E662:
	ldr r0, [sp, #0x01C]
	str r0, [sp, #0x000]
	ldr r2, [sp, #0x020]
	ldr r1, [sp, #0x00C]
	cmp r2, r1
	bge _0801E670
	b _0801E438
_0801E670:
	mov r2, r9
	cmp r2, #0x00
	beq _0801E67C
	mov r0, r9
	bl free_heap_8018D9C
_0801E67C:
	add sp, #0x028
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
