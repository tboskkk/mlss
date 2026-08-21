	.syntax unified
	.text

	thumb_func_start sub_80854F8
sub_80854F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x80
	lsls r1, r1, #0x12
	ldr r0, _08085528 @ =0x03000F70
	ldr r0, [r0, #0x00]
	strh r0, [r1, #0x00]
	movs r1, #0xA2
	lsls r1, r1, #0x02
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl free_heap_memory_8018C68
	movs r0, #0x01
	ands r0, r4
	cmp r0, #0x00
	beq _08085522
	adds r0, r5, #0x0
	bl free_heap_8018DA8
_08085522:
	pop {r4, r5}
	pop {r0}
	bx r0
_08085528: .4byte 0x03000F70
