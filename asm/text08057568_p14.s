	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8163B60
sub_8163B60:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08163B98 @ =0x08CDD0F8
	str r0, [r4, #0x0C]
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _08163B74
	bl sub_8021308
_08163B74:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _08163B7E
	bl sub_8021308
_08163B7E:
	ldr r0, _08163B9C @ =0x08CDD118
	str r0, [r4, #0x0C]
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08163B90
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08163B90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_08163B98: .4byte 0x08CDD0F8
_08163B9C: .4byte 0x08CDD118
