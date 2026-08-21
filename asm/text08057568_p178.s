	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8159258
sub_8159258:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, _08159288 @ =0x00001CAC
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x04]
	movs r3, #0x10
	ldsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r2, [r2, #0x14]
	adds r1, r4, #0x0
	bl _call_via_r2
	cmp r0, #0x00
	bne _08159282
	cmp r4, #0x00
	beq _08159282
	adds r0, r4, #0x0
	movs r1, #0x03
	bl sub_8151650
_08159282:
	pop {r4}
	pop {r0}
	bx r0
_08159288: .4byte 0x00001CAC
