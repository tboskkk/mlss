	.syntax unified
	.text

	thumb_func_start sub_802DC0C
sub_802DC0C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0x0
	adds r6, r1, #0x0
	adds r0, r6, #0x0
	bl sub_804D18C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DC22
_0802DC1E:
	movs r0, #0x01
	b _0802DDA6
_0802DC22:
	movs r0, #0x88
	lsls r0, r0, #0x01
	adds r1, r7, r0
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	beq _0802DCD2
	lsls r0, r0, #0x02
	adds r0, #0x28
	adds r4, r7, r0
	ldr r1, _0802DC88 @ =0x00000111
	adds r0, r7, r1
	ldrb r5, [r0, #0x00]
	cmp r5, #0x00
	beq _0802DCD2
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0802DC8C
	cmp r1, #0x03
	bge _0802DC74
	cmp r1, #0x02
	bge _0802DC62
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	subs r5, #0x01
	adds r4, #0x04
_0802DC62:
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	subs r5, #0x01
	adds r4, #0x04
_0802DC74:
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	subs r5, #0x01
	b _0802DCCC
	.byte 0x00, 0x00
_0802DC88: .4byte 0x00000111
_0802DC8C:
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	adds r4, #0x04
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	adds r4, #0x04
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	adds r4, #0x04
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0802DC1E
	subs r5, #0x04
_0802DCCC:
	adds r4, #0x04
	cmp r5, #0x00
	bne _0802DC8C
_0802DCD2:
	movs r2, #0x8A
	lsls r2, r2, #0x01
	adds r1, r7, r2
	ldrb r0, [r1, #0x00]
	cmp r0, #0x00
	bne _0802DCEC
	movs r0, #0x8B
	lsls r0, r0, #0x01
	adds r2, r7, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x00
	cmp r0, #0x00
	beq _0802DCEE
_0802DCEC:
	adds r1, r0, #0x0
_0802DCEE:
	cmp r1, #0x00
	ble _0802DDA4
	lsls r0, r1, #0x02
	adds r0, #0x28
	adds r4, r7, r0
	ldr r1, _0802DDAC @ =0x00000115
	adds r0, r7, r1
	ldrb r1, [r0, #0x00]
	ldr r2, _0802DDB0 @ =0x00000117
	adds r0, r7, r2
	ldrb r0, [r0, #0x00]
	adds r5, r1, r0
	cmp r5, #0x00
	beq _0802DDA4
	negs r1, r5
	movs r0, #0x03
	ands r1, r0
	cmp r1, #0x00
	beq _0802DD5C
	cmp r1, #0x03
	bge _0802DD44
	cmp r1, #0x02
	bge _0802DD30
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD2C
	b _0802DC1E
_0802DD2C:
	subs r5, #0x01
	adds r4, #0x04
_0802DD30:
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD40
	b _0802DC1E
_0802DD40:
	subs r5, #0x01
	adds r4, #0x04
_0802DD44:
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD54
	b _0802DC1E
_0802DD54:
	subs r5, #0x01
	adds r4, #0x04
	cmp r5, #0x00
	beq _0802DDA4
_0802DD5C:
	ldr r1, [r4, #0x00]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD6C
	b _0802DC1E
_0802DD6C:
	ldr r1, [r4, #0x04]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD7C
	b _0802DC1E
_0802DD7C:
	ldr r1, [r4, #0x08]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD8C
	b _0802DC1E
_0802DD8C:
	ldr r1, [r4, #0x0C]
	adds r0, r6, #0x0
	bl sub_804B25C
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802DD9C
	b _0802DC1E
_0802DD9C:
	subs r5, #0x04
	adds r4, #0x10
	cmp r5, #0x00
	bne _0802DD5C
_0802DDA4:
	movs r0, #0x00
_0802DDA6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0802DDAC: .4byte 0x00000115
_0802DDB0: .4byte 0x00000117
