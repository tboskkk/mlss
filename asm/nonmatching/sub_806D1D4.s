	.syntax unified
	.text

	thumb_func_start sub_806D1D4
sub_806D1D4:
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
	bgt _0806D214
	ldr r1, [r4, #0x38]
	cmp r1, #0x00
	bge _0806D1F2
	adds r1, #0xFF
_0806D1F2:
	asrs r1, r1, #0x08
	ldr r2, [r4, #0x3C]
	cmp r2, #0x00
	bge _0806D1FC
	adds r2, #0xFF
_0806D1FC:
	asrs r2, r2, #0x08
	ldr r3, [r4, #0x40]
	cmp r3, #0x00
	bge _0806D206
	adds r3, #0xFF
_0806D206:
	asrs r3, r3, #0x08
	str r4, [sp, #0x000]
	ldr r0, _0806D244 @ =0x0000212B
	bl sub_80DF024
	movs r0, #0x0A
	strh r0, [r5, #0x00]
_0806D214:
	adds r0, r4, #0x0
	adds r0, #0x80
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	bne _0806D282
	adds r1, r4, #0x0
	adds r1, #0xA8
	movs r0, #0x03
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
	beq _0806D248
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0x80
	lsls r0, r0, #0x08
	b _0806D250
_0806D244: .4byte 0x0000212B
_0806D248:
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xD0
	lsls r0, r0, #0x07
_0806D250:
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
	ldr r0, _0806D28C @ =0x0806D291
	str r0, [r4, #0x4C]
_0806D282:
	add sp, #0x004
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D28C: .4byte sub_806D290
