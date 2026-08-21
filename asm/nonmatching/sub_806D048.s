	.syntax unified
	.text

	thumb_func_start sub_806D048
sub_806D048:
	push {r4, r5, lr}
	add sp, #-0x004
	adds r4, r0, #0x0
	adds r5, r4, #0x0
	adds r5, #0xAC
	ldrh r0, [r5, #0x00]
	subs r0, #0x01
	strh r0, [r5, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D088
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D066
	adds r1, #0xFF
_0806D066:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D070
	adds r2, #0xFF
_0806D070:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D07A
	adds r3, #0xFF
_0806D07A:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D0B8 @ =0x00002122
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D088:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D0F4
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x01
	str r0, [r1, #0x00]
	subs r1, #0x20
	movs r0, #0xD8
	lsls r0, r0, #0x07
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xAE
	movs r1, #0x00
	ldsh r0, [r0, r1]
	cmp r0, #0x00
	beq _0806D0BC
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xA0
	lsls r0, r0, #0x06
	b _0806D0C2
_0806D0B8: .4byte 0x00002122
_0806D0BC:
	adds r1, r4, #0x0
	adds r1, #0x84
	ldr r0, _0806D0FC @ =0xFFFFF800
_0806D0C2:
	str r0, [r1, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	subs r0, #0x28
	movs r2, #0x00
	strh r1, [r0, #0x00]
	adds r3, r4, #0x0
	adds r3, #0x79
	ldrb r0, [r3, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	ldr r0, _0806D100 @ =0x0806D105
	str r0, [r4, #0x4C]
_0806D0F4:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
_0806D0FC: .4byte 0xFFFFF800
_0806D100: .4byte sub_806D104
