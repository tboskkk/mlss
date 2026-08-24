	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	movs r1, #0x00
	str r1, [r6, #0x00]
	ldr r0, _0815E200 @ =0x08CDCA90
	str r0, [r6, #0x04]
	str r1, [r6, #0x10]
	str r1, [r6, #0x14]
	str r1, [r6, #0x18]
	movs r3, #0x00
	ldr r0, _0815E204 @ =0x00001898
	adds r5, r4, r0
	adds r2, r5, #0x0
_0815E1BC:
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0815E1CC
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0815E1FC
_0815E1CC:
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _0815E1DC
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0815E1FC
_0815E1DC:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _0815E1EC
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _0815E1FC
_0815E1EC:
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	beq _0815E208
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _0815E208
_0815E1FC:
	adds r0, r1, #0x0
	b _0815E212
_0815E200: .4byte 0x08CDCA90
_0815E204: .4byte 0x00001898
_0815E208:
	adds r2, #0x10
	adds r3, #0x04
	cmp r3, #0xFF
	ble _0815E1BC
	movs r0, #0x00
_0815E212:
	str r0, [r6, #0x08]
	movs r3, #0x00
	adds r2, r5, #0x0
_0815E218:
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _0815E228
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	beq _0815E258
_0815E228:
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _0815E238
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	beq _0815E258
_0815E238:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _0815E248
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	beq _0815E258
_0815E248:
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	beq _0815E25C
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	bne _0815E25C
_0815E258:
	adds r0, r1, #0x0
	b _0815E266
_0815E25C:
	adds r2, #0x10
	adds r3, #0x04
	cmp r3, #0xFF
	ble _0815E218
	movs r0, #0x00
_0815E266:
	str r0, [r6, #0x0C]
	ldr r1, _0815E2D4 @ =0x00001E8C
	adds r0, r4, r1
	ldr r4, [r0, #0x00]
	adds r5, r4, #0x4
	ldr r0, [r4, #0x04]
	cmp r0, #0x00
	beq _0815E27A
	bl sprite_show_8020CBC
_0815E27A:
	ldr r0, [r5, #0x04]
	cmp r0, #0x00
	beq _0815E284
	bl sprite_show_8020CBC
_0815E284:
	ldr r0, [r4, #0x0C]
	cmp r0, #0x00
	beq _0815E28E
	bl sprite_show_8020CBC
_0815E28E:
	ldr r0, [r4, #0x10]
	cmp r0, #0x00
	beq _0815E298
	bl sprite_show_8020CBC
_0815E298:
	ldr r0, [r4, #0x14]
	cmp r0, #0x00
	beq _0815E2A2
	bl sprite_show_8020CBC
_0815E2A2:
	ldr r0, [r4, #0x18]
	cmp r0, #0x00
	beq _0815E2AC
	bl sprite_show_8020CBC
_0815E2AC:
	ldr r0, [r4, #0x1C]
	cmp r0, #0x00
	beq _0815E2B6
	bl sprite_show_8020CBC
_0815E2B6:
	ldr r0, [r4, #0x20]
	cmp r0, #0x00
	beq _0815E2C0
	bl sprite_show_8020CBC
_0815E2C0:
	ldr r0, [r4, #0x24]
	cmp r0, #0x00
	beq _0815E2CA
	bl sprite_show_8020CBC
_0815E2CA:
	adds r0, r6, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.byte 0x00, 0x00
_0815E2D4: .4byte 0x00001E8C
