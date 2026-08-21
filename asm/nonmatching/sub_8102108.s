	.syntax unified
	.text

	thumb_func_start sub_8102108
sub_8102108:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x004
	str r0, [sp, #0x000]
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r6, [sp, #0x044]
	ldr r0, _081021D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	adds r0, #0x48
	ldr r1, _081021D4 @ =0x081021E5
	bl sub_807FFD8
	adds r5, r0, #0x0
	bl sub_807FB04
	adds r4, r0, #0x0
	mov r0, r8
	bl sub_8083F88
	adds r7, r0, #0x0
	mov r0, r9
	bl sub_8083F88
	ldr r1, [sp, #0x000]
	str r1, [r5, #0x08]
	str r4, [r5, #0x0C]
	mov r2, r10
	strh r2, [r5, #0x18]
	mov r1, r8
	strh r1, [r4, #0x16]
	str r7, [r4, #0x04]
	mov r2, r9
	str r2, [r4, #0x08]
	str r0, [r4, #0x0C]
	mov r0, sp
	ldrh r0, [r0, #0x24]
	strh r0, [r4, #0x10]
	mov r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r5, #0x10]
	mov r2, sp
	ldrh r2, [r2, #0x2C]
	strh r2, [r4, #0x12]
	mov r0, sp
	ldrh r0, [r0, #0x30]
	strh r0, [r4, #0x14]
	ldr r1, _081021D8 @ =0x000001FF
	adds r3, r1, #0x0
	ldr r1, [sp, #0x034]
	ands r1, r3
	ldrh r2, [r4, #0x1A]
	ldr r0, _081021DC @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0x1A]
	movs r0, #0xFF
	ldr r2, [sp, #0x038]
	ands r2, r0
	strh r2, [r4, #0x18]
	ldr r2, [sp, #0x03C]
	ands r2, r3
	strh r2, [r5, #0x12]
	ldr r2, [sp, #0x040]
	ands r2, r0
	strh r2, [r5, #0x14]
	ldr r0, _081021E0 @ =0xFFFFFB2E
	cmp r6, r0
	bne _081021A6
	ldr r6, [sp, #0x034]
	subs r6, #0x08
_0810219E:
	asrs r7, r7, #0x04
	subs r6, #0x08
	cmp r7, #0x00
	bne _0810219E
_081021A6:
	ldr r1, _081021D8 @ =0x000001FF
	adds r0, r1, #0x0
	ands r6, r0
	movs r1, #0x00
	strh r6, [r5, #0x16]
	ldr r0, _081021D0 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	movs r2, #0xB5
	lsls r2, r2, #0x02
	adds r0, r0, r2
	strh r1, [r0, #0x00]
	adds r0, r5, #0x0
	add sp, #0x004
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_081021D0: .4byte 0x03000FD8
_081021D4: .4byte sub_81021E4
_081021D8: .4byte 0x000001FF
_081021DC: .4byte 0xFFFFF000
_081021E0: .4byte 0xFFFFFB2E
