	.syntax unified
	.text

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
