	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8086700
sub_8086700:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r0, #0x76
	ldrb r0, [r0, #0x00]
	movs r1, #0x06
	ands r1, r0
	cmp r1, #0x06
	beq _0808675C
	cmp r1, #0x02
	beq _0808675C
	ldr r2, [r5, #0x28]
	cmp r2, #0x00
	beq _0808675C
	ldr r0, _08086750 @ =0x00000111
	adds r4, r2, r0
	ldrb r1, [r4, #0x00]
	movs r0, #0x02
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x00
	bne _0808675C
	ldr r0, _08086754 @ =0x08087441
	str r0, [r5, #0x4C]
	adds r0, r5, #0x0
	adds r0, #0x80
	str r1, [r0, #0x00]
	ldr r0, _08086758 @ =0x0808742D
	adds r1, r2, #0x0
	bl sub_807FF48
	ldrb r0, [r4, #0x00]
	movs r1, #0x01
	orrs r0, r1
	strb r0, [r4, #0x00]
	ldr r0, [r5, #0x28]
	bl sub_807B7A8
	movs r0, #0x01
	b _0808675E
_08086750: .4byte 0x00000111
_08086754: .4byte 0x08087441
_08086758: .4byte 0x0808742D
_0808675C:
	movs r0, #0x00
_0808675E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_start sub_8086764
sub_8086764:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r2, [r5, #0x28]
	adds r4, r2, #0x0
	adds r4, #0xEC
	movs r0, #0x00
	ldsh r1, [r4, r0]
	movs r0, #0x01
	negs r0, r0
	cmp r1, r0
	bne _080867A0
	ldr r0, _08086798 @ =0x03000FD8
	ldr r3, [r0, #0x00]
	adds r0, r3, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0808679C
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r3, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r3, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_08086798: .4byte 0x03000FD8
_0808679C:
	movs r3, #0x00
	b _080867CA
_080867A0:
	adds r3, r2, #0x0
	ldr r0, _080867C4 @ =0x03000FD8
	ldr r2, [r0, #0x00]
	adds r0, r2, #0x0
	adds r0, #0x84
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080867C8
	movs r0, #0x00
	ldsh r1, [r4, r0]
	adds r1, #0x08
	lsls r1, r1, #0x02
	adds r0, r2, #0x0
	adds r0, #0x58
	adds r0, r0, r1
	ldr r2, [r0, #0x00]
	b _080867CA
	.byte 0x00, 0x00
_080867C4: .4byte 0x03000FD8
_080867C8:
	movs r2, #0x00
_080867CA:
	ldr r0, [r5, #0x28]
	cmp r0, r2
	bne _08086804
	adds r0, r3, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r3, #0x48]
	cmp r0, #0x00
	bgt _080867E8
	adds r0, r3, #0x0
	b _0808681A
_080867E8:
	ldr r0, _080867FC @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086800 @ =0x0808722D
	str r0, [r3, #0x54]
	b _08086834
_080867FC: .4byte 0x03000FD8
_08086800: .4byte sub_808722C
_08086804:
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x02
	bne _08086834
	ldr r0, [r2, #0x48]
	cmp r0, #0x00
	bgt _08086822
	adds r0, r2, #0x0
_0808681A:
	adds r0, #0x08
	bl sub_8086424
	b _08086834
_08086822:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x0C]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08086834
	ldr r0, _08086850 @ =0x0808722D
	str r0, [r2, #0x54]
_08086834:
	ldr r0, _0808684C @ =0x03000FD8
	ldr r2, [r0, #0x00]
	ldrb r1, [r2, #0x0C]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0x0C]
	ldr r0, _08086854 @ =0x08086A19
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
_0808684C: .4byte 0x03000FD8
_08086850: .4byte sub_808722C
_08086854: .4byte sub_8086A18
	thumb_func_start sub_8086858
sub_8086858:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x38]
	cmp r2, #0x00
	bge _0808686A
	adds r2, #0xFF
_0808686A:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x3C]
	cmp r3, #0x00
	bge _08086874
	adds r3, #0xFF
_08086874:
	asrs r3, r3, #0x08
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0808687E
	adds r0, #0xFF
_0808687E:
	asrs r0, r0, #0x08
	str r0, [sp, #0x000]
	movs r0, #0x00
	str r0, [sp, #0x004]
	movs r0, #0x01
	str r0, [sp, #0x008]
	adds r0, r1, #0x0
	movs r1, #0x00
	bl sub_807BF34
	adds r5, r0, #0x0
	lsls r2, r4, #0x01
	ldr r0, _08086958 @ =0x0838F8B4
	adds r2, r2, r0
	adds r3, r5, #0x0
	adds r3, #0x76
	ldrb r0, [r3, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r3, #0x00]
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x44
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x02]
	adds r1, r5, #0x0
	adds r1, #0x45
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x04]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r0, [r2, #0x06]
	adds r1, #0x01
	strb r0, [r1, #0x00]
	ldrh r1, [r2, #0x08]
	adds r0, r5, #0x0
	adds r0, #0x48
	strb r1, [r0, #0x00]
	ldrh r0, [r2, #0x0A]
	adds r1, r5, #0x0
	adds r1, #0x49
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r1, #0x3B
	ldr r0, [r6, #0x10]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x14]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x00]
	ldr r0, [r6, #0x08]
	adds r0, #0x21
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7C
	strh r1, [r0, #0x00]
	str r6, [r5, #0x30]
	subs r0, #0x02
	strh r4, [r0, #0x00]
	ldr r3, [r5, #0x08]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	movs r4, #0x01
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #0x11]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x11]
	adds r1, r5, #0x0
	adds r1, #0x79
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r4, _0808695C @ =0x08086961
	str r4, [r5, #0x4C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	adds r0, r5, #0x0
	bl _call_via_r4
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	str r0, [r5, #0x3C]
	ldr r0, [r5, #0x18]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x58]
	str r0, [r6, #0x58]
	ldr r0, [r5, #0x5C]
	str r0, [r6, #0x5C]
	ldr r0, [r5, #0x60]
	str r0, [r6, #0x60]
	ldr r0, [r5, #0x64]
	str r0, [r6, #0x64]
	adds r0, r5, #0x0
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_08086958: .4byte 0x0838F8B4
_0808695C: .4byte sub_8086960
