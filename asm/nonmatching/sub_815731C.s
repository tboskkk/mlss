	.syntax unified
	.text

	thumb_func_start sub_815731C
sub_815731C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0x00
	str r1, [r4, #0x00]
	ldr r0, _0815737C @ =0x08CDC510
	str r0, [r4, #0x04]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	str r1, [r4, #0x18]
	movs r3, #0x00
	ldr r0, _08157380 @ =0x00001898
	adds r6, r5, r0
	adds r2, r6, #0x0
_08157338:
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _08157348
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _08157378
_08157348:
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _08157358
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _08157378
_08157358:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _08157368
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	beq _08157378
_08157368:
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	beq _08157384
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0C
	bne _08157384
_08157378:
	adds r0, r1, #0x0
	b _0815738E
_0815737C: .4byte 0x08CDC510
_08157380: .4byte 0x00001898
_08157384:
	adds r2, #0x10
	adds r3, #0x04
	cmp r3, #0xFF
	ble _08157338
	movs r0, #0x00
_0815738E:
	str r0, [r4, #0x08]
	movs r3, #0x00
	adds r2, r6, #0x0
_08157394:
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	beq _081573A4
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	beq _081573D4
_081573A4:
	ldr r1, [r2, #0x04]
	cmp r1, #0x00
	beq _081573B4
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	beq _081573D4
_081573B4:
	ldr r1, [r2, #0x08]
	cmp r1, #0x00
	beq _081573C4
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	beq _081573D4
_081573C4:
	ldr r1, [r2, #0x0C]
	cmp r1, #0x00
	beq _081573D8
	adds r0, r1, #0x0
	adds r0, #0x25
	ldrb r0, [r0, #0x00]
	cmp r0, #0x0D
	bne _081573D8
_081573D4:
	adds r0, r1, #0x0
	b _081573E2
_081573D8:
	adds r2, #0x10
	adds r3, #0x04
	cmp r3, #0xFF
	ble _08157394
	movs r0, #0x00
_081573E2:
	str r0, [r4, #0x0C]
	ldr r1, _08157404 @ =0x00001CA4
	adds r0, r5, r1
	ldr r0, [r0, #0x00]
	bl sub_8161888
	ldr r2, _08157408 @ =0x00001CB0
	adds r0, r5, r2
	ldr r0, [r0, #0x00]
	ldr r1, [r0, #0x1C]
	ldr r2, _0815740C @ =0x00001F2C
	adds r0, r5, r2
	strh r1, [r0, #0x00]
	adds r0, r4, #0x0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_08157404: .4byte 0x00001CA4
_08157408: .4byte 0x00001CB0
_0815740C: .4byte 0x00001F2C
