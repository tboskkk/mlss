	.syntax unified
	.text

	thumb_func_start sub_807148C
sub_807148C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	add sp, #-0x004
	adds r6, r0, #0x0
	ldr r0, [r6, #0x08]
	ldrb r1, [r0, #0x12]
	movs r0, #0x08
	mov r9, r0
	ands r0, r1
	cmp r0, #0x00
	bne _080714A8
	b _080715E8
_080714A8:
	ldr r2, _080715F8 @ =0x000040B4
	adds r0, r6, #0x0
	movs r1, #0x06
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x30]
	movs r1, #0x06
	movs r2, #0x00
	movs r3, #0x00
	bl sub_8082E1C
	movs r0, #0x6C
	bl stop_sfx_80195A8
	ldr r1, [r6, #0x38]
	cmp r1, #0x00
	bge _080714CE
	adds r1, #0xFF
_080714CE:
	asrs r1, r1, #0x08
	ldr r2, [r6, #0x3C]
	cmp r2, #0x00
	bge _080714D8
	adds r2, #0xFF
_080714D8:
	asrs r2, r2, #0x08
	ldr r3, [r6, #0x40]
	cmp r3, #0x00
	bge _080714E2
	adds r3, #0xFF
_080714E2:
	asrs r3, r3, #0x08
	str r6, [sp, #0x000]
	ldr r0, _080715FC @ =0x000021C6
	bl sub_80DF024
	ldr r0, _08071600 @ =0x03000FD8
	ldr r0, [r0, #0x00]
	ldr r7, [r0, #0x58]
	adds r5, r7, #0x0
	adds r5, #0x08
	ldr r0, [r5, #0x08]
	bl sub_807BC90
	ldr r2, _08071604 @ =0x000040AE
	adds r0, r5, #0x0
	movs r1, #0x02
	movs r3, #0x00
	bl sub_8082E1C
	ldr r0, [r6, #0x10]
	ldr r1, _08071608 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r5, #0x10]
	ldr r0, [r6, #0x14]
	str r0, [r5, #0x14]
	ldr r0, [r6, #0x18]
	movs r4, #0x80
	lsls r4, r4, #0x04
	adds r0, r0, r4
	str r0, [r5, #0x18]
	ldr r0, _0807160C @ =0x080716C5
	str r0, [r5, #0x4C]
	adds r2, r7, #0x0
	adds r2, #0x7F
	ldrb r1, [r2, #0x00]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r2, #0x00]
	ldr r0, _08071610 @ =0x08087541
	str r0, [r5, #0x68]
	ldr r0, [r6, #0x6C]
	str r0, [r5, #0x6C]
	ldr r0, [r6, #0x2C]
	str r0, [r5, #0x2C]
	adds r0, r5, #0x0
	bl sub_807F4FC
	ldr r0, _08071614 @ =0x08071859
	str r0, [r5, #0x58]
	ldr r0, _08071618 @ =0x08072401
	str r0, [r5, #0x60]
	adds r0, r7, #0x0
	adds r0, #0xA4
	movs r2, #0x00
	mov r8, r2
	str r2, [r0, #0x00]
	adds r0, #0x14
	mov r1, r9
	strh r1, [r0, #0x00]
	ldr r0, _0807161C @ =0x08071621
	str r0, [r6, #0x4C]
	adds r1, r7, #0x0
	adds r1, #0x8C
	ldr r0, [r6, #0x2C]
	ldr r0, [r0, #0x28]
	adds r0, #0xD8
	ldr r0, [r0, #0x00]
	adds r0, r0, r4
	str r0, [r1, #0x00]
	ldr r0, [r5, #0x10]
	cmp r0, #0x00
	bge _0807157C
	adds r0, #0xFF
_0807157C:
	asrs r0, r0, #0x08
	adds r3, r7, #0x0
	adds r3, #0xB6
	strh r0, [r3, #0x00]
	ldr r0, [r5, #0x18]
	cmp r0, #0x00
	bge _0807158C
	adds r0, #0xFF
_0807158C:
	asrs r0, r0, #0x08
	adds r2, r7, #0x0
	adds r2, #0xBA
	strh r0, [r2, #0x00]
	movs r2, #0x00
	ldsh r0, [r3, r2]
	lsls r0, r0, #0x08
	ldr r1, [r1, #0x00]
	subs r5, r0, r1
	movs r1, #0xB3
	lsls r1, r1, #0x01
	adds r0, r5, #0x0
	bl __divsi3
	adds r4, r0, #0x0
	lsrs r0, r4, #0x1F
	adds r0, r4, r0
	asrs r0, r0, #0x01
	adds r1, r0, #0x0
	muls r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x07
	bl __divsi3
	cmp r0, #0x01
	bne _080715C2
	movs r0, #0x02
_080715C2:
	adds r1, r7, #0x0
	adds r1, #0xB0
	negs r0, r0
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xA8
	str r4, [r0, #0x00]
	subs r1, #0x04
	negs r0, r5
	str r0, [r1, #0x00]
	adds r0, r7, #0x0
	adds r0, #0xB4
	mov r1, r8
	strh r1, [r0, #0x00]
	movs r1, #0x01
	negs r1, r1
	movs r0, #0x8C
	bl play_sfx_80195B4
_080715E8:
	add sp, #0x004
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.byte 0x00, 0x00
_080715F8: .4byte 0x000040B4
_080715FC: .4byte 0x000021C6
_08071600: .4byte 0x03000FD8
_08071604: .4byte 0x000040AE
_08071608: .4byte 0xFFFFE000
_0807160C: .4byte sub_80716C4
_08071610: .4byte sub_8087540
_08071614: .4byte sub_8071858
_08071618: .4byte sub_8072400
_0807161C: .4byte sub_8071620
