	.syntax unified
	.text

	thumb_func_start sub_8068074
sub_8068074:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _0806809C @ =0xFFFFFECD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068088
	adds r0, r1, #0x0
	subs r0, #0x34
_08068088:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068098
	adds r0, r2, #0x0
	bl sub_807C298
_08068098:
	pop {r0}
	bx r0
_0806809C: .4byte 0xFFFFFECD
