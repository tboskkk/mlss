	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_816129C
sub_816129C:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r3, [r4, #0x0C]
	adds r0, r3, #0x0
	adds r0, #0x29
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	bne _081612CA
	movs r1, #0x08
	ldsb r1, [r4, r1]
	movs r2, #0x01
	negs r2, r2
	str r0, [sp, #0x000]
	adds r0, r3, #0x0
	movs r3, #0x00
	bl sub_801E150
_081612CA:
	cmp r5, #0x00
	beq _081612D6
	ldr r0, [r4, #0x0C]
	bl sprite_show_8020CBC
	b _081612DC
_081612D6:
	ldr r0, [r4, #0x0C]
	bl sprite_hide_8021F20
_081612DC:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_start sub_81612E4
sub_81612E4:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r0, [r4, #0x0C]
	bl sub_8021308
	movs r0, #0x00
	str r0, [r4, #0x0C]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_81612F8
sub_81612F8:
	push {r4, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	adds r2, r1, #0x0
	movs r0, #0x06
	ldsh r1, [r4, r0]
	movs r3, #0x01
	negs r3, r3
	str r3, [sp, #0x000]
	str r3, [sp, #0x004]
	str r3, [sp, #0x008]
	movs r0, #0x00
	bl sub_8020DD0
	str r0, [r4, #0x0C]
	ldr r1, [r4, #0x14]
	asrs r1, r1, #0x08
	strh r1, [r0, #0x00]
	ldr r1, [r4, #0x0C]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #0x08
	strh r0, [r1, #0x02]
	add sp, #0x00C
	pop {r4}
	pop {r0}
	bx r0
