	.syntax unified
	.text

	thumb_func_start sub_806C454
sub_806C454:
	push {r4, r5, r6, lr}
	add sp, #-0x00C
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	bne _0806C468
	b _0806C59E
_0806C468:
	ldr r0, _0806C49C @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r2, [r0, #0x70]
	ldr r0, [r0, #0x74]
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	movs r3, #0x06
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C4A0
	adds r0, r2, #0x0
	adds r0, #0x7E
	ldrb r1, [r0, #0x00]
	adds r0, r3, #0x0
	ands r0, r1
	cmp r0, #0x02
	beq _0806C4A0
	adds r0, r6, #0x0
	movs r1, #0x00
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x00
	b _0806C59C
_0806C49C: .4byte 0x03000FD8
_0806C4A0:
	adds r0, r6, #0x0
	movs r1, #0x16
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _0806C4B4
	adds r1, #0xFF
_0806C4B4:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _0806C4BE
	adds r2, #0xFF
_0806C4BE:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _0806C4C8
	adds r3, #0xFF
_0806C4C8:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _0806C5A8 @ =0x00001DF0
	bl sub_80DF024
	ldr r1, [r6, #0x28]
	ldr r0, [r6, #0x38]
	cmp r0, #0x00
	bge _0806C4DC
	adds r0, #0xFF
_0806C4DC:
	asrs r0, r0, #0x08
	adds r2, r0, #0x0
	subs r2, #0x1A
	ldr r0, [r6, #0x3C]
	cmp r0, #0x00
	bge _0806C4EA
	adds r0, #0xFF
_0806C4EA:
	asrs r0, r0, #0x08
	adds r3, r0, #0x2
	ldr r0, [r6, #0x40]
	cmp r0, #0x00
	bge _0806C4F6
	adds r0, #0xFF
_0806C4F6:
	asrs r0, r0, #0x08
	adds r0, #0x0B
	str r0, [sp, #0x000]
	ldr r0, [r6, #0x08]
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	str r0, [sp, #0x004]
	movs r5, #0x01
	str r5, [sp, #0x008]
	adds r0, r1, #0x0
	ldr r1, _0806C5AC @ =0x00004101
	bl sub_807BF34
	adds r4, r0, #0x0
	str r4, [r6, #0x30]
	adds r2, r4, #0x0
	adds r2, #0x78
	ldrb r1, [r2, #0x00]
	movs r0, #0x1F
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r6, #0x0
	adds r0, #0x77
	ldrb r0, [r0, #0x00]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1F
	subs r2, #0x01
	ands r5, r0
	lsls r5, r5, #0x06
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	orrs r0, r5
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _0806C5B0 @ =0x08087541
	str r0, [r4, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r4, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r4, #0x2C]
	adds r0, r6, #0x0
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r4, #0x0
	adds r0, #0x74
	movs r5, #0x00
	strb r1, [r0, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806C5B4 @ =0x0806C7B5
	str r0, [r4, #0x58]
	ldr r0, _0806C5B8 @ =0x0806C76D
	str r0, [r4, #0x60]
	ldr r0, _0806C5BC @ =0x0806C5C9
	str r0, [r4, #0x4C]
	adds r1, r4, #0x0
	adds r1, #0x9C
	adds r0, r6, #0x0
	adds r0, #0xA0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	movs r1, #0x01
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, #0xB2
	strh r5, [r4, #0x00]
	ldr r0, _0806C5C0 @ =0x0000012B
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
	ldr r0, _0806C5C4 @ =0x0806C801
_0806C59C:
	str r0, [r6, #0x4C]
_0806C59E:
	add sp, #0x00C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806C5A8: .4byte 0x00001DF0
_0806C5AC: .4byte 0x00004101
_0806C5B0: .4byte sub_8087540
_0806C5B4: .4byte sub_806C7B4
_0806C5B8: .4byte sub_806C76C
_0806C5BC: .4byte sub_806C5C8
_0806C5C0: .4byte 0x0000012B
_0806C5C4: .4byte sub_806C800
