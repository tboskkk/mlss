	.syntax unified
	.text

	thumb_func_start sub_816BC4C
sub_816BC4C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	mov r8, r2
	mov r9, r3
	movs r1, #0x02
	bl sub_8161C28
	ldr r0, _0816BD14 @ =0x08CDD248
	str r0, [r5, #0x0C]
	ldr r2, _0816BD18 @ =0x08216ABC
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x03
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r5, #0x6C]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r0, [r5, #0x6C]
	ldr r7, _0816BD1C @ =0x00005007
	movs r1, #0x03
	str r1, [sp, #0x000]
	movs r6, #0x02
	str r6, [sp, #0x004]
	movs r1, #0x04
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r2, _0816BD20 @ =0x08216AC4
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x04
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r5, #0x70]
	adds r0, r4, #0x0
	bl sub_8163CD4
	ldr r0, [r5, #0x70]
	movs r1, #0x04
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r2, _0816BD24 @ =0x08216ACC
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x05
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r5, #0x74]
	adds r0, r4, #0x0
	bl sub_8163CD4
	movs r0, #0xF0
	lsls r0, r0, #0x07
	cmp r8, r0
	ble _0816BD28
	ldr r0, [r5, #0x6C]
	ldr r3, [r0, #0x10]
	ldr r0, [r5, #0x70]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x11]
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r1, #0x11]
	ldrb r0, [r3, #0x11]
	orrs r0, r2
	strb r0, [r3, #0x11]
	ldr r0, [r5, #0x74]
	movs r1, #0x0C
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x04
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	b _0816BD3A
_0816BD14: .4byte dword_8CDD248 @ =0x08CDD248
_0816BD18: .4byte dword_8216ABC @ =0x08216ABC
_0816BD1C: .4byte 0x00005007
_0816BD20: .4byte dword_8216AC4 @ =0x08216AC4
_0816BD24: .4byte dword_8216ACC @ =0x08216ACC
_0816BD28:
	ldr r0, [r5, #0x74]
	movs r1, #0x09
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x04
	adds r2, r7, #0x0
	movs r3, #0x00
	bl sub_8163ADC
_0816BD3A:
	mov r0, r8
	str r0, [r5, #0x18]
	mov r0, r9
	str r0, [r5, #0x1C]
	movs r2, #0x00
	str r2, [r5, #0x7C]
	adds r1, r5, #0x0
	adds r1, #0x80
	ldr r0, [sp, #0x024]
	str r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x84
	str r2, [r0, #0x00]
	adds r0, #0x04
	str r2, [r0, #0x00]
	movs r0, #0x01
	str r0, [r5, #0x78]
	adds r0, r5, #0x0
	adds r0, #0x8C
	str r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_816BE10
	adds r0, r5, #0x0
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
