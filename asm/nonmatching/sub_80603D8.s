	.syntax unified
	.text

	thumb_func_start sub_80603D8
sub_80603D8:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08060400 @ =0xFFFFFE9A
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _080603EC
	adds r0, r1, #0x0
	subs r0, #0x67
_080603EC:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _080603FC
	adds r0, r2, #0x0
	bl sub_807C298
_080603FC:
	pop {r0}
	bx r0
_08060400: .4byte 0xFFFFFE9A
