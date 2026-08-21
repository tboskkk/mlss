	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80F6E38
sub_80F6E38:
	push {r4, lr}
	ldr r0, _080F6E78 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F6EE6
	movs r3, #0x10
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6EE6
	ldr r0, [r2, #0x7C]
	ldr r3, [r0, #0x34]
	cmp r3, #0x00
	beq _080F6E80
	ldr r1, [r2, #0x24]
	ldr r0, _080F6E7C @ =0x080FFEFD
	cmp r1, r0
	bne _080F6EE6
	ldr r0, [r3, #0x28]
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	adds r0, #0x11
	b _080F6EF2
_080F6E78: .4byte 0x03000FD8
_080F6E7C: .4byte sub_80FFEFC
_080F6E80:
	adds r0, r1, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x05
	bne _080F6E8E
	movs r0, #0x10
	b _080F6EF2
_080F6E8E:
	ldr r0, _080F6EA4 @ =0x00000343
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	movs r4, #0x80
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F6EA8
	ldrb r0, [r3, #0x00]
	adds r0, #0x04
	b _080F6EF2
_080F6EA4: .4byte 0x00000343
_080F6EA8:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r3, r2, r1
	ldrb r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F6EBE
	ldrb r0, [r3, #0x00]
	adds r0, #0x07
	b _080F6EF2
_080F6EBE:
	ldr r0, _080F6ED4 @ =0x00000345
	adds r3, r2, r0
	ldrb r1, [r3, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	bne _080F6ED8
	ldrb r0, [r3, #0x00]
	adds r0, #0x19
	b _080F6EF2
	.byte 0x00, 0x00
_080F6ED4: .4byte 0x00000345
_080F6ED8:
	ldr r1, _080F6EEC @ =0x00000342
	adds r2, r2, r1
	ldrb r1, [r2, #0x00]
	adds r0, r4, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080F6EF0
_080F6EE6:
	movs r0, #0x01
	negs r0, r0
	b _080F6EF2
_080F6EEC: .4byte 0x00000342
_080F6EF0:
	ldrb r0, [r2, #0x00]
_080F6EF2:
	pop {r4}
	pop {r1}
	bx r1
