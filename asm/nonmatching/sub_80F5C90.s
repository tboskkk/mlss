	.syntax unified
	.text

	thumb_func_start sub_80F5C90
sub_80F5C90:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x00C
	adds r5, r2, #0x0
	ldm r5!, {r0}
	cmp r0, #0x01
	beq _080F5D3C
	cmp r0, #0x01
	bgt _080F5CA6
	cmp r0, #0x00
	beq _080F5CAC
	b _080F5DA2
_080F5CA6:
	cmp r0, #0x02
	beq _080F5D48
	b _080F5DA2
_080F5CAC:
	ldr r3, [r5, #0x00]
	cmp r3, #0x00
	bne _080F5CC8
	ldr r0, _080F5CC4 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x16
	b _080F5CEC
	.byte 0x00, 0x00
_080F5CC4: .4byte 0x03000FD8
_080F5CC8:
	cmp r3, #0x01
	bne _080F5CE0
	ldr r0, _080F5CDC @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xBB
	lsls r2, r2, #0x02
	adds r1, r1, r2
	ldr r1, [r1, #0x00]
	lsls r1, r1, #0x0C
	b _080F5CEC
_080F5CDC: .4byte 0x03000FD8
_080F5CE0:
	ldr r0, _080F5D30 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	ldr r2, _080F5D34 @ =0x000002EE
	adds r1, r1, r2
	ldrh r1, [r1, #0x00]
	lsls r1, r1, #0x12
_080F5CEC:
	lsrs r4, r1, #0x16
	adds r7, r0, #0x0
	ldr r0, [r7, #0x00]
	lsls r1, r3, #0x02
	movs r6, #0xB8
	lsls r6, r6, #0x02
	adds r0, r0, r6
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F5D06
	bl sprite_heap_free
_080F5D06:
	ldr r1, _080F5D38 @ =0x08500A98
	ldr r2, [r5, #0x04]
	movs r0, #0x2C
	muls r0, r2
	adds r1, #0x08
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrh r0, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r1, r4, #0x0
	movs r3, #0x01
	bl sub_80213A0
	ldr r2, [r7, #0x00]
	ldr r1, [r5, #0x00]
	lsls r1, r1, #0x02
	adds r2, r2, r6
	adds r2, r2, r1
	str r0, [r2, #0x00]
	b _080F5DA2
_080F5D30: .4byte 0x03000FD8
_080F5D34: .4byte 0x000002EE
_080F5D38: .4byte 0x08500A98
_080F5D3C:
	ldr r0, [r5, #0x00]
	cmp r0, #0x00
	blt _080F5DA2
	bl nullsub_3
	b _080F5DA2
_080F5D48:
	ldr r0, _080F5DAC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r5, #0x04]
	lsls r1, r2, #0x02
	adds r0, #0x58
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov r12, r0
	ldr r1, [r5, #0x00]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080F5D64
	adds r0, #0xFF
_080F5D64:
	asrs r6, r0, #0x08
	mov r0, r12
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080F5D72
	adds r0, #0xFF
_080F5D72:
	asrs r3, r0, #0x08
	mov r0, r12
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _080F5D80
	adds r0, #0xFF
_080F5D80:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x01
	str r0, [sp, #0x004]
	movs r4, #0x00
	ldr r0, [r5, #0x08]
	cmp r0, #0x00
	bne _080F5D92
	movs r4, #0x01
_080F5D92:
	str r4, [sp, #0x008]
	adds r0, r2, #0x0
	adds r2, r6, #0x0
	bl sub_807AFD4
	ldr r0, [r5, #0x04]
	bl sub_8081F34
_080F5DA2:
	movs r0, #0x01
	add sp, #0x00C
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080F5DAC: .4byte 0x03000FD8
