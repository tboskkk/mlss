	.syntax unified
	.text

	thumb_func_start sub_81DD004
sub_81DD004:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	add sp, #-0x008
	mov r8, r0
	adds r5, r1, #0x0
	adds r4, r2, #0x0
	bl sub_81DCE9C
	adds r7, r0, #0x0
	bl sub_81DCE7C
	adds r6, r0, #0x0
	cmp r4, #0x01
	bne _081DD03A
	cmp r6, #0x14
	bne _081DD02C
	movs r0, #0x01
	negs r0, r0
	b _081DD07C
_081DD02C:
	ldr r0, _081DD084 @ =0x03001A78
	lsls r1, r6, #0x03
	adds r0, #0x04
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r5, r5, r0
	movs r4, #0x00
_081DD03A:
	cmp r4, #0x02
	bne _081DD04C
	str r7, [sp, #0x000]
	movs r3, #0x0C
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	adds r5, r5, r2
_081DD04C:
	mov r0, r8
	bl sub_81DCE9C
	str r0, [sp, #0x000]
	str r5, [sp, #0x004]
	movs r3, #0x0A
	adds r0, r3, #0x0
	mov r1, sp
	swi #171
	adds r2, r0, #0x0
	cmp r6, #0x14
	beq _081DD072
	cmp r2, #0x00
	bne _081DD072
	ldr r0, _081DD084 @ =0x03001A78
	lsls r1, r6, #0x03
	adds r0, #0x04
	adds r1, r1, r0
	str r5, [r1, #0x00]
_081DD072:
	movs r0, #0x01
	negs r0, r0
	cmp r2, #0x00
	bne _081DD07C
	adds r0, r5, #0x0
_081DD07C:
	add sp, #0x008
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
_081DD084: .4byte 0x03001A78
