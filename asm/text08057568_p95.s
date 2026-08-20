	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8087540
sub_8087540:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x28]
	cmp r1, #0x00
	beq _0808756E
	adds r0, r1, #0x0
	adds r0, #0x08
	cmp r4, r0
	bne _0808756E
	ldr r0, [r4, #0x08]
	cmp r0, #0x00
	beq _0808756E
	adds r0, r1, #0x0
	adds r0, #0x78
	movs r1, #0x00
	strh r1, [r0, #0x00]
	movs r2, #0x01
	negs r2, r2
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	movs r3, #0x00
	bl sub_8082E1C
_0808756E:
	adds r0, r4, #0x0
	bl sub_807F47C
	movs r0, #0x00
	str r0, [r4, #0x68]
	str r0, [r4, #0x54]
	str r0, [r4, #0x4C]
	str r0, [r4, #0x6C]
	str r0, [r4, #0x2C]
	adds r0, r4, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08087596
	movs r0, #0x80
	lsls r0, r0, #0x0B
	bl sub_80F75D8
_08087596:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_start sub_808759C
sub_808759C:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _080875B2
	ldr r0, [r4, #0x6C]
	ldr r1, [r0, #0x04]
	adds r0, r4, #0x0
	bl _call_via_r1
_080875B2:
	pop {r4}
	pop {r0}
	bx r0
