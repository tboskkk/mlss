	.syntax unified
	.text

	thumb_func_start sub_81DD1B8
sub_81DD1B8:
	push {lr}
	add sp, #-0x004
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	bl sub_81DCE7C
	adds r1, r0, #0x0
	cmp r1, #0x14
	beq _081DD1D8
	ldr r0, _081DD1E8 @ =0x03001A78
	lsls r1, r1, #0x03
	adds r1, r1, r0
	movs r0, #0x01
	negs r0, r0
	str r0, [r1, #0x00]
_081DD1D8:
	movs r3, #0x02
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r0, r2, #0x0
	add sp, #0x004
	pop {pc}
_081DD1E8: .4byte 0x03001A78
