	.syntax unified
	.text

	thumb_func_start sub_816B9B0
sub_816B9B0:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r6, r0, #0x0
	adds r7, r1, #0x0
	movs r1, #0x00
	bl sub_8161C28
	ldr r0, _0816BAA0 @ =0x08CDD258
	str r0, [r6, #0x0C]
	ldr r2, _0816BAA4 @ =0x08216AAC
	movs r0, #0x7C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r5, #0x01
	movs r0, #0xA0
	lsls r0, r0, #0x07
	mov r9, r0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8161C28
	ldr r0, _0816BAA8 @ =0x08CDD268
	str r0, [r4, #0x0C]
	str r5, [sp, #0x000]
	movs r0, #0x02
	mov r8, r0
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	ldr r2, _0816BAAC @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	movs r5, #0x00
	str r5, [r4, #0x70]
	str r5, [r4, #0x6C]
	mov r0, r9
	str r0, [r4, #0x74]
	movs r0, #0xF0
	lsls r0, r0, #0x07
	mov r10, r0
	str r0, [r4, #0x78]
	str r4, [r6, #0x6C]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, _0816BAB0 @ =0x08216AB4
	movs r0, #0x7C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r0, #0xA0
	lsls r0, r0, #0x08
	mov r9, r0
	adds r0, r4, #0x0
	movs r1, #0x01
	bl sub_8161C28
	ldr r0, _0816BAA8 @ =0x08CDD268
	str r0, [r4, #0x0C]
	str r5, [sp, #0x000]
	mov r0, r8
	str r0, [sp, #0x004]
	adds r0, r4, #0x0
	movs r1, #0x04
	ldr r2, _0816BAAC @ =0x00005007
	movs r3, #0x00
	bl sub_8163ADC
	str r5, [r4, #0x70]
	str r5, [r4, #0x6C]
	mov r0, r9
	str r0, [r4, #0x74]
	mov r0, r10
	str r0, [r4, #0x78]
	str r4, [r6, #0x70]
	adds r0, r7, #0x0
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, _0816BAAC @ =0x00005007
	mov r0, r8
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	movs r1, #0x04
	movs r3, #0x00
	bl sub_8163ADC
	str r5, [r6, #0x78]
	str r5, [r6, #0x74]
	adds r0, r6, #0x0
	adds r0, #0x80
	str r5, [r0, #0x00]
	str r5, [r6, #0x7C]
	adds r0, #0x08
	str r5, [r0, #0x00]
	adds r0, r6, #0x0
	bl sub_816BB70
	adds r0, r6, #0x0
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0816BAA0: .4byte dword_8CDD258 @ =0x08CDD258
_0816BAA4: .4byte dword_8216AAC @ =0x08216AAC
_0816BAA8: .4byte dword_8CDD268 @ =0x08CDD268
_0816BAAC: .4byte 0x00005007
_0816BAB0: .4byte dword_8216AB4 @ =0x08216AB4
