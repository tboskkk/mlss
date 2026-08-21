	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_81344D4
sub_81344D4:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x00C
	adds r6, r0, #0x0
	mov r8, r1
	mov r9, r2
	mov r10, r3
	ldr r7, [sp, #0x02C]
	ldr r5, [sp, #0x030]
	bl sub_8134940
	strb r7, [r6, #0x1C]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	mov r0, r8
	mov r1, r9
	mov r2, r10
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x08]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r6, #0x08]
	bl sprite_show_8020CBC
	ldr r3, [r6, #0x08]
	lsls r2, r5, #0x06
	ldrb r1, [r3, #0x1F]
	movs r0, #0x3F
	ands r0, r1
	orrs r0, r2
	movs r1, #0x03
	ands r5, r1
	lsls r2, r5, #0x04
	movs r1, #0x31
	negs r1, r1
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x02
	adds r1, #0x24
	ands r0, r1
	orrs r0, r2
	adds r1, #0x09
	ands r0, r1
	orrs r0, r5
	strb r0, [r3, #0x1F]
	ldr r0, [r6, #0x08]
	movs r1, #0x00
	strh r1, [r0, #0x0E]
	add sp, #0x00C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
