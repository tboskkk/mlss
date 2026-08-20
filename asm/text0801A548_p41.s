	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8051484
sub_8051484:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_80403C4
	movs r0, #0xA5
	lsls r0, r0, #0x02
	adds r4, r4, r0
	ldr r2, [r4, #0x00]
	ldrb r1, [r2, #0x1F]
	movs r0, #0x0D
	negs r0, r0
	ands r0, r1
	movs r1, #0x04
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x1F]
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_20
nullsub_20: @ 080514B0
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	thumb_func_start nullsub_19
nullsub_19: @ 080514B8
	bx lr
	.byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
