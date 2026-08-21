	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806D51C
sub_806D51C:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x84
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x08
	movs r0, #0x33
	str r0, [r1, #0x00]
	ldr r0, _0806D544 @ =0x0806CBCD
	str r0, [r4, #0x4C]
	pop {r4}
	pop {r0}
	bx r0
_0806D544: .4byte sub_806CBCC
	thumb_func_start sub_806D548
sub_806D548:
	push {r4, lr}
	adds r4, r0, #0x0
	movs r2, #0xFF
	bl sub_810DD7C
	adds r0, r4, #0x0
	adds r0, #0xA8
	ldr r0, [r0, #0x00]
	cmp r0, #0x01
	beq _0806D574
	cmp r0, #0x01
	bgt _0806D566
	cmp r0, #0x00
	beq _0806D56C
	b _0806D584
_0806D566:
	cmp r0, #0x02
	beq _0806D57C
	b _0806D584
_0806D56C:
	ldr r0, _0806D570 @ =0x0806D049
	b _0806D586
_0806D570: .4byte sub_806D048
_0806D574:
	ldr r0, _0806D578 @ =0x0806D105
	b _0806D586
_0806D578: .4byte sub_806D104
_0806D57C:
	ldr r0, _0806D580 @ =0x0806D1D5
	b _0806D586
_0806D580: .4byte sub_806D1D4
_0806D584:
	ldr r0, _0806D590 @ =0x0806D291
_0806D586:
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806D590: .4byte sub_806D290
	thumb_func_start sub_806D594
sub_806D594:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, _0806D614 @ =0x03000E3C
	movs r4, #0x00
	str r4, [r0, #0x00]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r1, [r0, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x74
	strb r1, [r0, #0x00]
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2C]
	adds r0, #0x74
	ldrb r0, [r0, #0x00]
	adds r1, #0x74
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r5, #0x0
	adds r1, #0x84
	ldr r0, [r5, #0x38]
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r0, r2
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x3C]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r4, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D618 @ =0x0806E7CD
	str r0, [r5, #0x4C]
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D614: .4byte 0x03000E3C
_0806D618: .4byte sub_806E7CC
	thumb_func_start sub_806D61C
sub_806D61C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D69C
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r4, #0x30]
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r4, #0x0
	adds r2, #0x84
	ldr r0, [r4, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xD0
	lsls r3, r3, #0x07
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	ldr r0, [r4, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7A
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x6C
	bl play_sfx_80195B4
	ldr r0, _0806D6A4 @ =0x0806E795
	str r0, [r4, #0x4C]
_0806D69C:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D6A4: .4byte sub_806E794
	thumb_func_start sub_806D6A8
sub_806D6A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806D750
	adds r1, r5, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	movs r6, #0x00
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806D750
	adds r0, r5, #0x0
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r5, #0x30]
	movs r1, #0x07
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r2, r5, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	movs r4, #0x20
	orrs r0, r4
	strb r0, [r2, #0x00]
	ldr r0, _0806D758 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r1, _0806D75C @ =0x0000178E
	adds r0, r5, #0x0
	bl sub_8086858
	ldr r1, _0806D760 @ =0x03000E3C
	str r0, [r1, #0x00]
	ldr r0, _0806D764 @ =0x0806E739
	str r0, [r5, #0x58]
	adds r0, r5, #0x0
	adds r0, #0xA8
	str r6, [r0, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x84
	ldr r0, [r5, #0x2C]
	ldr r1, [r0, #0x28]
	adds r0, r1, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	movs r3, #0xC0
	lsls r3, r3, #0x05
	adds r0, r0, r3
	str r0, [r2, #0x00]
	adds r2, #0x04
	adds r1, #0xDC
	ldr r0, [r1, #0x00]
	str r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x8C
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	subs r1, #0x10
	ldr r0, _0806D768 @ =0x00000199
	strh r0, [r1, #0x00]
	subs r1, #0x03
	ldrb r0, [r1, #0x00]
	orrs r0, r4
	strb r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r6, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806D76C @ =0x0806D771
	str r0, [r5, #0x4C]
_0806D750:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806D758: .4byte sub_8087540
_0806D75C: .4byte 0x0000178E
_0806D760: .4byte 0x03000E3C
_0806D764: .4byte 0x0806E739
_0806D768: .4byte 0x00000199
_0806D76C: .4byte sub_806D770
