	.syntax unified
	.text

	thumb_func_start sub_806B3D0
sub_806B3D0:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r0, #0x9C
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0x00]
	subs r1, r1, r0
	str r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0806B3E4
	adds r1, #0xFF
_0806B3E4:
	asrs r1, r1, #0x08
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	bgt _0806B3FA
	movs r0, #0x58
	bl stop_sfx_80195A8
	adds r0, r4, #0x0
	bl sub_807C298
_0806B3FA:
	pop {r4}
	pop {r0}
	bx r0
