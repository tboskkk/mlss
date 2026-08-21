	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_811251C
sub_811251C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	bl sub_8087CE4
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x00
	bne _08112542
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
	str r5, [r4, #0x4C]
	ldr r0, _08112548 @ =0x0000011B
	bl stop_sfx_80195A8
_08112542:
	pop {r4, r5}
	pop {r0}
	bx r0
_08112548: .4byte 0x0000011B
