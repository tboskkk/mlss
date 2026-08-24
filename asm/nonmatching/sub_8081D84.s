	.syntax unified
	.text

	thumb_func_start sub_8081D84
sub_8081D84:
	push {r4, r5, lr}
	movs r1, #0x2C
	muls r0, r1
	ldr r1, _08081DD0 @ =0x08500A98
	adds r0, r0, r1
	ldr r4, [r0, #0x14]
	cmp r4, #0x00
	beq _08081DD8
	ldr r1, _08081DD4 @ =0x0000FFFF
_08081D96:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	cmp r0, r1
	bne _08081D96
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	ldr r1, _08081DD4 @ =0x0000FFFF
	cmp r0, r1
	beq _08081DC2
	adds r5, r1, #0x0
_08081DB2:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	cmp r0, r5
	bne _08081DB2
_08081DC2:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081DD8
	bl sub_8082AAC
	b _08081DC2
_08081DD0: .4byte 0x08500A98
_08081DD4: .4byte 0x0000FFFF
_08081DD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
