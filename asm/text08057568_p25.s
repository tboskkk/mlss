	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F1B14
sub_80F1B14:
	push {r4, r5, r6, lr}
	add sp, #-0x008
	adds r5, r2, #0x0
	adds r6, r3, #0x0
	ldr r0, [r5, #0x04]
	cmp r0, #0x01
	beq _080F1B40
	cmp r0, #0x01
	bgt _080F1B2C
	cmp r0, #0x00
	beq _080F1B36
	b _080F1B6A
_080F1B2C:
	cmp r0, #0x02
	beq _080F1B50
	cmp r0, #0x03
	beq _080F1B60
	b _080F1B6A
_080F1B36:
	ldr r0, _080F1B3C @ =0x03000FD0
	ldr r4, [r0, #0x00]
	b _080F1B6A
_080F1B3C: .4byte 0x03000FD0
_080F1B40:
	ldr r0, _080F1B4C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r2, #0xFC
	lsls r2, r2, #0x01
	adds r4, r0, r2
	b _080F1B6A
_080F1B4C: .4byte 0x03000FD0
_080F1B50:
	ldr r0, _080F1B5C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	adds r4, r0, #0x0
	adds r4, #0xA8
	b _080F1B6A
	.byte 0x00, 0x00
_080F1B5C: .4byte 0x03000FD0
_080F1B60:
	ldr r0, _080F1B9C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r3, #0xA8
	lsls r3, r3, #0x01
	adds r4, r0, r3
_080F1B6A:
	adds r1, #0x18
	ldr r0, _080F1BA0 @ =0x03000FC0
	ldr r2, [r0, #0x00]
	movs r0, #0xE3
	lsls r0, r0, #0x02
	adds r2, r2, r0
	movs r3, #0x00
	ldsh r0, [r5, r3]
	str r0, [sp, #0x000]
	adds r0, r4, #0x0
	adds r0, #0xA0
	ldrh r3, [r0, #0x00]
	movs r0, #0x01
	ands r0, r3
	str r0, [sp, #0x004]
	adds r0, r6, #0x0
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1B9C: .4byte 0x03000FD0
_080F1BA0: .4byte 0x03000FC0
