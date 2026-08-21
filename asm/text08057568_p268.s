	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80E19A8
sub_80E19A8:
	push {r4, lr}
	adds r4, r0, #0x0
	ldrh r1, [r4, #0x10]
	movs r2, #0x10
	ldsh r0, [r4, r2]
	cmp r0, #0x00
	ble _080E19BC
	subs r0, r1, #0x1
	strh r0, [r4, #0x10]
	b _080E19C4
_080E19BC:
	bl sub_807F6D0
	movs r0, #0x00
	str r0, [r4, #0x04]
_080E19C4:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
