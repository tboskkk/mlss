	push {r4, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	bl sub_8087EFC
	adds r2, r4, #0x0
	adds r2, #0xA8
	ldr r0, [r2, #0x00]
	adds r1, r0, #0x0
	adds r0, #0x01
	str r0, [r2, #0x00]
	cmp r1, #0x05
	ble _0809C908
	movs r0, #0x00
	str r0, [r2, #0x00]
	ldr r1, [r4, #0x10]
	cmp r1, #0x00
	bge _0809C8EA
	adds r1, #0xFF
_0809C8EA:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x14]
	cmp r2, #0x00
	bge _0809C8F4
	adds r2, #0xFF
_0809C8F4:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x18]
	cmp r3, #0x00
	bge _0809C8FE
	adds r3, #0xFF
_0809C8FE:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0809C920 @ =0x00000E89
	bl sub_80DF024
_0809C908:
	adds r0, r4, #0x0
	adds r0, #0x79
	ldrb r1, [r0, #0x00]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0x00
	beq _0809C94A
	ldr r0, [r4, #0x28]
	ldr r1, [r0, #0x38]
	adds r2, r0, #0x0
	b _0809C926
	.byte 0x00, 0x00
_0809C920: .4byte 0x00000E89
_0809C924:
	ldr r1, [r1, #0x30]
_0809C926:
	cmp r1, #0x00
	bne _0809C93A
	adds r0, r2, #0x0
	adds r0, #0x08
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	b _0809C944
_0809C93A:
	cmp r1, r4
	beq _0809C924
	ldr r0, [r1, #0x4C]
	cmp r0, #0x00
	beq _0809C924
_0809C944:
	adds r0, r4, #0x0
	bl sub_807C298
_0809C94A:
	add sp, #0x004
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
