	.syntax unified
	.text

	thumb_func_start sub_80681EC
sub_80681EC:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080681FA
	adds r1, #0xFF
_080681FA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08068204
	adds r2, #0xFF
_08068204:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806820E
	adds r3, #0xFF
_0806820E:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08068228 @ =0x000010BE
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08068228: .4byte 0x000010BE
