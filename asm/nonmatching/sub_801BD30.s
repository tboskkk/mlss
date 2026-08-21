	.syntax unified
	.text

	thumb_func_start sub_801BD30
sub_801BD30:
	push {r4, lr}
	ldr r4, _0801BD4C @ =0x03000D44
	ldr r0, [r4, #0x00]
	cmp r0, #0x00
	beq _0801BD44
	movs r1, #0x03
	bl sub_801BC98
	movs r0, #0x00
	str r0, [r4, #0x00]
_0801BD44:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801BD4C: .4byte 0x03000D44
