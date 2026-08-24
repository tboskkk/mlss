	push {r4, r5, lr}
	ldr r4, _08081F14 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r1, #0xB7
	lsls r1, r1, #0x02
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x02]
	ldr r2, _08081F18 @ =0x00004188
	adds r0, r1, r2
	bl sub_8082AAC
	ldr r0, [r4, #0x00]
	ldr r1, _08081F1C @ =0x00000349
	adds r0, r0, r1
	ldrb r1, [r0, #0x00]
	ldr r0, _08081F20 @ =0x084FCE8C
	lsls r4, r1, #0x01
	adds r4, r4, r0
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	bl sub_8082898
	ldr r4, _08081F24 @ =0x084FCEB0
	cmp r4, #0x00
	beq _08081F2C
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	ldr r1, _08081F28 @ =0x0000FFFF
	cmp r0, r1
	beq _08081F04
	adds r5, r1, #0x0
_08081EF4:
	bl sub_8082898
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	cmp r0, r5
	bne _08081EF4
_08081F04:
	ldrh r0, [r4, #0x00]
	adds r4, #0x02
	cmp r0, #0x00
	beq _08081F2C
	bl sub_8082AAC
	b _08081F04
	.byte 0x00, 0x00
_08081F14: .4byte 0x03000FD8
_08081F18: .4byte 0x00004188
_08081F1C: .4byte 0x00000349
_08081F20: .4byte 0x084FCE8C
_08081F24: .4byte 0x084FCEB0
_08081F28: .4byte 0x0000FFFF
_08081F2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
