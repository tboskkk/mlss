	.syntax unified
	.text

	thumb_func_start sub_80F09E8
sub_80F09E8:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r3, r0, #0x0
	adds r1, r2, #0x0
	ldr r2, [r1, #0x00]
	movs r0, #0x02
	ands r0, r2
	movs r5, #0x00
	cmp r0, #0x00
	beq _080F09FE
	ldr r5, _080F0A2C @ =0x00007FFF
_080F09FE:
	ldr r3, [r3, #0x14]
	movs r0, #0x01
	ands r2, r0
	movs r4, #0x01
	cmp r2, #0x00
	beq _080F0A0C
	movs r4, #0x02
_080F0A0C:
	ldr r2, [r1, #0x04]
	ldrh r0, [r1, #0x08]
	str r0, [sp, #0x000]
	ldrh r0, [r1, #0x0C]
	str r0, [sp, #0x004]
	adds r0, r3, #0x0
	adds r1, r4, #0x0
	adds r3, r5, #0x0
	bl sub_8027030
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F0A2C: .4byte 0x00007FFF
