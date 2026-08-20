	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8161888
sub_8161888:
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	add sp, #-0x00C
	adds r5, r0, #0x0
	movs r6, #0x00
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _08161920 @ =0x00005005
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	mov r9, r6
	str r0, [r5, #0x08]
	str r6, [sp, #0x000]
	movs r1, #0x2D
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x08]
	bl sprite_show_8020CBC
	str r6, [r5, #0x10]
	ldr r0, [r5, #0x08]
	strh r6, [r0, #0x00]
	ldr r0, [r5, #0x08]
	movs r6, #0x50
	strh r6, [r0, #0x02]
	movs r0, #0xF0
	lsls r0, r0, #0x08
	mov r8, r0
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	movs r0, #0x04
	ldr r1, _08161920 @ =0x00005005
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x0C]
	mov r1, r9
	str r1, [sp, #0x000]
	movs r1, #0x33
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x0C]
	bl sprite_show_8020CBC
	mov r0, r8
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x0C]
	movs r0, #0xF0
	strh r0, [r1, #0x00]
	ldr r0, [r5, #0x0C]
	strh r6, [r0, #0x02]
	movs r0, #0x1E
	strh r0, [r5, #0x00]
	movs r0, #0x01
	strh r0, [r5, #0x02]
	add sp, #0x00C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08161920: .4byte 0x00005005
	thumb_func_start sub_8161924
sub_8161924:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _08161934
	bl sub_8021308
_08161934:
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0816193E
	bl sub_8021308
_0816193E:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _0816194C
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_0816194C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
