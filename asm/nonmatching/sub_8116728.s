	.syntax unified
	.text

	thumb_func_start sub_8116728
sub_8116728:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl process_add
	ldr r0, _0811682C @ =0x08CDC378
	str r0, [r5, #0x18]
	movs r0, #0x00
	mov r8, r0
	movs r6, #0x00
	strh r6, [r5, #0x20]
	adds r0, r5, #0x0
	adds r0, #0x46
	mov r1, r8
	strb r1, [r0, #0x00]
	strh r6, [r5, #0x24]
	strh r6, [r5, #0x22]
	ldr r2, _08116830 @ =0x082011F8
	movs r0, #0x20
	movs r1, #0x00
	movs r3, #0x00
	bl alloc_Zero
	adds r4, r0, #0x0
	ldr r2, _08116834 @ =0x08201200
	movs r1, #0x08
	bl process_add
	ldr r0, _08116838 @ =0x08CDC388
	str r0, [r4, #0x18]
	mov r2, r8
	strb r2, [r4, #0x1C]
	str r4, [r5, #0x4C]
	ldr r4, _0811683C @ =0x08201208
	movs r0, #0x5C
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	movs r3, #0x10
	bl init_ybpa_process_8114B4C
	str r0, [r5, #0x50]
	ldr r0, [r5, #0x4C]
	str r5, [r0, #0x14]
	movs r0, #0x00
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8020994
	ldr r1, _08116840 @ =0x00001001
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x00
	movs r2, #0x00
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x1C]
	str r6, [sp, #0x000]
	movs r1, #0x04
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x1C]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x1C]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	ldr r1, [r5, #0x1C]
	movs r0, #0x50
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x1C]
	movs r0, #0x78
	strh r0, [r1, #0x02]
	ldr r0, _08116844 @ =0x082017B0
	movs r1, #0xC0
	lsls r1, r1, #0x13
	movs r2, #0xF0
	lsls r2, r2, #0x01
	bl CpuFastSet
	ldr r0, _08116848 @ =0x08201210
	ldr r1, _0811684C @ =0x06001000
	movs r2, #0xB0
	lsls r2, r2, #0x01
	bl CpuFastSet
	ldr r0, _08116850 @ =0x08201790
	ldr r1, _08116854 @ =0x02000080
	ldr r2, _08116858 @ =0x04000008
	bl CpuSet
	ldr r1, _0811685C @ =0x0300034C
	movs r0, #0xFF
	strh r0, [r1, #0x02]
	ldr r1, _08116860 @ =0x0200000A
	ldr r2, _08116864 @ =0x00000201
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	subs r1, #0x0A
	movs r2, #0x9A
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0811682C: .4byte 0x08CDC378
_08116830: .4byte 0x082011F8
_08116834: .4byte 0x08201200
_08116838: .4byte 0x08CDC388
_0811683C: .4byte 0x08201208
_08116840: .4byte 0x00001001
_08116844: .4byte 0x082017B0
_08116848: .4byte 0x08201210
_0811684C: .4byte 0x06001000
_08116850: .4byte 0x08201790
_08116854: .4byte 0x02000080
_08116858: .4byte 0x04000008
_0811685C: .4byte 0x0300034C
_08116860: .4byte 0x0200000A
_08116864: .4byte 0x00000201
