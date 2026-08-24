	.syntax unified
	.text

	thumb_func_start sub_81700E4
sub_81700E4:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x008
	adds r4, r0, #0x0
	mov r9, r1
	movs r1, #0x0A
	bl sub_8161C28
	ldr r0, _08170198 @ =0x08CDD2A8
	str r0, [r4, #0x0C]
	ldr r2, _0817019C @ =0x08218ED8
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0B
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x6C]
	mov r0, r9
	bl sub_8163CD4
	ldr r0, [r4, #0x6C]
	ldr r1, _081701A0 @ =0x00005009
	mov r8, r1
	movs r1, #0x11
	str r1, [sp, #0x000]
	movs r6, #0x02
	str r6, [sp, #0x004]
	movs r1, #0x04
	mov r2, r8
	movs r3, #0x00
	bl sub_8163ADC
	ldr r1, [r4, #0x6C]
	movs r0, #0xDC
	lsls r0, r0, #0x07
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, #0x12]
	movs r5, #0x10
	orrs r0, r5
	strb r0, [r1, #0x12]
	ldr r2, _081701A4 @ =0x08218EE0
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x0C
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r4, #0x70]
	mov r0, r9
	bl sub_8163CD4
	ldr r0, [r4, #0x70]
	movs r1, #0x10
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x04
	mov r2, r8
	movs r3, #0x00
	bl sub_8163ADC
	ldr r1, [r4, #0x70]
	movs r0, #0xB8
	lsls r0, r0, #0x07
	str r0, [r1, #0x20]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, #0x12]
	orrs r0, r5
	strb r0, [r1, #0x12]
	adds r0, r4, #0x0
	bl sub_8171BF0
	adds r0, r4, #0x0
	add sp, #0x008
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08170198: .4byte dword_8CDD2A8 @ =0x08CDD2A8
_0817019C: .4byte dword_8218ED8 @ =0x08218ED8
_081701A0: .4byte 0x00005009
_081701A4: .4byte dword_8218EE0 @ =0x08218EE0
