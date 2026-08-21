	.syntax unified
	.text

	thumb_func_start sub_8161A58
sub_8161A58:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r4, r0, #0x0
	ldr r1, _08161AA8 @ =0x00005005
	movs r5, #0x01
	negs r5, r5
	str r5, [sp, #0x000]
	str r5, [sp, #0x004]
	str r5, [sp, #0x008]
	movs r0, #0x04
	movs r2, #0x01
	adds r3, r5, #0x0
	bl sub_8020DD0
	str r0, [r4, #0x00]
	movs r6, #0x00
	str r6, [sp, #0x000]
	movs r1, #0x21
	adds r2, r5, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r4, #0x00]
	bl sprite_show_8020CBC
	ldr r1, [r4, #0x00]
	movs r0, #0x78
	strh r0, [r1, #0x00]
	ldr r1, [r4, #0x00]
	movs r0, #0x50
	strh r0, [r1, #0x02]
	str r6, [r4, #0x0C]
	adds r0, #0xB0
	str r0, [r4, #0x04]
	str r6, [r4, #0x08]
	adds r0, r4, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08161AA8: .4byte 0x00005005
