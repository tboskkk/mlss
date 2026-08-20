	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80EAA04
sub_80EAA04:
	push {r4, r5, r6, lr}
	adds r6, r1, #0x0
	adds r4, r2, #0x0
	ldr r1, _080EAA2C @ =0x0300034C
	ldrh r5, [r1, #0x28]
	ldr r0, [r4, #0x00]
	asrs r0, r0, #0x01
	cmp r0, #0x00
	bne _080EAA18
	ldrh r5, [r1, #0x2A]
_080EAA18:
	ldr r2, [r4, #0x08]
	adds r3, r2, #0x0
	ldr r0, [r4, #0x04]
	adds r0, #0x0B
	cmp r0, #0x0B
	beq _080EAA30
	cmp r0, #0x0C
	beq _080EAA34
	b _080EAA38
	.byte 0x00, 0x00
_080EAA2C: .4byte 0x0300034C
_080EAA30:
	movs r2, #0x00
	b _080EAA38
_080EAA34:
	mvns r2, r2
	adds r3, r2, #0x0
_080EAA38:
	ldr r0, [r4, #0x00]
	movs r1, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _080EAA4A
	ands r3, r5
	cmp r3, r2
	beq _080EAA54
	b _080EAA50
_080EAA4A:
	ands r3, r5
	cmp r3, r2
	bne _080EAA54
_080EAA50:
	ldr r0, [r4, #0x0C]
	str r0, [r6, #0x00]
_080EAA54:
	movs r0, #0x01
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_start sub_80EAA5C
sub_80EAA5C:
	push {lr}
	add sp, #-0x008
	adds r0, r3, #0x0
	adds r1, #0x18
	movs r3, #0x00
	ldsh r2, [r2, r3]
	str r2, [sp, #0x000]
	ldr r2, _080EAA80 @ =0x0300034C
	ldrh r2, [r2, #0x2E]
	str r2, [sp, #0x004]
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r1}
	bx r1
_080EAA80: .4byte 0x0300034C
	thumb_func_start sub_80EAA84
sub_80EAA84:
	push {r4, r5, lr}
	add sp, #-0x008
	adds r4, r2, #0x0
	ldrh r2, [r4, #0x04]
	cmp r2, #0x00
	bne _080EAA9C
	ldr r0, _080EAA98 @ =0x0300034C
	ldrh r2, [r0, #0x2A]
	b _080EAAAE
	.byte 0x00, 0x00
_080EAA98: .4byte 0x0300034C
_080EAA9C:
	cmp r2, #0x01
	bne _080EAAAC
	ldr r0, _080EAAA8 @ =0x0300034C
	ldrh r2, [r0, #0x28]
	b _080EAAAE
	.byte 0x00, 0x00
_080EAAA8: .4byte 0x0300034C
_080EAAAC:
	movs r2, #0x00
_080EAAAE:
	adds r1, #0x18
	movs r5, #0x00
	ldsh r0, [r4, r5]
	str r0, [sp, #0x000]
	str r2, [sp, #0x004]
	adds r0, r3, #0x0
	movs r2, #0x00
	movs r3, #0x00
	bl sub_80E9C4C
	movs r0, #0x01
	add sp, #0x008
	pop {r4, r5}
	pop {r1}
	bx r1
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
