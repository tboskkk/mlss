	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808FC54
sub_808FC54:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808FC6C
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _0808FC7E
_0808FC6C:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808FC7E
	adds r0, r2, #0x0
	bl sub_808DD2C
_0808FC7E:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
