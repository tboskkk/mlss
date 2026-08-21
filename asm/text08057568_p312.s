	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_808FC04
sub_808FC04:
	push {lr}
	adds r3, r0, #0x0
	ldr r1, [r3, #0x28]
	cmp r1, #0x00
	beq _0808FC1C
	ldr r0, _0808FC34 @ =0x00000111
	adds r2, r1, r0
	ldrb r1, [r2, #0x00]
	movs r0, #0x05
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x00]
_0808FC1C:
	adds r0, r3, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x38
	ands r0, r1
	cmp r0, #0x00
	beq _0808FC38
	adds r0, r3, #0x0
	bl sub_808DD2C
	b _0808FC50
	.byte 0x00, 0x00
_0808FC34: .4byte 0x00000111
_0808FC38:
	adds r0, r3, #0x0
	adds r0, #0xAC
	ldrh r1, [r0, #0x00]
	adds r2, r1, #0x1
	strh r2, [r0, #0x00]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x13
	ble _0808FC50
	adds r0, r3, #0x0
	bl sub_808DD2C
_0808FC50:
	pop {r0}
	bx r0
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
