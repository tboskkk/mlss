	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8087C20
sub_8087C20:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x08]
	ldr r1, _08087C48 @ =0x00000111
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x00
	bne _08087C42
	adds r0, r2, #0x0
	adds r0, #0x08
	bl sub_8086700
	str r4, [r5, #0x04]
_08087C42:
	pop {r4, r5}
	pop {r0}
	bx r0
_08087C48: .4byte 0x00000111
