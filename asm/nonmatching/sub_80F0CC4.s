	.syntax unified
	.text

	thumb_func_start sub_80F0CC4
sub_80F0CC4:
	push {r4, r5, r6, lr}
	add sp, #-0x010
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	bne _080F0CEA
	ldr r1, [r4, #0x04]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F0CE6
	movs r0, #0x0F
	ands r1, r0
	lsls r0, r1, #0x04
	b _080F0CE8
_080F0CE6:
	lsls r0, r1, #0x08
_080F0CE8:
	str r0, [r4, #0x04]
_080F0CEA:
	ldr r0, [r5, #0x14]
	movs r2, #0x82
	lsls r2, r2, #0x02
	adds r1, r0, r2
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x1D
	lsrs r1, r1, #0x1F
	add r3, sp, #0x00C
	add r2, sp, #0x008
	bl get_fobj_screen_pos
	ldr r0, [r5, #0x14]
	ldr r1, [r4, #0x00]
	adds r1, #0x01
	ldr r3, [sp, #0x008]
	subs r3, #0x78
	ldr r2, [sp, #0x00C]
	subs r2, #0x64
	str r2, [sp, #0x000]
	movs r5, #0x04
	ldsh r2, [r4, r5]
	str r2, [sp, #0x004]
	movs r2, #0x01
	bl sub_8028AFC
	adds r2, r6, #0x0
	adds r2, #0xA0
	ldrh r1, [r2, #0x00]
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r3, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	movs r0, #0x00
	add sp, #0x010
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
