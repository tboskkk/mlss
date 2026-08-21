	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808EC08
sub_808EC08:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _0808EC20
	ldr r0, _0808EC38 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808EC20:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808EC3C
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _0808EC54
	.byte 0x00, 0x00
_0808EC38: .4byte 0x00000111
_0808EC3C:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _0808EC54
	adds r0, r3, #0x0
	bl sub_808DD2C
_0808EC54:
	pop {r0}
	bx r0
	thumb_func_start sub_808EC58
sub_808EC58:
	push {lr}
	adds r2, r0, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808EC70
	adds r0, r2, #0x0
	bl sub_808DD2C
	b _0808EC82
_0808EC70:
	ldr r0, [r2, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0808EC82
	adds r0, r2, #0x0
	bl sub_808DD2C
_0808EC82:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
