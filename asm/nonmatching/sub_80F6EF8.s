	.syntax unified
	.text

	thumb_func_start sub_80F6EF8
sub_80F6EF8:
	push {lr}
	ldr r0, _080F6F38 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	movs r1, #0xC4
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080F6F5E
	movs r3, #0x10
	ldsh r1, [r0, r3]
	lsls r1, r1, #0x02
	movs r3, #0xBF
	lsls r3, r3, #0x02
	adds r0, r2, r3
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
	cmp r1, #0x00
	beq _080F6F5E
	ldr r0, [r2, #0x7C]
	ldr r3, [r0, #0x34]
	cmp r3, #0x00
	beq _080F6F40
	ldr r1, [r2, #0x24]
	ldr r0, _080F6F3C @ =0x080FFEFD
	cmp r1, r0
	bne _080F6F5E
	ldr r0, [r3, #0x28]
	adds r0, #0xF4
	ldrb r0, [r0, #0x00]
	adds r0, #0x11
	b _080F6F6C
_080F6F38: .4byte 0x03000FD8
_080F6F3C: .4byte sub_80FFEFC
_080F6F40:
	adds r0, r1, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	cmp r0, #0x05
	bne _080F6F4E
	movs r0, #0x10
	b _080F6F6C
_080F6F4E:
	movs r1, #0xD1
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _080F6F64
_080F6F5E:
	movs r0, #0x01
	negs r0, r0
	b _080F6F6C
_080F6F64:
	ldr r3, _080F6F70 @ =0x000002BF
	adds r0, r2, r3
	ldrb r0, [r0, #0x00]
	lsrs r0, r0, #0x06
_080F6F6C:
	pop {r1}
	bx r1
_080F6F70: .4byte 0x000002BF
