	.syntax unified
	.text

	thumb_func_start sub_80954DC
sub_80954DC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_810DD7C
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _080954EE
	adds r1, #0xFF
_080954EE:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _080954F8
	adds r2, #0xFF
_080954F8:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _08095502
	adds r3, #0xFF
_08095502:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08095518 @ =0x00001CF9
	bl sub_80DF024
	movs r0, #0x00
	add sp, #0x004
	pop {r4}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08095518: .4byte 0x00001CF9
