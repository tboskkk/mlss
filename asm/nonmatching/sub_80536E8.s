	.syntax unified
	.text

	thumb_func_start sub_80536E8
sub_80536E8:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0805376C @ =0x08CDC1D8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x34]
	cmp r0, #0x00
	beq _080536FE
	movs r1, #0x03
	bl process_remove
_080536FE:
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	beq _08053708
	bl free_heap_8018D9C
_08053708:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _08053712
	bl free_heap_8018D9C
_08053712:
	ldr r0, [r4, #0x28]
	cmp r0, #0x00
	beq _0805371C
	bl free_heap_8018D9C
_0805371C:
	ldr r0, [r4, #0x2C]
	cmp r0, #0x00
	beq _08053726
	bl free_heap_8018D9C
_08053726:
	ldr r0, [r4, #0x30]
	bl free_heap_8018DA8
	bl sub_8021FD4
	ldr r2, _08053770 @ =0x0300034C
	ldr r0, _08053774 @ =0x00000888
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	adds r1, #0x38
	ands r0, r1
	strb r0, [r3, #0x00]
	adds r2, #0x31
	movs r1, #0x00
	movs r0, #0x02
	strb r0, [r2, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x12
	strh r1, [r0, #0x00]
	adds r0, #0x50
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0805376C: .4byte 0x08CDC1D8
_08053770: .4byte 0x0300034C
_08053774: .4byte 0x00000888
