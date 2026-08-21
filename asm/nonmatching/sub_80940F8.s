	.syntax unified
	.text

	thumb_func_start sub_80940F8
sub_80940F8:
	push {lr}
	adds r2, r0, #0x0
	adds r1, r2, #0x0
	adds r1, #0x9C
	ldr r0, [r1, #0x00]
	subs r0, #0x01
	str r0, [r1, #0x00]
	cmp r0, #0x00
	bgt _08094118
	ldr r0, [r2, #0x08]
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0, #0x00]
	adds r0, r2, #0x0
	bl sub_8094094
_08094118:
	pop {r0}
	bx r0
