	.syntax unified
	.text

	thumb_func_start sub_8168390
sub_8168390:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r7, r0, #0x0
	mov r9, r1
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	ldr r3, [sp, #0x028]
	movs r0, #0x01
	str r0, [r7, #0x50]
	movs r5, #0x00
	str r5, [r7, #0x30]
	str r5, [r7, #0x2C]
	adds r0, #0xFF
	mov r10, r0
	str r0, [r7, #0x34]
	adds r0, r7, #0x0
	adds r0, #0x14
	bl sub_8163FB8
	adds r0, r7, #0x0
	adds r0, #0x20
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	adds r0, r7, #0x0
	adds r0, #0x38
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	adds r0, r7, #0x0
	adds r0, #0x44
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8163FB8
	str r5, [r7, #0x54]
	str r5, [r7, #0x58]
	movs r0, #0x10
	str r0, [r7, #0x5C]
	ldr r2, _08168568 @ =0x08215750
	movs r0, #0x80
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r6, #0x12
	negs r6, r6
	movs r1, #0x00
	bl sub_8161C28
	ldr r1, _0816856C @ =0x08CDD1F8
	mov r8, r1
	str r1, [r4, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x6C
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	str r5, [r4, #0x74]
	mov r2, r10
	str r2, [r4, #0x78]
	str r6, [r4, #0x7C]
	str r4, [r7, #0x00]
	mov r0, r9
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, _08168570 @ =0x08215758
	movs r0, #0x80
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	movs r6, #0x12
	movs r1, #0x01
	bl sub_8161C28
	mov r0, r8
	str r0, [r4, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0x6C
	strh r5, [r0, #0x00]
	adds r0, #0x02
	strh r5, [r0, #0x00]
	adds r0, #0x02
	movs r1, #0x01
	strh r1, [r0, #0x00]
	str r5, [r4, #0x74]
	mov r2, r10
	str r2, [r4, #0x78]
	str r6, [r4, #0x7C]
	str r4, [r7, #0x04]
	mov r0, r9
	adds r1, r4, #0x0
	bl sub_8163CD4
	ldr r2, _08168574 @ =0x08215760
	movs r0, #0x6C
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x02
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r7, #0x08]
	mov r0, r9
	bl sub_8163CD4
	ldr r0, [r7, #0x08]
	ldr r6, _08168578 @ =0x00005006
	str r5, [sp, #0x000]
	movs r4, #0x02
	str r4, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r7, #0x08]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x12]
	movs r2, #0x10
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x12]
	ldr r0, [r7, #0x00]
	movs r1, #0x01
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r7, #0x00]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x12]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x12]
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _0816857C @ =0x08215768
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r7, #0x0C]
	mov r0, r9
	bl sub_8163CD4
	ldr r0, [r7, #0x0C]
	movs r5, #0x0A
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r7, #0x0C]
	bl sub_8163A24
	ldr r0, [r7, #0x04]
	movs r1, #0x03
	str r1, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r7, #0x04]
	ldr r1, [r0, #0x10]
	ldrb r0, [r1, #0x12]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1, #0x12]
	movs r0, #0x6C
	movs r1, #0x00
	ldr r2, _0816857C @ =0x08215768
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x07
	bl sub_8161C28
	adds r1, r0, #0x0
	str r1, [r7, #0x10]
	mov r0, r9
	bl sub_8163CD4
	ldr r0, [r7, #0x10]
	str r5, [sp, #0x000]
	str r4, [sp, #0x004]
	movs r1, #0x04
	adds r2, r6, #0x0
	movs r3, #0x00
	bl sub_8163ADC
	ldr r0, [r7, #0x10]
	bl sub_8163A24
	adds r0, r7, #0x0
	movs r1, #0x00
	bl sub_8168580
	adds r0, r7, #0x0
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08168568: .4byte dword_8215750 @ =0x08215750
_0816856C: .4byte dword_8CDD1F8 @ =0x08CDD1F8
_08168570: .4byte dword_8215758 @ =0x08215758
_08168574: .4byte dword_8215760 @ =0x08215760
_08168578: .4byte 0x00005006
_0816857C: .4byte dword_8215768 @ =0x08215768
