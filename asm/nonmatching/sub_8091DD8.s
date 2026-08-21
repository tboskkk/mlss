	.syntax unified
	.text

	thumb_func_start sub_8091DD8
sub_8091DD8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, [r2, #0x28]
	adds r0, #0xEC
	movs r3, #0x00
	ldsh r1, [r0, r3]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _08091DF4
	adds r0, r2, #0x0
	bl sub_8090FB8
	b _08091DFA
_08091DF4:
	adds r0, r2, #0x0
	bl sub_8091548
_08091DFA:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
