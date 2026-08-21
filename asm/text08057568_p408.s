	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_807F448
sub_807F448:
	push {r4, lr}
	ldr r4, _0807F478 @ =0x03000FD8
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _0807F472
	movs r1, #0x92
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x01
	bl sub_81165CC
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x03
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
_0807F472:
	pop {r4}
	pop {r0}
	bx r0
_0807F478: .4byte 0x03000FD8
