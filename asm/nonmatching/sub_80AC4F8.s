	.syntax unified
	.text

	thumb_func_start sub_80AC4F8
sub_80AC4F8:
	push {lr}
	adds r3, r0, #0x0
	ldr r0, _080AC524 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r0, [r0, #0x74]
	adds r2, r0, #0x0
	adds r2, #0x08
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x02
	beq _080AC516
	cmp r1, #0x04
	bne _080AC51A
_080AC516:
	ldr r0, _080AC528 @ =0x080AC611
	str r0, [r2, #0x4C]
_080AC51A:
	ldr r0, _080AC52C @ =0x080AC685
	str r0, [r3, #0x4C]
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080AC524: .4byte 0x03000FD8
_080AC528: .4byte sub_80AC610
_080AC52C: .4byte 0x080AC685
