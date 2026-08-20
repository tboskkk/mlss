	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F1AEC
sub_80F1AEC:
	push {lr}
	adds r3, r1, #0x0
	ldr r0, _080F1B0C @ =0x03000FD0
	ldr r0, [r0, #0x00]
	ldr r1, _080F1B10 @ =0x0000054C
	adds r0, r0, r1
	ldrh r1, [r0, #0x00]
	ldm r2!, {r0}
	cmp r1, r0
	bne _080F1B04
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
_080F1B04:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080F1B0C: .4byte 0x03000FD0
_080F1B10: .4byte 0x0000054C
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
	thumb_func_start sub_80F1BA4
sub_80F1BA4:
	push {lr}
	adds r3, r1, #0x0
	ldm r2!, {r1}
	cmp r1, #0x01
	beq _080F1BCC
	cmp r1, #0x01
	bgt _080F1BB8
	cmp r1, #0x00
	beq _080F1BC2
	b _080F1BF2
_080F1BB8:
	cmp r1, #0x02
	beq _080F1BDC
	cmp r1, #0x03
	beq _080F1BE8
	b _080F1BF2
_080F1BC2:
	ldr r0, _080F1BC8 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	b _080F1BF2
_080F1BC8: .4byte 0x03000FD0
_080F1BCC:
	ldr r0, _080F1BD8 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xFC
	lsls r1, r1, #0x01
	b _080F1BF0
	.byte 0x00, 0x00
_080F1BD8: .4byte 0x03000FD0
_080F1BDC:
	ldr r0, _080F1BE4 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	adds r0, #0xA8
	b _080F1BF2
_080F1BE4: .4byte 0x03000FD0
_080F1BE8:
	ldr r0, _080F1C08 @ =0x03000FD0
	ldr r0, [r0, #0x00]
	movs r1, #0xA8
	lsls r1, r1, #0x01
_080F1BF0:
	adds r0, r0, r1
_080F1BF2:
	adds r0, #0xA0
	ldrh r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080F1C02
	ldr r0, [r2, #0x00]
	str r0, [r3, #0x00]
_080F1C02:
	movs r0, #0x01
	pop {r1}
	bx r1
_080F1C08: .4byte 0x03000FD0
