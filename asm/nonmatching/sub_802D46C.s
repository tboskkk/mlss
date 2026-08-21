	.syntax unified
	.text

	thumb_func_start sub_802D46C
sub_802D46C:
	push {r4, r5, lr}
	adds r4, r0, #0x0
	adds r5, r1, #0x0
	movs r1, #0xAE
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0802D52A
	ldr r1, _0802D520 @ =0x00000291
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x01
	ands r0, r1
	cmp r0, #0x00
	bne _0802D52A
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	adds r1, #0xB5
	adds r0, r2, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0802D52A
	cmp r5, #0x00
	beq _0802D52A
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	ldsh r0, [r0, r1]
	cmp r0, #0x04
	bgt _0802D52A
	adds r0, r4, #0x0
	adds r0, #0xFB
	ldrb r1, [r0, #0x00]
	movs r0, #0x04
	ands r0, r1
	cmp r0, #0x00
	beq _0802D4DE
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x00
	bne _0802D4DE
	movs r1, #0x04
	ldsh r0, [r2, r1]
	cmp r0, #0x04
	ble _0802D4EE
_0802D4DE:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r0, [r0, #0x00]
	movs r1, #0x04
	ldsh r0, [r0, r1]
	cmp r0, #0x01
	bgt _0802D52A
_0802D4EE:
	adds r0, r4, #0x0
	movs r1, #0x00
	bl sub_8025D24
	lsls r0, r0, #0x18
	cmp r0, #0x00
	beq _0802D52A
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r2, [r0, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrb r1, [r0, #0x16]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0802D524
	adds r0, r4, #0x0
	adds r1, r2, #0x0
	bl sub_802C588
	b _0802D52A
_0802D520: .4byte 0x00000291
_0802D524:
	adds r0, r4, #0x0
	bl sub_8029878
_0802D52A:
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r4, r1
	ldr r1, [r0, #0x00]
	adds r0, r4, #0x0
	movs r2, #0x00
	adds r3, r5, #0x0
	bl sub_802DDB4
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
