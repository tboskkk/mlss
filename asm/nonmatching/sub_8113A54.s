	.syntax unified
	.text

	thumb_func_start sub_8113A54
sub_8113A54:
	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	movs r1, #0x1E
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r2, [r4, #0x08]
	ldrb r1, [r2, #0x12]
	movs r0, #0x07
	negs r0, r0
	ands r0, r1
	movs r1, #0x02
	orrs r0, r1
	strb r0, [r2, #0x12]
	adds r1, r4, #0x0
	adds r1, #0xAE
	movs r0, #0x00
	strh r0, [r1, #0x00]
	ldr r2, [r4, #0x28]
	movs r3, #0x00
	ldr r0, [r4, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xDC
	ldr r1, [r0, #0x00]
	movs r0, #0xD8
	lsls r0, r0, #0x07
	cmp r1, r0
	ble _08113A92
	movs r3, #0x01
_08113A92:
	ldr r1, _08113AD4 @ =0x00000113
	adds r0, r2, r1
	strb r3, [r0, #0x00]
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _08113AA0
	adds r1, #0xFF
_08113AA0:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _08113AAA
	adds r2, #0xFF
_08113AAA:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _08113AB4
	adds r3, #0xFF
_08113AB4:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _08113AD8 @ =0x00002AE3
	bl sub_80DF024
	ldr r0, _08113ADC @ =0x08113AE1
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0xD5
	bl play_sfx_80195B4
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_08113AD4: .4byte 0x00000113
_08113AD8: .4byte 0x00002AE3
_08113ADC: .4byte sub_8113AE0
