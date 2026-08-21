	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_806A3C0
sub_806A3C0:
	push {r4, lr}
	adds r4, r0, #0x0
	bl sub_8082B00
	cmp r0, #0x00
	bne _0806A3EC
	adds r0, r4, #0x0
	movs r1, #0x02
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r4, #0x0
	adds r1, #0x8C
	movs r0, #0xC0
	lsls r0, r0, #0x02
	str r0, [r1, #0x00]
	adds r1, #0x1C
	movs r0, #0x66
	str r0, [r1, #0x00]
	ldr r0, _0806A3F4 @ =0x080694B5
	str r0, [r4, #0x4C]
_0806A3EC:
	pop {r4}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A3F4: .4byte sub_80694B4
	thumb_func_start sub_806A3F8
sub_806A3F8:
	push {r4, r5, lr}
	adds r5, r0, #0x0
	ldr r0, [r5, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	ands r0, r1
	cmp r0, #0x00
	beq _0806A470
	adds r0, r5, #0x0
	movs r1, #0x03
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r4, r5, #0x0
	adds r4, #0x84
	ldr r0, [r5, #0x2C]
	ldr r2, [r0, #0x28]
	adds r3, r2, #0x0
	adds r3, #0xD8
	adds r0, r5, #0x0
	adds r0, #0xA4
	ldr r1, [r0, #0x00]
	lsls r1, r1, #0x08
	ldr r0, [r3, #0x00]
	adds r0, r0, r1
	str r0, [r4, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x88
	adds r2, #0xDC
	ldr r0, [r2, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	ldr r0, [r5, #0x40]
	str r0, [r1, #0x00]
	adds r2, r5, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r5, #0x0
	adds r1, #0x7C
	movs r2, #0x00
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	adds r0, r5, #0x0
	adds r0, #0x7A
	strh r2, [r0, #0x00]
	adds r0, r5, #0x0
	bl sub_8085B38
	ldr r0, _0806A478 @ =0x0806A83D
	str r0, [r5, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806A470:
	pop {r4, r5}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A478: .4byte sub_806A83C
	thumb_func_start sub_806A47C
sub_806A47C:
	push {r4, lr}
	adds r4, r0, #0x0
	adds r1, r4, #0x0
	adds r1, #0xAC
	ldrh r0, [r1, #0x00]
	subs r0, #0x01
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A4FE
	adds r0, r4, #0x0
	movs r1, #0x05
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
	movs r3, #0x80
	lsls r3, r3, #0x04
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
	subs r2, #0x0F
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x7C
	movs r0, #0x80
	lsls r0, r0, #0x02
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r4, #0x0
	bl sub_8085B38
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806A504 @ =0x0806A7ED
	str r0, [r4, #0x58]
	ldr r0, _0806A508 @ =0x0806A7CD
	str r0, [r4, #0x5C]
	ldr r0, _0806A50C @ =0x0806A815
	str r0, [r4, #0x4C]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x81
	bl play_sfx_80195B4
_0806A4FE:
	pop {r4}
	pop {r0}
	bx r0
_0806A504: .4byte sub_806A7EC
_0806A508: .4byte sub_806A7CC
_0806A50C: .4byte sub_806A814
	thumb_func_start sub_806A510
sub_806A510:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0x0
	movs r0, #0xAC
	adds r0, r0, r4
	mov r9, r0
	ldrh r0, [r0, #0x00]
	subs r0, #0x01
	mov r1, r9
	strh r0, [r1, #0x00]
	lsls r0, r0, #0x10
	cmp r0, #0x00
	bgt _0806A616
	adds r0, r4, #0x0
	movs r1, #0x04
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r6, r4, #0x0
	adds r6, #0x84
	ldr r0, [r4, #0x2C]
	ldr r2, [r0, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x00]
	adds r5, r4, #0x0
	adds r5, #0x88
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r5, #0x00]
	adds r1, r4, #0x0
	adds r1, #0x8C
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	ldr r0, [r4, #0x38]
	cmp r0, #0x00
	bge _0806A56A
	adds r0, #0xFF
_0806A56A:
	asrs r0, r0, #0x08
	adds r3, r4, #0x0
	adds r3, #0xAE
	strh r0, [r3, #0x00]
	ldr r0, [r4, #0x3C]
	cmp r0, #0x00
	bge _0806A57A
	adds r0, #0xFF
_0806A57A:
	asrs r0, r0, #0x08
	adds r2, r4, #0x0
	adds r2, #0xB0
	strh r0, [r2, #0x00]
	ldr r0, [r4, #0x40]
	cmp r0, #0x00
	bge _0806A58A
	adds r0, #0xFF
_0806A58A:
	asrs r0, r0, #0x08
	adds r1, r4, #0x0
	adds r1, #0xB2
	strh r0, [r1, #0x00]
	movs r1, #0x00
	ldsh r0, [r3, r1]
	lsls r0, r0, #0x08
	ldr r1, [r6, #0x00]
	subs r7, r1, r0
	movs r1, #0x00
	ldsh r0, [r2, r1]
	lsls r0, r0, #0x08
	ldr r1, [r5, #0x00]
	subs r6, r1, r0
	ldr r2, _0806A624 @ =0x03001038
	adds r0, r7, #0x0
	muls r0, r7
	adds r1, r6, #0x0
	muls r1, r6
	adds r0, r0, r1
	ldr r1, [r2, #0x00]
	bl _call_via_r1
	movs r2, #0x9C
	adds r2, r2, r4
	mov r8, r2
	ldr r1, [r2, #0x00]
	bl __divsi3
	adds r5, r0, #0x0
	adds r1, r5, #0x0
	muls r1, r5
	ldr r0, [r4, #0x40]
	bl __divsi3
	cmp r0, #0x01
	bne _0806A5D6
	movs r0, #0x02
_0806A5D6:
	mov r1, r8
	str r0, [r1, #0x00]
	adds r0, r4, #0x0
	adds r0, #0xA0
	str r5, [r0, #0x00]
	adds r0, #0x04
	str r7, [r0, #0x00]
	adds r0, #0x04
	str r6, [r0, #0x00]
	movs r0, #0x00
	mov r2, r9
	strh r0, [r2, #0x00]
	adds r2, r4, #0x0
	adds r2, #0x77
	ldrb r0, [r2, #0x00]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r0, r4, #0x0
	bl sub_807F4FC
	ldr r0, _0806A628 @ =0x0806A761
	str r0, [r4, #0x58]
	ldr r0, _0806A62C @ =0x0806A731
	str r0, [r4, #0x5C]
	ldr r0, _0806A630 @ =0x0806A639
	str r0, [r4, #0x4C]
	ldr r0, _0806A634 @ =0x00000111
	movs r1, #0x01
	negs r1, r1
	bl play_sfx_80195B4
_0806A616:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A624: .4byte 0x03001038
_0806A628: .4byte sub_806A760
_0806A62C: .4byte sub_806A730
_0806A630: .4byte sub_806A638
_0806A634: .4byte 0x00000111
	thumb_func_start sub_806A638
sub_806A638:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r0, #0xA4
	adds r4, r6, #0x0
	adds r4, #0xAC
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	adds r5, r6, #0x0
	adds r5, #0xA0
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xAE
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x10]
	adds r0, r6, #0x0
	adds r0, #0xA8
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r0, #0x00]
	muls r0, r1
	ldr r1, [r5, #0x00]
	bl __divsi3
	adds r1, r6, #0x0
	adds r1, #0xB0
	movs r2, #0x00
	ldsh r1, [r1, r2]
	lsls r1, r1, #0x08
	adds r0, r0, r1
	str r0, [r6, #0x14]
	movs r1, #0x00
	ldsh r0, [r4, r1]
	ldr r1, [r5, #0x00]
	subs r0, r0, r1
	adds r1, r0, #0x0
	muls r1, r0
	adds r0, r6, #0x0
	adds r0, #0x9C
	ldr r0, [r0, #0x00]
	muls r0, r1
	str r0, [r6, #0x18]
	ldrh r0, [r4, #0x00]
	adds r0, #0x01
	strh r0, [r4, #0x00]
	movs r2, #0x00
	ldsh r1, [r4, r2]
	ldr r0, [r5, #0x00]
	lsls r0, r0, #0x01
	cmp r1, r0
	ble _0806A720
	adds r0, r6, #0x0
	bl sub_807F47C
	movs r0, #0x80
	lsls r0, r0, #0x09
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x28]
	adds r1, r0, #0x0
	adds r1, #0xDC
	ldr r1, [r1, #0x00]
	str r1, [r6, #0x14]
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r6, #0x18]
	adds r0, r6, #0x0
	movs r1, #0x05
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	adds r1, r6, #0x0
	adds r1, #0x84
	ldr r2, [r6, #0x28]
	adds r0, r2, #0x0
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xDC
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r1, #0x04
	adds r0, r2, #0x0
	adds r0, #0xE0
	ldr r0, [r0, #0x00]
	str r0, [r1, #0x00]
	adds r2, r6, #0x0
	adds r2, #0x79
	ldrb r0, [r2, #0x00]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #0x00]
	adds r1, r6, #0x0
	adds r1, #0x7C
	movs r0, #0xC0
	lsls r0, r0, #0x01
	strh r0, [r1, #0x00]
	subs r1, #0x02
	movs r0, #0x00
	strh r0, [r1, #0x00]
	adds r0, r6, #0x0
	bl sub_8085B38
	ldr r0, _0806A728 @ =0x0806A7A1
	str r0, [r6, #0x4C]
	ldr r0, _0806A72C @ =0x00000111
	bl stop_sfx_80195A8
_0806A720:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_0806A728: .4byte sub_806A7A0
_0806A72C: .4byte 0x00000111
	thumb_func_start sub_806A730
sub_806A730:
	push {r4, r5, r6, lr}
	adds r6, r0, #0x0
	adds r4, r1, #0x0
	adds r5, r2, #0x0
	ldr r0, _0806A758 @ =0x00000111
	bl stop_sfx_80195A8
	adds r0, r6, #0x0
	adds r1, r4, #0x0
	adds r2, r5, #0x0
	bl sub_8086C64
	cmp r0, #0x00
	bne _0806A752
	ldr r0, _0806A75C @ =0x0806A77D
	str r0, [r6, #0x4C]
	movs r0, #0x00
_0806A752:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
_0806A758: .4byte 0x00000111
_0806A75C: .4byte sub_806A77C
	thumb_func_start sub_806A760
sub_806A760:
	push {r4, lr}
	adds r4, r0, #0x0
	ldr r1, [r4, #0x2C]
	movs r2, #0xFF
	bl sub_810DD7C
	ldr r0, _0806A778 @ =0x0806A639
	str r0, [r4, #0x4C]
	movs r0, #0x00
	pop {r4}
	pop {r1}
	bx r1
_0806A778: .4byte sub_806A638
