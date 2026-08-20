	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80875E0
sub_80875E0:
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0x0
	adds r5, r1, #0x0
	movs r7, #0x00
_080875E8:
	adds r0, r6, #0x0
	adds r1, r7, #0x0
	bl sub_8083A8C
	adds r7, r0, #0x0
	movs r4, #0x00
_080875F4:
	adds r0, r5, #0x0
	adds r1, r4, #0x0
	bl sub_8083A8C
	adds r4, r0, #0x0
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	bl sub_8085ED0
	cmp r0, #0x00
	bne _08087614
	cmp r4, #0x00
	bge _080875F4
	cmp r7, #0x00
	bge _080875E8
	movs r0, #0x00
_08087614:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
