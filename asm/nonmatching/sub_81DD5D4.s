	.syntax unified
	.text

	thumb_func_start sub_81DD5D4
sub_81DD5D4:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _081DD5F4 @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD5F0
	adds r0, r3, #0x0
	bl free_heap_8018DA8
_081DD5F0:
	pop {r0}
	bx r0
_081DD5F4: .4byte 0x08CDBDE8
