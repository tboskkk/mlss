	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x010
	mov r9, r0
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r3, [sp, #0x00C]
	ldr r0, [sp, #0x02C]
	ldr r1, [sp, #0x034]
	mov r8, r1
	cmp r0, #0x01
	bne _0807CC66
	ldr r0, [sp, #0x030]
	str r0, [sp, #0x000]
	mov r0, r9
	ldr r1, [sp, #0x004]
	bl sub_807CE0C
	b _0807CCF4
_0807CC66:
	ldr r4, _0807CD04 @ =0x03000FD8
	ldr r1, [r4, #0x00]
	ldr r2, _0807CD08 @ =0x0807F8C5
	ldr r7, [r1, #0x3C]
	ldr r0, [r7, #0x00]
	str r0, [r1, #0x3C]
	ldr r0, [r1, #0x48]
	str r0, [r7, #0x00]
	str r2, [r7, #0x04]
	movs r5, #0x00
	strh r5, [r7, #0x10]
	str r7, [r1, #0x48]
	ldr r0, [r4, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r6, [r0, #0x00]
	ldr r1, [r6, #0x00]
	str r1, [r0, #0x00]
	ldr r0, _0807CD0C @ =0x03001034
	ldr r3, [r0, #0x00]
	movs r0, #0x00
	adds r1, r6, #0x0
	movs r2, #0x1C
	bl _call_via_r3
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	add r2, sp, #0x008
	add r3, sp, #0x00C
	str r5, [sp, #0x000]
	add r1, sp, #0x004
	bl sub_8082C58
	mov r0, r8
	cmp r0, #0x00
	beq _0807CCBC
	movs r0, #0x01
	mov r1, r8
	strb r0, [r1, #0x00]
_0807CCBC:
	mov r0, r8
	str r0, [r6, #0x0C]
	ldr r0, [sp, #0x004]
	adds r0, #0x08
	lsls r0, r0, #0x08
	str r0, [r6, #0x04]
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r6, #0x10]
	ldr r0, [sp, #0x008]
	subs r0, #0x10
	lsls r0, r0, #0x08
	str r0, [r6, #0x08]
	ldr r0, _0807CD10 @ =0x0000FD9A
	strh r0, [r6, #0x12]
	mov r1, sp
	ldrh r1, [r1, #0x30]
	strh r1, [r6, #0x18]
	movs r0, #0x0E
	strh r0, [r6, #0x16]
	ldr r0, _0807CD14 @ =0x0807CD19
	str r0, [r7, #0x04]
	mov r0, r9
	bl sub_8083F88
	str r0, [r7, #0x08]
	str r6, [r7, #0x0C]
	adds r0, r7, #0x0
_0807CCF4:
	add sp, #0x010
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0807CD04: .4byte 0x03000FD8
_0807CD08: .4byte sub_807F8C4
_0807CD0C: .4byte 0x03001034
_0807CD10: .4byte 0x0000FD9A
_0807CD14: .4byte sub_807CD18
