	.syntax unified
	.text

	thumb_func_start sub_8121910
sub_8121910:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	lsls r1, r1, #0x18
	movs r3, #0xAC
	lsls r3, r3, #0x01
	adds r0, r0, r3
	lsrs r1, r1, #0x12
	ldr r0, [r0, #0x00]
	adds r6, r0, r1
	ldr r5, [r6, #0x00]
	cmp r5, #0x00
	bne _08121950
	asrs r0, r2, #0x0C
	subs r0, #0x01
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r1, r2, #0x0
	movs r2, #0x01
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r6, #0x00]
	str r5, [sp, #0x000]
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	b _08121968
_08121950:
	asrs r1, r2, #0x0C
	subs r1, #0x01
	movs r0, #0x01
	negs r0, r0
	str r0, [sp, #0x000]
	str r0, [sp, #0x004]
	str r0, [sp, #0x008]
	str r0, [sp, #0x00C]
	adds r0, r5, #0x0
	movs r3, #0x01
	bl sub_80210A8
_08121968:
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r0}
	bx r0
