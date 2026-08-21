	.syntax unified
	.text

	thumb_func_start sub_815D658
sub_815D658:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	movs r1, #0x1E
	str r1, [r7, #0x48]
	ldr r0, _0815D7CC @ =0xFFFFE000
	str r0, [r7, #0x38]
	movs r0, #0xF0
	lsls r0, r0, #0x06
	str r0, [r7, #0x3C]
	ldr r2, _0815D7D0 @ =0x03001038
	lsls r0, r1, #0x04
	subs r0, r0, r1
	lsls r0, r0, #0x0C
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	str r0, [r7, #0x40]
	movs r0, #0x00
	str r0, [r7, #0x44]
	str r0, [sp, #0x00C]
	movs r1, #0x01
	negs r1, r1
	mov r10, r1
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r1, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D7D4 @ =0x00005005
	movs r2, #0x00
	mov r3, r10
	bl sub_8020DD0
	str r0, [r7, #0x04]
	ldr r2, [sp, #0x00C]
	str r2, [sp, #0x000]
	movs r1, #0x00
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r1, [r7, #0x04]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x00]
	ldr r1, [r7, #0x04]
	ldr r0, [r7, #0x3C]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	mov r3, sp
	ldrh r3, [r3, #0x0C]
	strh r3, [r7, #0x22]
	mov r0, sp
	ldrh r0, [r0, #0x0C]
	strh r0, [r7, #0x18]
	mov r1, sp
	ldrh r1, [r1, #0x0C]
	strh r1, [r7, #0x2C]
	movs r2, #0x05
	str r2, [sp, #0x010]
	movs r3, #0x01
	str r3, [sp, #0x00C]
_0815D6DC:
	mov r0, r10
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D7D4 @ =0x00005005
	movs r2, #0x00
	mov r3, r10
	bl sub_8020DD0
	ldr r1, [sp, #0x00C]
	lsls r4, r1, #0x02
	adds r6, r7, #0x4
	adds r4, r6, r4
	str r0, [r4, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	ldr r1, [sp, #0x00C]
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r4, #0x00]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #0x08
	ldr r3, [sp, #0x00C]
	lsls r1, r3, #0x04
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	ldr r0, [r7, #0x3C]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	lsls r1, r3, #0x01
	movs r0, #0x22
	adds r0, r0, r7
	mov r9, r0
	adds r0, r0, r1
	movs r2, #0x00
	strh r2, [r0, #0x00]
	movs r3, #0x18
	adds r3, r3, r7
	mov r8, r3
	adds r0, r3, r1
	mov r2, sp
	ldrh r2, [r2, #0x10]
	strh r2, [r0, #0x00]
	adds r5, r7, #0x0
	adds r5, #0x2C
	adds r1, r5, r1
	movs r3, #0x00
	strh r3, [r1, #0x00]
	ldr r0, [sp, #0x010]
	adds r0, #0x05
	str r0, [sp, #0x014]
	ldr r4, [sp, #0x00C]
	adds r4, #0x01
	mov r1, r10
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r1, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D7D4 @ =0x00005005
	movs r2, #0x00
	mov r3, r10
	bl sub_8020DD0
	lsls r1, r4, #0x02
	adds r6, r6, r1
	str r0, [r6, #0x00]
	movs r2, #0x00
	str r2, [sp, #0x000]
	adds r1, r4, #0x0
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r2, [r6, #0x00]
	ldr r0, [r7, #0x38]
	asrs r0, r0, #0x08
	lsls r1, r4, #0x04
	adds r0, r0, r1
	strh r0, [r2, #0x00]
	ldr r1, [r6, #0x00]
	ldr r0, [r7, #0x3C]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	lsls r4, r4, #0x01
	add r9, r4
	movs r0, #0x00
	mov r3, r9
	strh r0, [r3, #0x00]
	add r8, r4
	mov r1, sp
	ldrh r2, [r1, #0x14]
	mov r1, r8
	strh r2, [r1, #0x00]
	adds r5, r5, r4
	strh r0, [r5, #0x00]
	ldr r3, [sp, #0x010]
	adds r3, #0x0A
	str r3, [sp, #0x010]
	ldr r0, [sp, #0x00C]
	adds r0, #0x02
	str r0, [sp, #0x00C]
	cmp r0, #0x04
	ble _0815D6DC
	movs r0, #0x00
	strh r0, [r7, #0x00]
	strh r0, [r7, #0x36]
	adds r0, r7, #0x0
	add sp, #0x018
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815D7CC: .4byte 0xFFFFE000
_0815D7D0: .4byte 0x03001038
_0815D7D4: .4byte 0x00005005
