	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F1088
sub_80F1088:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r5, r1, #0x0
	adds r4, r3, #0x0
	ldr r2, [r4, #0x00]
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _080F10B2
	asrs r1, r2, #0x01
	movs r0, #0x01
	ands r1, r0
	adds r1, #0x01
	ands r2, r0
	movs r0, #0x04
	ldsh r3, [r4, r0]
	ldrh r0, [r4, #0x08]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_8046A90
_080F10B2:
	ldr r2, [r4, #0x00]
	movs r0, #0x08
	ands r0, r2
	cmp r0, #0x00
	beq _080F10D4
	asrs r1, r2, #0x01
	movs r0, #0x01
	ands r1, r0
	adds r1, #0x01
	ands r2, r0
	movs r0, #0x04
	ldsh r3, [r4, r0]
	ldrh r0, [r4, #0x08]
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_8046B30
_080F10D4:
	movs r0, #0x01
	add sp, #0x004
	pop {r4, r5}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
