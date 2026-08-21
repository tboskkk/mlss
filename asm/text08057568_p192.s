	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808C04C
sub_808C04C:
	push {lr}
	adds r1, r0, #0x0
	adds r0, #0xAC
	movs r2, #0x00
	ldsh r0, [r0, r2]
	cmp r0, #0x00
	bne _0808C060
	adds r0, r1, #0x0
	bl sub_8087540
_0808C060:
	pop {r0}
	bx r0
