	.syntax unified
	.text

	thumb_func_start sub_801BC98
sub_801BC98:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	ldr r0, _0801BCBC @ =0x08CDBDA8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0801BCAC
	bl free_heap_8018D9C
_0801BCAC:
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	bl process_remove
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0801BCBC: .4byte 0x08CDBDA8
