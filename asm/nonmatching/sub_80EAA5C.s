	.syntax unified
	.text

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
