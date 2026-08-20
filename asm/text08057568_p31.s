	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8161698
sub_8161698:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	adds r6, r0, #0x0
	movs r0, #0xF0
	lsls r0, r0, #0x07
	str r0, [r6, #0x1C]
	movs r0, #0xA0
	lsls r0, r0, #0x07
	str r0, [r6, #0x20]
	movs r1, #0x00
	str r1, [r6, #0x24]
	str r1, [r6, #0x28]
	movs r0, #0x96
	lsls r0, r0, #0x01
	str r0, [r6, #0x2C]
	str r1, [r6, #0x30]
	movs r0, #0x01
	negs r0, r0
	mov r10, r0
	mov r9, r1
	adds r7, r6, #0x0
	movs r1, #0x39
	str r1, [sp, #0x010]
	movs r3, #0x00
	mov r8, r3
	movs r0, #0x00
	str r0, [sp, #0x00C]
_081616D6:
	mov r1, r10
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	str r1, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _08161778 @ =0x00005005
	movs r2, #0x01
	mov r3, r10
	bl sub_8020DD0
	str r0, [r7, #0x00]
	mov r3, r9
	str r3, [sp, #0x000]
	ldr r1, [sp, #0x010]
	mov r2, r10
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r7, #0x00]
	bl sprite_show_8020CBC
	adds r4, r6, #0x4
	add r4, r8
	ldr r0, [r6, #0x1C]
	str r0, [r4, #0x00]
	adds r5, r6, #0x0
	adds r5, #0x08
	add r5, r8
	ldr r0, _0816177C @ =0xFFFFD800
	str r0, [r5, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x14
	add r1, r8
	mov r0, r9
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x18
	add r2, r8
	str r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x0C
	add r0, r8
	mov r3, r9
	str r3, [r0, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x10
	add r0, r8
	str r3, [r0, #0x00]
	ldr r3, [r7, #0x00]
	ldr r0, [r4, #0x00]
	ldr r1, [r1, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r3, #0x00]
	ldr r3, [r7, #0x00]
	ldr r0, [r5, #0x00]
	ldr r1, [r2, #0x00]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r3, #0x02]
	adds r7, #0x1C
	ldr r0, [sp, #0x010]
	adds r0, #0x06
	str r0, [sp, #0x010]
	movs r1, #0x1C
	add r8, r1
	ldr r3, [sp, #0x00C]
	subs r3, #0x01
	str r3, [sp, #0x00C]
	cmp r3, #0x00
	bge _081616D6
	adds r0, r6, #0x0
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08161778: .4byte 0x00005005
_0816177C: .4byte 0xFFFFD800
	thumb_func_start sub_8161780
sub_8161780:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x30]
	cmp r0, #0x00
	beq _08161790
	cmp r0, #0x01
	beq _081617D4
	b _081617EA
_08161790:
	ldr r0, [r4, #0x10]
	adds r2, r0, #0x0
	adds r2, #0x14
	str r2, [r4, #0x10]
	ldr r1, [r4, #0x08]
	adds r1, r1, r2
	str r1, [r4, #0x08]
	ldr r0, _081617D0 @ =0x00004FFF
	cmp r1, r0
	ble _081617B6
	negs r0, r2
	lsls r0, r0, #0x01
	movs r1, #0x03
	bl __divsi3
	str r0, [r4, #0x10]
	asrs r0, r0, #0x08
	cmp r0, #0x00
	beq _081617E2
_081617B6:
	ldr r2, [r4, #0x00]
	ldr r0, [r4, #0x04]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x00]
	ldr r2, [r4, #0x00]
	ldr r0, [r4, #0x08]
	ldr r1, [r4, #0x18]
	adds r0, r0, r1
	asrs r0, r0, #0x08
	strh r0, [r2, #0x02]
	b _081617EA
_081617D0: .4byte 0x00004FFF
_081617D4:
	ldr r0, [r4, #0x2C]
	subs r0, #0x01
	str r0, [r4, #0x2C]
	cmp r0, #0x00
	bgt _081617EA
	movs r0, #0x01
	b _081617EC
_081617E2:
	movs r0, #0x50
	str r0, [r4, #0x2C]
	movs r0, #0x01
	str r0, [r4, #0x30]
_081617EA:
	movs r0, #0x00
_081617EC:
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
	thumb_func_start sub_81617F4
sub_81617F4:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	ldr r0, [r5, #0x00]
	bl sub_8021308
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _0816180E
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_0816180E:
	pop {r4, r5}
	pop {r0}
	bx r0
