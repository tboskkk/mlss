	.syntax unified
	.text

	thumb_func_start sub_805C73C
sub_805C73C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	adds r6, r1, #0x0
	ldr r0, _0805C77C @ =0x08CDC2B8
	str r0, [r5, #0x18]
	ldr r0, _0805C780 @ =0x040000BA
	movs r4, #0x00
	strh r4, [r0, #0x00]
	movs r0, #0x00
	movs r1, #0x00
	bl sub_8029888
	strb r4, [r5, #0x1C]
	ldr r0, _0805C784 @ =0x03000E04
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C762
	bl free_heap_8018D9C
_0805C762:
	ldr r0, _0805C788 @ =0x03000E00
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _0805C76E
	bl free_heap_8018D9C
_0805C76E:
	adds r0, r5, #0x0
	adds r1, r6, #0x0
	bl process_remove
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0805C77C: .4byte 0x08CDC2B8
_0805C780: .4byte 0x040000BA
_0805C784: .4byte 0x03000E04
_0805C788: .4byte 0x03000E00
