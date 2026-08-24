	.syntax unified
	.text

	thumb_func_start sub_802D92C
sub_802D92C:
	push {r4, r5, r6, lr}
	adds r3, r0, #0x0
	ldr r1, _0802D9FC @ =0x00000209
	adds r0, r3, r1
	ldrb r1, [r0, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	bne _0802D9AE
	movs r2, #0x81
	lsls r2, r2, #0x02
	adds r4, r3, r2
	ldr r2, [r4, #0x00]
	movs r1, #0xDA
	lsls r1, r1, #0x02
	adds r0, r2, r1
	ldr r0, [r0, #0x00]
	ldrb r0, [r0, #0x02]
	cmp r0, #0x01
	bne _0802D9AE
	movs r1, #0x80
	lsls r1, r1, #0x02
	adds r0, r3, r1
	ldr r0, [r0, #0x00]
	adds r0, #0x24
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x1D
	lsrs r0, r0, #0x1D
	movs r1, #0x04
	eors r0, r1
	lsls r5, r0, #0x05
	ldr r0, [r2, #0x0C]
	cmp r0, #0x00
	bge _0802D972
	adds r0, #0xFF
_0802D972:
	asrs r0, r0, #0x08
	movs r2, #0x92
	lsls r2, r2, #0x02
	adds r1, r3, r2
	strh r0, [r1, #0x00]
	ldr r0, [r4, #0x00]
	ldr r0, [r0, #0x10]
	cmp r0, #0x00
	bge _0802D986
	adds r0, #0xFF
_0802D986:
	asrs r1, r0, #0x08
	ldr r4, _0802DA00 @ =0x0000024A
	adds r0, r3, r4
	strh r1, [r0, #0x00]
	movs r1, #0x90
	lsls r1, r1, #0x02
	adds r0, r3, r1
	movs r4, #0x00
	ldsh r2, [r0, r4]
	ldr r0, _0802DA04 @ =0x08198504
	lsls r1, r5, #0x01
	adds r0, r1, r0
	movs r4, #0x00
	ldsh r0, [r0, r4]
	muls r0, r2
	ldr r0, _0802DA08 @ =0x08198584
	adds r0, r1, r0
	movs r1, #0x00
	ldsh r0, [r0, r1]
	muls r0, r2
_0802D9AE:
	ldr r4, _0802DA0C @ =0x0000020B
	adds r2, r3, r4
	ldrb r0, [r2, #0x00]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0802D9FC @ =0x00000209
	adds r2, r3, r0
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	movs r1, #0x81
	lsls r1, r1, #0x02
	adds r6, r3, r1
	ldr r2, [r6, #0x00]
	subs r4, #0x0B
	adds r5, r3, r4
	ldr r1, [r5, #0x00]
	movs r4, #0xD6
	lsls r4, r4, #0x02
	adds r1, r1, r4
	ldrb r0, [r1, #0x00]
	movs r3, #0x08
	orrs r0, r3
	strb r0, [r1, #0x00]
	adds r2, r2, r4
	ldrb r0, [r2, #0x00]
	orrs r0, r3
	strb r0, [r2, #0x00]
	ldr r2, [r6, #0x00]
	ldr r1, [r5, #0x00]
	movs r0, #0x0D
	strh r0, [r1, #0x04]
	strh r0, [r2, #0x04]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0802D9FC: .4byte 0x00000209
_0802DA00: .4byte 0x0000024A
_0802DA04: .4byte 0x08198504
_0802DA08: .4byte 0x08198584
_0802DA0C: .4byte 0x0000020B
