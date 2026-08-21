	.syntax unified
	.text

	thumb_func_start sub_80F1C34
sub_80F1C34:
	push {r4, r5, r6, r7, lr}
	ldr r1, [r2, #0x00]
	lsls r1, r1, #0x02
	adds r1, #0x28
	ldr r0, [r0, #0x14]
	adds r6, r0, r1
	ldr r4, [r6, #0x00]
	adds r7, r4, #0x0
	adds r7, #0x58
	adds r5, r4, #0x0
	adds r5, #0xF8
	ldrh r1, [r5, #0x00]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _080F1C5A
	adds r0, r4, #0x0
	bl sub_8046980
_080F1C5A:
	ldrh r1, [r5, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _080F1C6A
	ldr r0, [r6, #0x00]
	bl sub_8046A10
_080F1C6A:
	movs r1, #0x00
	strh r1, [r5, #0x00]
	ldr r0, [r7, #0x04]
	str r0, [r4, #0x58]
	str r1, [r7, #0x10]
	movs r0, #0x01
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
