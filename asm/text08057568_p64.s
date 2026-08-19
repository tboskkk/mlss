	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8116620
sub_8116620:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0x44
	ldrh r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08116630
	movs r0, #0x04
	b _0811664E
_08116630:
	ldrh r0, [r1, #0x34]
	cmp r0, #0x00
	bne _0811663A
	movs r0, #0x00
	b _0811664E
_0811663A:
	adds r0, r1, #0x0
	adds r0, #0x32
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	bne _0811664C
	movs r0, #0x01
	b _0811664E
_0811664C:
	movs r0, #0x02
_0811664E:
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_8116654
sub_8116654:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r0, #0x2C]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r0, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x02
	bne _0811667A
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r2, #0x00]
_0811667A:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_8116680
sub_8116680:
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, [r0, #0x2C]
	lsls r0, r1, #0x03
	subs r0, r0, r1
	lsls r0, r0, #0x02
	adds r2, r0, r2
	ldrb r1, [r2, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x01
	bne _081166A6
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x00]
_081166A6:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
	thumb_func_start sub_81166AC
sub_81166AC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0x0
	adds r7, r1, #0x0
	ldr r0, _081166BC @ =0x08CDC368
	str r0, [r5, #0x18]
	ldr r4, [r5, #0x2C]
	movs r6, #0x00
	b _081166F0
_081166BC: .4byte 0x08CDC368
_081166C0:
	ldrb r1, [r4, #0x00]
	movs r0, #0x03
	ands r0, r1
	cmp r0, #0x00
	beq _081166EC
	lsls r1, r1, #0x1A
	lsrs r1, r1, #0x1D
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x00
	beq _081166E6
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _081166E0
	bl free_heap_8018DA8
_081166E0:
	ldr r0, [r4, #0x10]
	bl free_heap_8018DA8
_081166E6:
	ldr r0, [r4, #0x0C]
	bl free_heap_8018DA8
_081166EC:
	adds r6, #0x01
	adds r4, #0x1C
_081166F0:
	adds r0, r5, #0x0
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	cmp r6, r0
	blt _081166C0
	ldr r0, [r5, #0x2C]
	cmp r0, #0x00
	beq _08116704
	bl free_heap_8018D9C
_08116704:
	ldr r0, [r5, #0x20]
	cmp r0, #0x00
	beq _0811670E
	bl free_heap_8018D9C
_0811670E:
	ldr r0, [r5, #0x1C]
	cmp r0, #0x00
	beq _08116718
	bl free_heap_8018D9C
_08116718:
	adds r0, r5, #0x0
	adds r1, r7, #0x0
	bl process_remove
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
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
	thumb_func_start sub_8116868
sub_8116868:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r1, _0811688C @ =0x0300034C
	ldrh r2, [r1, #0x2A]
	movs r0, #0x40
	ands r0, r2
	adds r6, r1, #0x0
	cmp r0, #0x00
	beq _08116890
	adds r1, r4, #0x0
	adds r1, #0x46
	ldrb r0, [r1, #0x00]
	cmp r0, #0x07
	beq _081168A6
	adds r0, #0x01
	b _081168A4
	.byte 0x00, 0x00
_0811688C: .4byte 0x0300034C
_08116890:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0x00
	beq _081168A6
	adds r1, r4, #0x0
	adds r1, #0x46
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _081168A6
	subs r0, #0x01
_081168A4:
	strb r0, [r1, #0x00]
_081168A6:
	ldrh r1, [r6, #0x2A]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081168F0
	ldrh r0, [r4, #0x20]
	cmp r0, #0x00
	bne _081168DC
	ldr r0, [r4, #0x50]
	adds r5, r4, #0x0
	adds r5, #0x46
	ldrb r2, [r5, #0x00]
	ldr r1, _081168D8 @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0xFF
	bl sub_8114C1C
	ldrb r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x47
	strb r0, [r1, #0x00]
	b _081168E6
	.byte 0x00, 0x00
_081168D8: .4byte 0x0000FFFF
_081168DC:
	ldr r0, [r4, #0x50]
	movs r1, #0x00
	movs r2, #0x01
	bl sub_8115048
_081168E6:
	ldrh r0, [r4, #0x20]
	movs r1, #0x01
	eors r0, r1
	strh r0, [r4, #0x20]
	ldr r6, _08116968 @ =0x0300034C
_081168F0:
	adds r5, r6, #0x0
	ldrh r1, [r5, #0x2A]
	movs r0, #0x80
	lsls r0, r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _08116918
	ldr r0, [r4, #0x50]
	ldr r1, _0811696C @ =0x00007FFF
	str r1, [sp, #0x000]
	ldr r1, _08116970 @ =0x0000FFFF
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x08
	bl sub_81151E4
_08116918:
	ldrh r1, [r5, #0x2A]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08116928
	ldr r0, [r4, #0x4C]
	bl sub_81169C8
_08116928:
	ldrh r1, [r6, #0x2A]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0811695E
	cmp r4, #0x00
	beq _0811695E
	ldr r0, _08116974 @ =0x08CDC378
	str r0, [r4, #0x18]
	bl sub_8021FD4
	ldr r0, [r4, #0x50]
	cmp r0, #0x00
	beq _0811694A
	movs r1, #0x03
	bl sub_81166AC
_0811694A:
	ldr r0, [r4, #0x4C]
	cmp r0, #0x00
	beq _08116956
	movs r1, #0x03
	bl process_remove
_08116956:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_0811695E:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08116968: .4byte 0x0300034C
_0811696C: .4byte 0x00007FFF
_08116970: .4byte 0x0000FFFF
_08116974: .4byte 0x08CDC378
	thumb_func_start sub_8116978
sub_8116978:
	push {r4, r5, r6, lr}
	ldr r4, _081169B4 @ =0x0300034C
	movs r0, #0x88
	lsls r0, r0, #0x04
	adds r4, r4, r0
	ldr r6, [r4, #0x00]
	bl sub_8021F7C
	bl sub_8020A78
	ldr r2, _081169B8 @ =0x03000D48
	ldr r5, _081169BC @ =0x0203FFB8
	ldr r0, [r5, #0x3C]
	ldr r3, _081169C0 @ =0x00000A14
	adds r1, r0, r3
	ldr r2, [r2, #0x00]
	bl _call_via_r2
	ldr r1, _081169C4 @ =0x03000D4C
	ldr r0, [r5, #0x3C]
	ldr r2, [r1, #0x00]
	adds r1, r6, #0x0
	bl _call_via_r2
	adds r6, r0, #0x0
	str r6, [r4, #0x00]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081169B4: .4byte 0x0300034C
_081169B8: .4byte 0x03000D48
_081169BC: .4byte 0x0203FFB8
_081169C0: .4byte 0x00000A14
_081169C4: .4byte 0x03000D4C
