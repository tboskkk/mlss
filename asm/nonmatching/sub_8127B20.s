	.syntax unified
	.text

	thumb_func_start sub_8127B20
sub_8127B20:
	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldr r0, _08127B84 @ =0x0300034C
	ldr r1, _08127B88 @ =0x00000884
	adds r0, r0, r1
	movs r1, #0x01
	negs r1, r1
	str r1, [r0, #0x00]
	movs r1, #0xAE
	lsls r1, r1, #0x01
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldrh r2, [r1, #0x00]
	ldr r1, _08127B8C @ =0x0000FFFF
	str r1, [sp, #0x000]
	str r1, [sp, #0x004]
	movs r1, #0x00
	str r1, [sp, #0x008]
	str r1, [sp, #0x00C]
	movs r3, #0x10
	bl sub_81151E4
	movs r0, #0x00
	movs r1, #0x1E
	movs r2, #0x00
	bl sub_8019308
	movs r0, #0x00
	movs r1, #0xFF
	movs r2, #0x10
	bl sub_80193B4
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r4, #0x0
	adds r0, #0xE6
	ldrh r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0xEF
	movs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x010
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08127B84: .4byte 0x0300034C
_08127B88: .4byte 0x00000884
_08127B8C: .4byte 0x0000FFFF
