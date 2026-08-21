	.syntax unified
	.text

	thumb_func_start sub_815D1DC
sub_815D1DC:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r6, #0x00
	strh r6, [r5, #0x18]
	str r6, [r5, #0x08]
	str r6, [r5, #0x04]
	str r6, [r5, #0x00]
	strb r6, [r5, #0x1A]
	strb r6, [r5, #0x1B]
	strb r6, [r5, #0x1C]
	strb r6, [r5, #0x1D]
	movs r0, #0xE8
	lsls r0, r0, #0x08
	str r0, [r5, #0x10]
	movs r0, #0xA0
	lsls r0, r0, #0x05
	str r0, [r5, #0x14]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D2E0 @ =0x00005008
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x00]
	str r6, [sp, #0x000]
	movs r1, #0x0A
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r5, #0x00]
	movs r0, #0xD8
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x00]
	movs r1, #0x10
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x02]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D2E0 @ =0x00005008
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x04]
	str r6, [sp, #0x000]
	movs r1, #0x0A
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x04]
	bl sprite_show_8020CBC
	ldr r1, [r5, #0x04]
	movs r0, #0xE0
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x04]
	mov r1, r8
	strh r1, [r0, #0x02]
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _0815D2E0 @ =0x00005008
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x08]
	str r6, [sp, #0x000]
	movs r1, #0x0A
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x08]
	bl sprite_show_8020CBC
	ldr r1, [r5, #0x08]
	movs r0, #0xE8
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x08]
	mov r1, r8
	strh r1, [r0, #0x02]
	ldr r1, _0815D2E0 @ =0x00005008
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x0C]
	str r6, [sp, #0x000]
	movs r1, #0x26
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x0C]
	bl sprite_show_8020CBC
	ldr r0, [r5, #0x0C]
	ldr r1, _0815D2E4 @ =0x0000FFF0
	strh r1, [r0, #0x00]
	ldr r0, [r5, #0x0C]
	strh r1, [r0, #0x02]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0815D2E0: .4byte 0x00005008
_0815D2E4: .4byte 0x0000FFF0
