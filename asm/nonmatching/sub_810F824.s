	.syntax unified
	.text

	thumb_func_start sub_810F824
sub_810F824:
	push {r4, r5, r6, lr}
	add sp, #-0x004
	adds r5, r0, #0x0
	ldr r2, [r5, #0x2C]
	adds r0, r2, #0x0
	adds r0, #0x76
	ldrb r1, [r0, #0x00]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	bne _0810F84A
	ldr r0, [r2, #0x18]
	cmp r0, #0x00
	bne _0810F84A
	adds r0, r5, #0x0
	adds r1, r2, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
_0810F84A:
	adds r0, r5, #0x0
	bl sub_80883F0
	lsls r0, r0, #0x18
	cmp r0, #0x00
	bne _0810F8EA
	ldr r4, [r5, #0x30]
	ldr r0, [r5, #0x28]
	adds r0, #0xEC
	movs r1, #0x00
	ldsh r0, [r0, r1]
	ldr r6, _0810F8F4 @ =0x0000216E
	cmp r0, #0x3C
	bne _0810F868
	subs r6, #0x09
_0810F868:
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0810F870
	adds r1, #0xFF
_0810F870:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0810F87A
	adds r2, #0xFF
_0810F87A:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0810F884
	adds r3, #0xFF
_0810F884:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	adds r0, r6, #0x0
	bl sub_80DF024
	adds r0, r4, #0x0
	bl sub_807C298
	ldr r0, _0810F8F8 @ =0x0000010F
	bl stop_sfx_80195A8
	ldr r3, [r5, #0x28]
	adds r0, r3, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F8A8
	adds r0, #0xFF
_0810F8A8:
	asrs r1, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F8B6
	adds r0, #0xFF
_0810F8B6:
	asrs r2, r0, #0x08
	adds r0, r3, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bge _0810F8C4
	adds r0, #0xFF
_0810F8C4:
	asrs r3, r0, #0x08
	movs r0, #0x80
	lsls r0, r0, #0x01
	str r0, [sp, #0x000]
	adds r0, r5, #0x0
	bl sub_808843C
	movs r1, #0xC0
	lsls r1, r1, #0x02
	adds r0, r5, #0x0
	bl sub_80880C4
	ldr r0, _0810F8FC @ =0x0000011B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0810F900 @ =0x0810FCE1
	str r0, [r5, #0x4C]
_0810F8EA:
	add sp, #0x004
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0810F8F4: .4byte 0x0000216E
_0810F8F8: .4byte 0x0000010F
_0810F8FC: .4byte 0x0000011B
_0810F900: .4byte sub_810FCE0
