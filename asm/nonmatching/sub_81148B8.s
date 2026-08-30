	push {r4, lr}
	add sp, #-0x010
	adds r4, r0, #0x0
	ldrb r0, [r4, #0x1D]
	cmp r0, #0x01
	bne _081148C6
	b _08114A30
_081148C6:
	cmp r0, #0x01
	bgt _081148D0
	cmp r0, #0x00
	beq _081148D8
	b _08114A74
_081148D0:
	cmp r0, #0x02
	bne _081148D6
	b _08114A42
_081148D6:
	b _08114A74
_081148D8:
	ldr r1, _081148F8 @ =0x0300034C
	ldrh r2, [r1, #0x2A]
	movs r0, #0x01
	ands r0, r2
	adds r3, r1, #0x0
	cmp r0, #0x00
	beq _081149C0
	movs r2, #0x1C
	ldsb r2, [r4, r2]
	cmp r2, #0x01
	beq _08114928
	cmp r2, #0x01
	bgt _081148FC
	cmp r2, #0x00
	beq _08114902
	b _08114A74
_081148F8: .4byte 0x0300034C
_081148FC:
	cmp r2, #0x02
	beq _08114970
	b _08114A74
_08114902:
	movs r0, #0x01
	strb r0, [r4, #0x1D]
	ldr r0, [r4, #0x24]
	ldr r1, _08114920 @ =0x00007FFF
	str r1, [sp, #0x000]
	ldr r1, _08114924 @ =0x0000FFFF
	str r1, [sp, #0x004]
	str r2, [sp, #0x008]
	str r2, [sp, #0x00C]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x10
	bl sub_81151E4
	b _08114A74
_08114920: .4byte 0x00007FFF
_08114924: .4byte 0x0000FFFF
_08114928:
	cmp r4, #0x00
	beq _08114950
	ldr r0, _08114968 @ =0x08CDC348
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _0811493C
	movs r1, #0x03
	bl process_remove
_0811493C:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _08114948
	movs r1, #0x03
	bl sub_81166AC
_08114948:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_08114950:
	ldr r4, _0811496C @ =0x0820118C
	movs r0, #0x54
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	movs r1, #0x08
	adds r2, r4, #0x0
	bl sub_8116728
	b _08114A74
_08114968: .4byte 0x08CDC348
_0811496C: .4byte 0x0820118C
_08114970:
	cmp r4, #0x00
	beq _08114998
	ldr r0, _081149B4 @ =0x08CDC348
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _08114984
	movs r1, #0x03
	bl process_remove
_08114984:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _08114990
	movs r1, #0x03
	bl sub_81166AC
_08114990:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_08114998:
	movs r0, #0xB2
	lsls r0, r0, #0x01
	ldr r4, _081149B8 @ =0x08201194
	movs r1, #0x00
	adds r2, r4, #0x0
	movs r3, #0x00
	bl alloc_Zero
	ldr r3, _081149BC @ =0x0000FFFF
	movs r1, #0x08
	adds r2, r4, #0x0
	bl load_init_812538C
	b _08114A74
_081149B4: .4byte 0x08CDC348
_081149B8: .4byte 0x08201194
_081149BC: .4byte 0x0000FFFF
_081149C0:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _081149F8
	cmp r4, #0x00
	beq _08114A74
	ldr r0, _081149F4 @ =0x08CDC348
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _081149DC
	movs r1, #0x03
	bl process_remove
_081149DC:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _081149E8
	movs r1, #0x03
	bl sub_81166AC
_081149E8:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
	b _08114A74
	.byte 0x00, 0x00
_081149F4: .4byte 0x08CDC348
_081149F8:
	ldrh r1, [r3, #0x2E]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08114A12
	ldrb r0, [r4, #0x1C]
	subs r0, #0x01
	strb r0, [r4, #0x1C]
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bge _08114A12
	movs r0, #0x02
	strb r0, [r4, #0x1C]
_08114A12:
	ldrh r1, [r3, #0x2E]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08114A74
	ldrb r0, [r4, #0x1C]
	adds r0, #0x01
	strb r0, [r4, #0x1C]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x02
	ble _08114A74
	movs r0, #0x00
	strb r0, [r4, #0x1C]
	b _08114A74
_08114A30:
	ldr r0, [r4, #0x24]
	bl sub_8116620
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _08114A74
	movs r0, #0x02
	strb r0, [r4, #0x1D]
	b _08114A74
_08114A42:
	cmp r4, #0x00
	beq _08114A6A
	ldr r0, _08114A7C @ =0x08CDC348
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _08114A56
	movs r1, #0x03
	bl process_remove
_08114A56:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _08114A62
	movs r1, #0x03
	bl sub_81166AC
_08114A62:
	adds r0, r4, #0x0
	movs r1, #0x03
	bl process_remove
_08114A6A:
	movs r0, #0x01
	negs r0, r0
	movs r1, #0x00
	bl sub_8122BA0
_08114A74:
	add sp, #0x010
	pop {r4}
	pop {r0}
	bx r0
_08114A7C: .4byte 0x08CDC348
