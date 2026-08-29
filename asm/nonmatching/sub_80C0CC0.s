	.syntax unified
	.text

	thumb_func_start sub_80C0CC0
sub_80C0CC0:
	push {r4, lr}
	adds r2, r0, #0x0
	adds r0, #0xA8
	ldr r4, [r0, #0x00]
	cmp r4, #0x00
	bne _080C0CF6
	ldr r0, [r2, #0x28]
	ldr r1, _080C0CF0 @ =0x00000111
	adds r3, r0, r1
	ldrb r1, [r3, #0x00]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #0x00]
	ldr r0, [r2, #0x28]
	adds r0, #0xF6
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	bne _080C0CF4
	adds r0, r2, #0x0
	bl sub_8086700
	b _080C0CF6
_080C0CF0: .4byte 0x00000111
_080C0CF4:
	str r4, [r2, #0x4C]
_080C0CF6:
	pop {r4}
	pop {r0}
	bx r0
