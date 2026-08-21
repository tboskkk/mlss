	.syntax unified
	.text

	thumb_func_start sub_80EF874
sub_80EF874:
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x01C
	str r0, [sp, #0x010]
	ldr r0, [sp, #0x03C]
	ldr r4, [sp, #0x040]
	ldr r5, [sp, #0x044]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r9, r3
	mov r1, r9
	str r1, [sp, #0x014]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r12, r0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r10, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x018]
	ldr r3, [sp, #0x010]
	ldr r0, [r3, #0x00]
	ldr r1, [r0, #0x14]
	mov r3, r8
	lsls r0, r3, #0x02
	adds r0, r0, r1
	ldr r5, [r0, #0x28]
	movs r0, #0x02
	str r0, [sp, #0x008]
	str r2, [sp, #0x00C]
	ldr r7, _080EF968 @ =0x03000FD0
	ldr r3, [r7, #0x00]
	movs r4, #0x00
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	movs r6, #0x01
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EF8FA
	movs r2, #0xF8
	lsls r2, r2, #0x01
	adds r0, r3, r2
	ldrh r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080EF8E8
	b _080EF9F8
_080EF8E8:
	ldr r1, _080EF96C @ =0x0000055A
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	adds r0, r6, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080EF8F8
	b _080EF9F8
_080EF8F8:
	movs r4, #0x01
_080EF8FA:
	movs r0, #0xAA
	lsls r0, r0, #0x03
	adds r2, r3, r0
	adds r1, r6, #0x0
	lsls r1, r4
	ldr r0, [r2, #0x00]
	orrs r0, r1
	str r0, [r2, #0x00]
	ldr r1, _080EF970 @ =0x00000544
	adds r0, r3, r1
	adds r0, r0, r4
	movs r3, #0x00
	mov r2, r8
	strb r2, [r0, #0x00]
	ldr r0, [r7, #0x00]
	adds r1, #0x02
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r5, #0x02]
	strb r1, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0xF8
	ldrh r1, [r2, #0x00]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r2, #0x91
	lsls r2, r2, #0x02
	adds r0, r5, r2
	strh r3, [r0, #0x00]
	ldr r1, _080EF974 @ =0x00000242
	adds r0, r5, r1
	strh r3, [r0, #0x00]
	mov r2, r12
	cmp r2, #0x00
	beq _080EF97C
	ldr r0, [r7, #0x00]
	movs r3, #0x96
	lsls r3, r3, #0x03
	adds r0, r0, r3
	ldr r1, _080EF978 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r1, #0x31
	str r1, [sp, #0x000]
	mov r1, r12
	adds r1, #0x07
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	b _080EF9BA
_080EF968: .4byte 0x03000FD0
_080EF96C: .4byte 0x0000055A
_080EF970: .4byte 0x00000544
_080EF974: .4byte 0x00000242
_080EF978: .4byte 0x03000FC0
_080EF97C:
	movs r2, #0x83
	lsls r2, r2, #0x02
	adds r0, r5, r2
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1B
	lsrs r0, r0, #0x1F
	mov r3, r10
	ands r0, r3
	cmp r0, #0x00
	beq _080EF998
	adds r0, r5, #0x0
	mov r1, r9
	bl sub_80478AC
_080EF998:
	ldr r0, [r7, #0x00]
	movs r1, #0x96
	lsls r1, r1, #0x03
	adds r0, r0, r1
	ldr r1, _080EFA08 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r2, r2, r3
	movs r1, #0x31
	str r1, [sp, #0x000]
	ldr r1, [sp, #0x014]
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
_080EF9BA:
	ldr r4, _080EFA0C @ =0x03000FD0
	ldr r0, [r4, #0x00]
	movs r2, #0x96
	lsls r2, r2, #0x03
	adds r0, r0, r2
	ldr r1, _080EFA08 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r3, #0xE3
	lsls r3, r3, #0x02
	adds r2, r2, r3
	movs r1, #0x2F
	str r1, [sp, #0x000]
	mov r1, r8
	str r1, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	ldr r2, [sp, #0x010]
	ldr r0, [r2, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, #0xA8
	add r2, sp, #0x008
	bl sub_80ECB20
	ldr r0, [r4, #0x00]
	ldr r3, _080EFA10 @ =0x0000054C
	adds r0, r0, r3
	mov r1, sp
	ldrh r1, [r1, #0x18]
	strh r1, [r0, #0x00]
_080EF9F8:
	add sp, #0x01C
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080EFA08: .4byte 0x03000FC0
_080EFA0C: .4byte 0x03000FD0
_080EFA10: .4byte 0x0000054C
