	.syntax unified
	.text

	thumb_func_start sub_816DB10
sub_816DB10:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	ldr r2, _0816DCBC @ =0x08218EC0
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x02
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r6, #0x00]
	adds r0, r5, #0x0
	bl sub_8163CD4
	ldr r0, [r6, #0x00]
	ldr r4, _0816DCC0 @ =0x00005009
	movs r1, #0x05
	str r1, [sp, #0x000]
	movs r1, #0x02
	str r1, [sp, #0x004]
	movs r1, #0x04
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r6, #0x00]
	movs r1, #0xD0
	lsls r1, r1, #0x08
	movs r3, #0x98
	lsls r3, r3, #0x07
	movs r2, #0x00
	bl sub_8163A64
	ldr r0, [r6, #0x00]
	adds r0, #0x50
	movs r1, #0x80
	lsls r1, r1, #0x01
	strh r1, [r0, #0x00]
	ldr r2, _0816DCC4 @ =0x08218EC8
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x03
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r6, #0x04]
	adds r0, r5, #0x0
	bl sub_8163CD4
	ldr r0, [r6, #0x04]
	movs r1, #0x08
	str r1, [sp, #0x000]
	movs r1, #0x03
	str r1, [sp, #0x004]
	movs r1, #0x04
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r6, #0x04]
	movs r1, #0xFA
	lsls r1, r1, #0x08
	movs r3, #0x90
	lsls r3, r3, #0x08
	movs r2, #0x00
	bl sub_8163A64
	movs r4, #0x00
	adds r5, r6, #0x0
	adds r5, #0x08
	adds r1, r6, #0x0
	adds r1, #0xA8
	movs r0, #0xC0
	adds r0, r0, r6
	mov r12, r0
	adds r2, r6, #0x0
	adds r2, #0xE8
	str r2, [sp, #0x00C]
	movs r0, #0xDC
	adds r0, r0, r6
	mov r9, r0
	movs r2, #0xD8
	adds r2, r2, r6
	mov r8, r2
	movs r0, #0xE0
	adds r0, r0, r6
	mov r10, r0
	adds r2, r6, #0x0
	adds r2, #0xE4
	str r2, [sp, #0x008]
	adds r0, r6, #0x0
	adds r0, #0xEA
	str r0, [sp, #0x010]
	movs r3, #0x00
	movs r2, #0x00
_0816DBE4:
	adds r0, r3, r5
	str r2, [r0, #0x14]
	movs r7, #0x00
	str r2, [r0, #0x10]
	str r2, [r0, #0x0C]
	str r2, [r0, #0x08]
	str r2, [r0, #0x04]
	str r2, [r0, #0x00]
	adds r3, #0x18
	adds r4, #0x01
	cmp r4, #0x05
	ble _0816DBE4
	adds r4, r1, #0x0
	movs r5, #0x00
	adds r2, r4, #0x0
	adds r2, #0x14
	subs r1, r4, #0x1
	subs r3, r1, r2
	movs r0, #0x0F
	ands r3, r0
	cmp r2, r1
	ble _0816DC28
	cmp r3, #0x00
	beq _0816DC30
	cmp r3, #0x0C
	bge _0816DC28
	cmp r3, #0x08
	bge _0816DC24
	cmp r3, #0x03
	ble _0816DC30
	str r7, [r4, #0x14]
	subs r2, #0x04
_0816DC24:
	str r7, [r2, #0x00]
	subs r2, #0x04
_0816DC28:
	str r5, [r2, #0x00]
	subs r2, #0x04
	cmp r2, r4
	blt _0816DC44
_0816DC30:
	str r5, [r2, #0x00]
	subs r0, r2, #0x4
	str r5, [r0, #0x00]
	subs r0, #0x04
	str r5, [r0, #0x00]
	subs r0, #0x04
	str r5, [r0, #0x00]
	subs r2, #0x10
	cmp r2, r4
	bge _0816DC30
_0816DC44:
	mov r4, r12
	movs r5, #0x00
	adds r2, r4, #0x0
	adds r2, #0x14
	subs r1, r4, #0x1
	subs r3, r1, r2
	movs r0, #0x0F
	ands r3, r0
	cmp r2, r1
	ble _0816DC70
	cmp r3, #0x00
	beq _0816DC78
	cmp r3, #0x0C
	bge _0816DC70
	cmp r3, #0x08
	bge _0816DC6C
	cmp r3, #0x03
	ble _0816DC78
	str r5, [r4, #0x14]
	subs r2, #0x04
_0816DC6C:
	str r5, [r2, #0x00]
	subs r2, #0x04
_0816DC70:
	str r5, [r2, #0x00]
	subs r2, #0x04
	cmp r2, r4
	blt _0816DC8C
_0816DC78:
	str r5, [r2, #0x00]
	subs r0, r2, #0x4
	str r5, [r0, #0x00]
	subs r0, #0x04
	str r5, [r0, #0x00]
	subs r0, #0x04
	str r5, [r0, #0x00]
	subs r2, #0x10
	cmp r2, r4
	bge _0816DC78
_0816DC8C:
	movs r1, #0x00
	movs r0, #0x80
	ldr r2, [sp, #0x00C]
	strh r0, [r2, #0x00]
	mov r0, r9
	str r1, [r0, #0x00]
	mov r2, r8
	str r1, [r2, #0x00]
	mov r0, r10
	str r1, [r0, #0x00]
	ldr r2, [sp, #0x008]
	str r1, [r2, #0x00]
	ldr r0, [sp, #0x010]
	strh r1, [r0, #0x00]
	adds r0, r6, #0x0
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0816DCBC: .4byte 0x08218EC0
_0816DCC0: .4byte 0x00005009
_0816DCC4: .4byte 0x08218EC8
