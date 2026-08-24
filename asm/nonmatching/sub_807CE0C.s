	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r7, [sp, #0x02C]
	ldr r6, _0807CEAC @ =0x03000FD8
	ldr r1, [r6, #0x00]
	ldr r2, _0807CEB0 @ =0x0807F869
	ldr r5, [r1, #0x3C]
	ldr r0, [r5, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r5, #0x00]
	str r2, [r5, #0x04]
	movs r0, #0x00
	mov r8, r0
	mov r0, r8
	strh r0, [r5, #0x10]
	str r5, [r1, #0x48]
	ldr r0, [r6, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r4, [r0, #0x00]
	ldr r1, [r4, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CEB4 @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r4, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r6, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	mov r1, r8
	str r1, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	ldr r0, [sp, #0x004]
	subs r0, #0x0C
	lsls r0, r0, #0x08
	str r0, [r4, #0x04]
	ldr r0, _0807CEB8 @ =0x0000FF34
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x18
	lsls r0, r0, #0x08
	str r0, [r4, #0x08]
	ldr r0, _0807CEBC @ =0x0000FE9A
	strh r0, [r4, #0x12]
	strh r7, [r4, #0x18]
	movs r0, #0x0E
	strh r0, [r4, #0x16]
	ldr r0, _0807CEC0 @ =0x0807CEC5
	str r0, [r5, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r5, #0x08]
	str r4, [r5, #0x0C]
	adds r0, r5, #0x0
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807CEAC: .4byte 0x03000FD8
_0807CEB0: .4byte sub_807F868
_0807CEB4: .4byte 0x03001034
_0807CEB8: .4byte 0x0000FF34
_0807CEBC: .4byte 0x0000FE9A
_0807CEC0: .4byte sub_807CEC4
