	.syntax unified
	.text

	thumb_func_start sub_8161604
sub_8161604:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _08161638 @ =0x08CDD0A8
	str r0, [r4, #0x04]
	ldr r2, [r4, #0x00]
	cmp r2, #0x00
	beq _08161624
	ldr r1, [r2, #0x0C]
	movs r3, #0x08
	ldsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r2, [r1, #0x0C]
	movs r1, #0x03
	bl _call_via_r2
_08161624:
	movs r0, #0x01
	ands r0, r5
	cmp r0, #0x00
	beq _08161632
	adds r0, r4, #0x0
	bl free_heap_8018DA8
_08161632:
	pop {r4, r5}
	pop {r0}
	bx r0
_08161638: .4byte 0x08CDD0A8
