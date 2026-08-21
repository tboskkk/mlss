	.syntax unified
	.text

	thumb_func_start sub_8163A80
sub_8163A80:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r0, #0x0
	adds r0, r1, #0x0
	adds r1, r2, #0x0
	adds r2, r3, #0x0
	ldr r7, [sp, #0x020]
	ldr r6, [sp, #0x024]
	movs r4, #0x01
	negs r4, r4
	str r4, [sp, #0x000]
	str r4, [sp, #0x004]
	str r4, [sp, #0x008]
	adds r3, r4, #0x0
	bl sub_8020DD0
	str r0, [r5, #0x14]
	movs r1, #0x00
	str r1, [sp, #0x000]
	adds r1, r7, #0x0
	adds r2, r4, #0x0
	movs r3, #0x00
	bl sub_801E150
	ldr r0, [r5, #0x14]
	bl sprite_show_8020CBC
	ldr r2, [r5, #0x14]
	movs r0, #0x03
	ands r6, r0
	ldrb r1, [r2, #0x1F]
	movs r0, #0x04
	negs r0, r0
	ands r0, r1
	orrs r0, r6
	strb r0, [r2, #0x1F]
	ldr r1, [r5, #0x14]
	ldr r0, _08163AD8 @ =0x0000FFFF
	strh r0, [r1, #0x0E]
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163AD8: .4byte 0x0000FFFF
