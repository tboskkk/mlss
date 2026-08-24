	push {r4, lr}
	add sp, #-0x004
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r2, r1, #0x0
	ldr r4, _0810A9C8 @ =0x03000FD8
	ldr r0, [r4, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r0, r3
	ldrb r3, [r0, #0x00]
	cmp r3, #0x00
	bne _0810A9D8
	ldr r0, _0810A9CC @ =0x03000FDC
	lsls r1, r1, #0x09
	ldr r2, _0810A9D0 @ =0x00004E70
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810A9D4 @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
	ldr r0, [r4, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r0, r0, r3
	movs r1, #0x26
	strb r1, [r0, #0x00]
	b _0810A9FC
	.byte 0x00, 0x00
_0810A9C8: .4byte 0x03000FD8
_0810A9CC: .4byte 0x03000FDC
_0810A9D0: .4byte 0x00004E70
_0810A9D4: .4byte 0x060113A0
_0810A9D8:
	cmp r3, #0x13
	bne _0810A9FC
	ldr r0, _0810AA14 @ =0x03000FDC
	lsls r1, r2, #0x04
	adds r1, #0x08
	lsls r1, r1, #0x05
	ldr r2, _0810AA18 @ =0x00004E70
	adds r1, r1, r2
	ldr r0, [r0, #0x00]
	adds r0, r0, r1
	ldr r1, _0810AA1C @ =0x060113A0
	movs r2, #0x80
	lsls r2, r2, #0x01
	movs r3, #0x00
	str r3, [sp, #0x000]
	movs r3, #0x20
	bl sub_8018218
_0810A9FC:
	ldr r0, _0810AA20 @ =0x03000FD8
	ldr r1, [r0, #0x00]
	movs r3, #0xAF
	lsls r3, r3, #0x02
	adds r1, r1, r3
	ldrb r0, [r1, #0x00]
	subs r0, #0x01
	strb r0, [r1, #0x00]
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
_0810AA14: .4byte 0x03000FDC
_0810AA18: .4byte 0x00004E70
_0810AA1C: .4byte 0x060113A0
_0810AA20: .4byte 0x03000FD8
