	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _080FC424 @ =0x08CDC338
	str r0, [r5, #0x18]
	ldr r1, _080FC428 @ =0x0300034C
	adds r2, r1, #0x0
	adds r2, #0x44
	movs r0, #0x0A
	strb r0, [r2, #0x00]
	adds r1, #0x45
	movs r0, #0x02
	strb r0, [r1, #0x00]
	ldr r4, _080FC42C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FC3F0
	bl sub_810CDB4
	ldr r0, [r4, #0x00]
	movs r1, #0x97
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	movs r0, #0x02
	bl sub_8018B78
	ldr r0, [r4, #0x00]
	ldr r4, [r0, #0x78]
	cmp r4, #0x00
	beq _080FC35A
_080FC34E:
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r4, [r4, #0x00]
	cmp r4, #0x00
	bne _080FC34E
_080FC35A:
	ldr r4, _080FC42C @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0x91
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC370
	movs r1, #0x03
	bl sub_80F2130
_080FC370:
	ldr r0, [r4, #0x00]
	movs r1, #0x93
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC384
	movs r1, #0x03
	bl sub_8082D60
_080FC384:
	ldr r0, [r4, #0x00]
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC398
	movs r1, #0x03
	bl sub_81166AC
_080FC398:
	ldr r0, [r4, #0x00]
	movs r1, #0x94
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC3AC
	movs r1, #0x03
	bl sub_80854F8
_080FC3AC:
	ldr r0, [r4, #0x00]
	movs r1, #0xBC
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080FC3C0
	movs r1, #0x03
	bl sub_80E2EDC
_080FC3C0:
	ldr r0, _080FC430 @ =0x02000010
	movs r1, #0x00
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	adds r0, #0x02
	strh r1, [r0, #0x00]
	ldr r0, [r4, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
	bl sub_8021FD4
_080FC3F0:
	ldr r4, _080FC434 @ =0x03000FDC
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _080FC400
	bl free_heap_memory_8018C68
	movs r0, #0x00
	str r0, [r4, #0x00]
_080FC400:
	ldr r0, [r5, #0x14]
	bl process_enable
	ldr r1, _080FC428 @ =0x0300034C
	adds r1, #0x79
	ldrb r2, [r1, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080FC424: .4byte 0x08CDC338
_080FC428: .4byte 0x0300034C
_080FC42C: .4byte 0x03000FD8
_080FC430: .4byte 0x02000010
_080FC434: .4byte 0x03000FDC
