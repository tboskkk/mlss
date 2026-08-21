	.syntax unified
	.text

	thumb_func_start sub_80F028C
sub_80F028C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x010
	adds r7, r0, #0x0
	adds r5, r1, #0x0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r4, _080F031C @ =0x03000FD0
	ldr r2, [r4, #0x00]
	movs r1, #0xA4
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	movs r3, #0x01
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F02D6
	movs r1, #0xF8
	lsls r1, r1, #0x01
	adds r0, r2, r1
	ldrh r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F0310
	ldr r1, _080F0320 @ =0x0000055A
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F0310
_080F02D6:
	movs r0, #0x02
	str r0, [sp, #0x008]
	str r5, [sp, #0x00C]
	movs r1, #0x96
	lsls r1, r1, #0x03
	adds r0, r2, r1
	ldr r1, _080F0324 @ =0x03000FC0
	ldr r2, [r1, #0x00]
	movs r1, #0xE3
	lsls r1, r1, #0x02
	adds r2, r2, r1
	movs r1, #0x2F
	str r1, [sp, #0x000]
	str r6, [sp, #0x004]
	movs r1, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	ldr r0, [r7, #0x00]
	ldr r1, [r4, #0x00]
	adds r1, #0xA8
	add r2, sp, #0x008
	bl sub_80ECB20
	ldr r0, [r4, #0x00]
	ldr r1, _080F0328 @ =0x0000054C
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x00]
_080F0310:
	add sp, #0x010
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080F031C: .4byte 0x03000FD0
_080F0320: .4byte 0x0000055A
_080F0324: .4byte 0x03000FC0
_080F0328: .4byte 0x0000054C
