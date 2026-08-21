	.syntax unified
	.text

	thumb_func_start sub_80F8198
sub_80F8198:
	push {lr}
	ldr r0, _080F81B0 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	ldr r0, [r3, #0x7C]
	cmp r0, #0x00
	beq _080F81CC
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _080F81B4
	adds r1, r0, #0x0
	b _080F81BE
	.byte 0x00, 0x00
_080F81B0: .4byte 0x03000FD8
_080F81B4:
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r1, [r0, #0x00]
_080F81BE:
	ldr r0, [r1, #0x54]
	cmp r0, #0x00
	beq _080F81CC
	adds r0, r1, #0x0
	adds r0, #0x08
	bl sub_80874B4
_080F81CC:
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
