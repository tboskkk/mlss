	.syntax unified
	.text

	thumb_func_start sub_81DD0B8
sub_81DD0B8:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	adds r6, r2, #0x0
	bl sub_81DCE9C
	bl sub_81DCE7C
	adds r7, r0, #0x0
	adds r0, r4, #0x0
	adds r1, r5, #0x0
	adds r2, r6, #0x0
	bl sub_81DD094
	movs r1, #0x01
	negs r1, r1
	cmp r0, r1
	beq _081DD0E0
	cmp r0, r6
	bne _081DD0E8
_081DD0E0:
	adds r0, r1, #0x0
	bl sub_81DCF6C
	b _081DD0FE
_081DD0E8:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _081DD0FC
	ldr r0, _081DD100 @ =0x03001A78
	lsls r1, r7, #0x03
	adds r0, #0x04
	adds r1, r1, r0
	ldr r0, [r1, #0x00]
	adds r0, r0, r2
	str r0, [r1, #0x00]
_081DD0FC:
	adds r0, r2, #0x0
_081DD0FE:
	pop {r4, r5, r6, r7, pc}
_081DD100: .4byte 0x03001A78
