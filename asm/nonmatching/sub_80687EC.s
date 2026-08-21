	.syntax unified
	.text

	thumb_func_start sub_80687EC
sub_80687EC:
	push {lr}
	adds r2, r0, #0x0
	ldr r1, [r2, #0x10]
	ldr r3, _08068814 @ =0xFFFFFDCD
	adds r0, r1, r3
	str r0, [r2, #0x10]
	cmp r0, #0x00
	bge _08068800
	adds r3, #0xFF
	adds r0, r1, r3
_08068800:
	asrs r1, r0, #0x08
	movs r0, #0x20
	negs r0, r0
	cmp r1, r0
	bgt _08068810
	adds r0, r2, #0x0
	bl sub_807C298
_08068810:
	pop {r0}
	bx r0
_08068814: .4byte 0xFFFFFDCD
