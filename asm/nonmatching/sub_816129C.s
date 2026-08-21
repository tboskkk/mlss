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
