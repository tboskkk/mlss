	.syntax unified
	.text

	thumb_func_start sub_810A78C
sub_810A78C:
	push {r4, r5, r6, r7, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r7, r1, #0x0
	cmp r7, #0x10
	ble _0810A7B4
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A7A0
	adds r0, #0xFF
_0810A7A0:
	asrs r0, r0, #0x08
	adds r6, r0, #0x0
	adds r6, #0x20
	ldr r0, [r4, #0x44]
	cmp r0, #0x00
	bge _0810A7AE
	adds r0, #0xFF
_0810A7AE:
	asrs r5, r0, #0x08
	movs r2, #0x04
	b _0810A832
_0810A7B4:
	adds r0, r4, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r0, #0x06
	ands r0, r1
	cmp r0, #0x06
	bne _0810A7F8
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A7CA
	adds r0, #0xFF
_0810A7CA:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r6, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	bge _0810A7E0
	adds r1, #0xFF
_0810A7E0:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r5, r1, r0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	bge _0810A7F0
	adds r0, #0xFF
_0810A7F0:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	adds r2, #0x10
	b _0810A832
_0810A7F8:
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0810A800
	adds r0, #0xFF
_0810A800:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xE4
	ldr r2, [r1, #0x00]
	movs r1, #0x04
	ldsb r1, [r2, r1]
	adds r6, r0, r1
	ldr r1, [r4, #0x44]
	cmp r1, #0x00
	bge _0810A816
	adds r1, #0xFF
_0810A816:
	asrs r1, r1, #0x08
	movs r0, #0x05
	ldsb r0, [r2, r0]
	adds r5, r1, r0
	adds r0, r4, #0x0
	bl sub_8083E78
	adds r1, r0, #0x0
	ldr r0, [r4, #0x48]
	cmp r0, #0x00
	bge _0810A82E
	adds r0, #0xFF
_0810A82E:
	asrs r0, r0, #0x08
	adds r2, r0, r1
_0810A832:
	ldr r0, _0810A848 @ =0x00007001
	str r0, [sp, #0x000]
	adds r0, r6, #0x0
	adds r1, r5, #0x0
	adds r3, r7, #0x0
	bl sub_810A648
	add sp, #0x004
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0810A848: .4byte 0x00007001
