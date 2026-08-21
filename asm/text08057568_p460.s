	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EAACC
sub_80EAACC:
	push {lr}
	ldr r3, _080EAAF4 @ =0x0300034C
	ldr r0, [r2, #0x00]
	ldr r1, _080EAAF8 @ =0x000003FF
	adds r2, r1, #0x0
	adds r1, r2, #0x0
	bics r1, r0
	adds r3, #0x78
	ands r1, r2
	ldrh r2, [r3, #0x00]
	ldr r0, _080EAAFC @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0x00]
	bl sub_8018818
	movs r0, #0x01
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_080EAAF4: .4byte 0x0300034C
_080EAAF8: .4byte 0x000003FF
_080EAAFC: .4byte 0xFFFFFC00
