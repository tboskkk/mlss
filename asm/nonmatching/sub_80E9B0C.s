	.syntax unified
	.text

	thumb_func_start sub_80E9B0C
sub_80E9B0C:
	push {r4, r5, r6, lr}
	ldr r6, _080E9B38 @ =0x03000FC4
	ldr r4, _080E9B3C @ =0x08001010
	ldr r5, _080E9B40 @ =0x08000F9C
	subs r4, r4, r5
	ldr r2, _080E9B44 @ =0x08200198
	movs r0, #0x00
	adds r1, r4, #0x0
	bl alloc_heap_8018CEC
	adds r1, r0, #0x0
	str r1, [r6, #0x00]
	lsls r4, r4, #0x0A
	lsrs r4, r4, #0x0B
	adds r0, r5, #0x0
	adds r2, r4, #0x0
	bl CpuSet
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080E9B38: .4byte 0x03000FC4
_080E9B3C: .4byte 0x08001010
_080E9B40: .4byte 0x08000F9C
_080E9B44: .4byte 0x08200198
