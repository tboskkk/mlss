	.syntax unified
	.text

	thumb_func_start sub_80F2524
sub_80F2524:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x008
	adds r5, r0, #0x0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r0, r7, #0x08
	ldr r1, [r5, #0x2C]
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x01
	adds r4, r3, r0
	movs r0, #0x01
	str r0, [sp, #0x000]
	str r2, [sp, #0x004]
	movs r2, #0xD0
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r6, [r0, #0x00]
	cmp r6, #0x00
	beq _080F25FC
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	bne _080F25B8
	ldr r0, [r4, #0x00]
	mov r10, r0
	ldr r1, [r4, #0x04]
	mov r8, r1
	adds r2, #0x04
	adds r0, r3, r2
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r0, #0xD6
	lsls r0, r0, #0x01
	adds r1, r3, r0
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x00]
	adds r2, #0x0C
	adds r1, r3, r2
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x00]
	movs r0, #0xFA
	lsls r0, r0, #0x01
	adds r1, r3, r0
	subs r2, #0x18
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r0, #0xFC
	lsls r0, r0, #0x01
	adds r1, r3, r0
	adds r2, #0x04
	adds r0, r3, r2
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	movs r1, #0xD3
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r2, #0x60
	adds r0, r3, r2
	strb r1, [r0, #0x00]
	movs r1, #0xAC
	lsls r1, r1, #0x01
	adds r0, r3, r1
	subs r2, #0x48
	adds r1, r3, r2
	movs r2, #0x20
	bl CpuSet
	b _080F25CE
_080F25B8:
	mov r10, r0
	ldr r0, [r4, #0x0C]
	mov r8, r0
	ldr r1, _080F25F8 @ =0x000001A5
	adds r0, r3, r1
	ldrb r0, [r0, #0x00]
	mov r9, r0
	movs r2, #0xD1
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r6, [r0, #0x00]
_080F25CE:
	adds r1, r4, #0x0
	adds r1, #0xA0
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r1, [r5, #0x2C]
	adds r0, r5, #0x0
	mov r2, sp
	adds r3, r7, #0x0
	bl sub_80F8984
	mov r0, r10
	str r0, [r4, #0x08]
	mov r1, r8
	str r1, [r4, #0x0C]
	adds r0, r4, #0x0
	adds r0, #0xA2
	strh r6, [r0, #0x00]
	adds r0, #0x03
	mov r2, r9
	strb r2, [r0, #0x00]
	b _080F2606
_080F25F8: .4byte 0x000001A5
_080F25FC:
	adds r0, r5, #0x0
	mov r2, sp
	adds r3, r7, #0x0
	bl sub_80F8984
_080F2606:
	add sp, #0x008
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
