	.syntax unified
	.text

	thumb_func_start sub_81DD670
sub_81DD670:
	push {lr}
	adds r2, r0, #0x0
	ldr r0, _081DD68C @ =0x08CDCF50
	str r0, [r2, #0x04]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD686
	adds r0, r2, #0x0
	bl free_heap_8018DA8
_081DD686:
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_081DD68C: .4byte 0x08CDCF50
