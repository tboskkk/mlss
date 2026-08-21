	.syntax unified
	.text

	thumb_func_start sub_80813A0
sub_80813A0:
	push {r4, lr}
	ldr r0, _0808143C @ =0x0000017B
	bl sub_8082898
	movs r4, #0x00
_080813AA:
	ldr r0, _08081440 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r2, #0xFA
	lsls r2, r2, #0x01
	adds r0, r1, r2
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080813EC
	cmp r4, #0x00
	blt _080813EC
	cmp r4, #0x05
	bgt _080813EC
	lsls r0, r4, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _080813DC
	cmp r2, #0x02
	bne _080813EC
_080813DC:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _080813EC
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_080813EC:
	adds r2, r4, #0x1
	ldr r0, _08081440 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xFA
	lsls r3, r3, #0x01
	adds r0, r1, r3
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081430
	cmp r2, #0x00
	blt _08081430
	cmp r2, #0x05
	bgt _08081430
	lsls r0, r2, #0x02
	adds r1, #0x58
	adds r1, r1, r0
	ldr r1, [r1, #0x00]
	adds r0, r1, #0x0
	adds r0, #0x7E
	ldrb r0, [r0, #0x00]
	movs r2, #0x06
	ands r2, r0
	cmp r2, #0x04
	beq _08081420
	cmp r2, #0x02
	bne _08081430
_08081420:
	adds r0, r1, #0x0
	adds r0, #0xE4
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08081430
	ldrh r0, [r0, #0x02]
	bl sub_8082898
_08081430:
	adds r4, #0x02
	cmp r4, #0x07
	ble _080813AA
	pop {r4}
	pop {r0}
	bx r0
_0808143C: .4byte 0x0000017B
_08081440: .4byte 0x03000FD8
