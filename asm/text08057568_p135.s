	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80745E4
sub_80745E4:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _080745FC
	adds r1, #0xFF
_080745FC:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08074606
	adds r2, #0xFF
_08074606:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08074610
	adds r3, #0xFF
_08074610:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	movs r0, #0x8B
	lsls r0, r0, #0x06
	bl sub_80DF024
	ldr r0, _08074628 @ =0x080731B5
	str r0, [r4, #0x4C]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08074628: .4byte sub_80731B4
