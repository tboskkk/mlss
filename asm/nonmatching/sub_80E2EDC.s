	.syntax unified
	.text

	thumb_func_start sub_80E2EDC
sub_80E2EDC:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _080E2EF8 @ =0x08CDC2E8
	str r0, [r2, #0x18]
	ldr r3, [r2, #0x1C]
	cmp r3, #0x00
	beq _080E2EEE
	movs r0, #0x00
	str r0, [r3, #0x00]
_080E2EEE:
	adds r0, r2, #0x0
	bl process_remove
	pop {r0}
	bx r0
_080E2EF8: .4byte 0x08CDC2E8
