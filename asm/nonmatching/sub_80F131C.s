	.syntax unified
	.text

	thumb_func_start sub_80F131C
sub_80F131C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x018
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	mov r8, r2
	adds r4, r3, #0x0
	adds r0, #0x1C
	add r3, sp, #0x010
	add r1, sp, #0x014
	str r1, [sp, #0x000]
	adds r1, r4, #0x0
	add r2, sp, #0x00C
	bl sub_80EA6D4
	adds r4, #0x0C
	ldm r4!, {r5}
	movs r0, #0x03
	ands r0, r5
	cmp r0, #0x01
	bne _080F136E
	ldr r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F135A
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F135C
_080F135A:
	lsls r0, r1, #0x08
_080F135C:
	str r0, [r4, #0x00]
	ldr r1, [r4, #0x00]
	cmp r1, #0x00
	beq _080F136E
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0x0
	bl sub_804794C
_080F136E:
	movs r0, #0x03
	ands r5, r0
	ldr r3, [sp, #0x00C]
	ldr r0, [sp, #0x010]
	str r0, [sp, #0x000]
	ldr r0, [sp, #0x014]
	str r0, [sp, #0x004]
	ldrh r0, [r4, #0x00]
	str r0, [sp, #0x008]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	movs r2, #0x01
	bl sub_8045A94
	adds r0, r7, #0x0
	adds r1, r6, #0x0
	mov r2, r8
	movs r3, #0x00
	bl script_enable_flag_2
	movs r0, #0x00
	add sp, #0x018
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
