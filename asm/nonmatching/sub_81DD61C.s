	.syntax unified
	.text

	thumb_func_start sub_81DD61C
sub_81DD61C:
	push {lr}
	adds r3, r0, #0x0
	movs r0, #0xCE
	lsls r0, r0, #0x02
	adds r2, r3, r0
	ldr r0, _081DD63C @ =0x08CDBDE8
	str r0, [r2, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	beq _081DD638
	adds r0, r3, #0x0
	bl free_heap_8018DA8
_081DD638:
	pop {r0}
	bx r0
_081DD63C: .4byte 0x08CDBDE8
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
