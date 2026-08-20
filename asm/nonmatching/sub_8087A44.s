	.syntax unified
	.text

	thumb_func_start sub_8087A44
sub_8087A44:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0x0
	adds r0, r7, #0x0
	cmp r7, #0x00
	bge _08087A5C
	adds r0, r7, #0x3
_08087A5C:
	asrs r7, r0, #0x02
	adds r0, r3, #0x0
	cmp r3, #0x00
	bge _08087A66
	adds r0, r3, #0x3
_08087A66:
	asrs r3, r0, #0x02
	cmp r7, #0x00
	bne _08087A7C
	cmp r3, #0x00
	bne _08087A7C
	mov r0, r8
	strh r3, [r0, #0x00]
	mov r1, r9
	strh r3, [r1, #0x00]
	movs r0, #0x00
	b _08087AC4
_08087A7C:
	ldr r5, _08087AD4 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r3, #0x0
	muls r1, r3
	adds r0, r0, r1
	ldr r1, [r5, #0x00]
	str r3, [sp, #0x000]
	bl _call_via_r1
	adds r6, r0, #0x0
	ldr r4, _08087AD8 @ =0x0819832C
	ldr r0, _08087ADC @ =0x08198220
	subs r4, r4, r0
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r1, [sp, #0x020]
	adds r0, r7, #0x0
	muls r0, r1
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r8
	strh r0, [r1, #0x00]
	ldr r2, [r5, #0x00]
	adds r2, r2, r4
	ldr r3, [sp, #0x000]
	ldr r1, [sp, #0x020]
	adds r0, r3, #0x0
	muls r0, r1
	adds r1, r6, #0x0
	bl _call_via_r2
	mov r1, r9
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
_08087AC4:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08087AD4: .4byte 0x03001038
_08087AD8: .4byte 0x0819832C
_08087ADC: .4byte 0x08198220
