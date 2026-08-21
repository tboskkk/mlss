	.syntax unified
	.text

	thumb_func_start sub_804D18C
sub_804D18C:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x02C
	mov r9, r0
	movs r0, #0x9E
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r2, [r0, #0x00]
	lsrs r1, r2, #0x01
	mov r3, r9
	ldr r0, [r3, #0x0C]
	subs r0, r0, r1
	str r0, [sp, #0x01C]
	ldr r1, _0804D2B0 @ =0xFFFFFF00
	adds r0, r0, r1
	adds r0, r0, r2
	str r0, [sp, #0x020]
	ldr r2, [r3, #0x10]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r1, r2, r3
	movs r0, #0x9F
	lsls r0, r0, #0x02
	add r0, r9
	ldrh r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [sp, #0x024]
	str r2, [sp, #0x028]
	mov r0, r9
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	adds r7, r1, r0
	cmp r7, #0x00
	bge _0804D1D8
	movs r7, #0x00
_0804D1D8:
	ldr r0, _0804D2B4 @ =0x0000027A
	add r0, r9
	ldrh r0, [r0, #0x00]
	adds r0, r0, r7
	mov r10, r0
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	add r1, sp, #0x014
	mov r8, r1
	str r1, [sp, #0x000]
	add r6, sp, #0x018
	str r6, [sp, #0x004]
	add r5, sp, #0x008
	movs r1, #0x01
	strb r1, [r5, #0x00]
	add r4, sp, #0x00C
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x024]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D21A
	ldr r0, [sp, #0x014]
	cmp r10, r0
	bge _0804D2AA
_0804D21A:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r2, r8
	str r2, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x01
	strb r1, [r5, #0x00]
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x024]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D24A
	ldr r0, [sp, #0x014]
	cmp r10, r0
	bge _0804D2AA
_0804D24A:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r3, r8
	str r3, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x01
	strb r1, [r5, #0x00]
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x01C]
	ldr r2, [sp, #0x028]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D27A
	ldr r0, [sp, #0x014]
	cmp r10, r0
	bge _0804D2AA
_0804D27A:
	movs r0, #0xA4
	lsls r0, r0, #0x02
	add r0, r9
	ldr r0, [r0, #0x00]
	mov r1, r8
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x01
	strb r1, [r5, #0x00]
	strb r1, [r4, #0x00]
	ldr r1, [sp, #0x020]
	ldr r2, [sp, #0x028]
	add r3, sp, #0x010
	bl sub_803FBA4
	ldr r0, [sp, #0x010]
	cmp r7, r0
	blt _0804D2AA
	ldr r0, [sp, #0x018]
	cmp r7, r0
	bge _0804D2B8
	ldr r0, [sp, #0x014]
	cmp r10, r0
	blt _0804D2B8
_0804D2AA:
	movs r0, #0x01
	b _0804D2BA
	.byte 0x00, 0x00
_0804D2B0: .4byte 0xFFFFFF00
_0804D2B4: .4byte 0x0000027A
_0804D2B8:
	movs r0, #0x00
_0804D2BA:
	add sp, #0x02C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
