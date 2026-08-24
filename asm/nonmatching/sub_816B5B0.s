	.syntax unified
	.text

	thumb_func_start sub_816B5B0
sub_816B5B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	mov r9, r1
	str r2, [sp, #0x008]
	movs r7, #0x00
	mov r8, r6
	movs r0, #0xC0
	lsls r0, r0, #0x05
	mov r10, r0
_0816B5CC:
	lsls r5, r7, #0x02
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _0816B688 @ =0x08216AA4
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	bl sub_8161C28
	adds r1, r0, #0x0
	mov r2, r8
	str r1, [r2, #0x00]
	mov r0, r9
	bl sub_8163CD4
	mov r3, r8
	ldr r0, [r3, #0x00]
	movs r1, #0x11
	str r1, [sp, #0x000]
	movs r2, #0x03
	str r2, [sp, #0x004]
	movs r1, #0x04
	ldr r2, _0816B68C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	adds r4, r6, #0x0
	adds r4, #0x0C
	adds r4, r4, r5
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _0816B688 @ =0x08216AA4
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x00]
	mov r0, r9
	bl sub_8163CD4
	ldr r0, [r4, #0x00]
	movs r3, #0x11
	str r3, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	movs r1, #0x04
	ldr r2, _0816B68C @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	mov r3, r8
	adds r3, #0x04
	mov r8, r3
	subs r3, #0x04
	ldm r3!, {r2}
	lsls r1, r7, #0x0C
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r1, r3
	str r0, [r2, #0x18]
	mov r0, r10
	str r0, [r2, #0x1C]
	ldr r0, [r4, #0x00]
	movs r2, #0x90
	lsls r2, r2, #0x08
	adds r1, r1, r2
	str r1, [r0, #0x18]
	mov r3, r10
	str r3, [r0, #0x1C]
	adds r7, #0x01
	cmp r7, #0x02
	ble _0816B5CC
	ldr r0, [sp, #0x008]
	str r0, [r6, #0x34]
	adds r0, r6, #0x0
	bl sub_816D814
	adds r0, r6, #0x0
	movs r1, #0x01
	bl sub_816B690
	adds r0, r6, #0x0
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0816B688: .4byte dword_8216AA4 @ =0x08216AA4
_0816B68C: .4byte 0x00005007
