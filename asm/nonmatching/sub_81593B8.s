	.syntax unified
	.text

	thumb_func_start sub_81593B8
sub_81593B8:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081593D4 @ =0x08CDCA30
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081593CE
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_081593CE:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081593D4: .4byte dword_8CDCA30 @ =0x08CDCA30
	.byte 0x70, 0x47, 0x00, 0x00
